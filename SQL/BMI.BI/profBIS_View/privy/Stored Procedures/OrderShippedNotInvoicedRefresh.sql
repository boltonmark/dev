﻿create procedure [privy].[OrderShippedNotInvoicedRefresh]
(
  @LoadStart datetime
, @DebugLevel tinyint = 0
, @RowsAffected int = null out
)
as
--<CommentHeader>
/**********************************************************************************************************************

Properties
==========
PROCEDURE NAME:		privy.OrderShippedNotInvoicedRefresh
DESCRIPTION:		Merges any changes from the QlikView source into the staging area ready for consumption by the
					QV-to-IDW ETL process
ORIGIN DATE:		14-JUN-2017
ORIGINAL AUTHOR:	Greg M. Lucas

Returns
=======
@@Error - always zero on success

Additional Notes
================

REVISION HISTORY
=====================================================================================================================
Version	ChangeDate		Author	BugRef	Narrative
=======	============	======	=======	=============================================================================
001		14-JUN-2017		GML		N/A		Created
------- ------------	------	-------	-----------------------------------------------------------------------------

**********************************************************************************************************************/
--</CommentHeader>
begin
	set nocount on;

	--! Journal Constants
	declare @SEVERITY_CRITICAL int = 1;
	declare @SEVERITY_SEVERE int = 2;
	declare @SEVERITY_MAJOR int = 4;
	declare @SEVERITY_MODERATE int = 8;
	declare @SEVERITY_MINOR int = 16;
	declare @SEVERITY_CONCURRENCY int = 32;
	declare @SEVERITY_INFORMATION int = 256;
	declare @SEVERITY_SUCCESS int = 512;
	declare @SEVERITY_DEBUG int = 1024;

	--! Standard/ExceptionHandler variables
	declare	@_FunctionName nvarchar(255) = quotename(object_schema_name(@@procid)) + '.' + quotename(object_name(@@procid));
	declare	@_Error int = 0;
	declare @_RowCount int = 0;
	declare @_ReturnValue int = 0;
	declare	@_Message nvarchar(512);
	declare	@_ErrorContext nvarchar(512);
	declare	@_SprocStartTime datetime = getdate()
	declare	@_StepStartTime datetime
	declare	@_StepEndTime datetime
	declare	@_Step varchar(128);
	declare	@_ProgressMessage varchar(2000)
	declare	@_ExceptionId int
	declare @_JournalOnOff varchar(3) = log4.GetJournalControl(@_FunctionName, null);
	declare @_Severity smallint = @SEVERITY_INFORMATION;
	declare @_ProgressLog nvarchar(max);
	declare @_RowsAffected int = 0;
	declare @_JobName nvarchar(128) = 'QlikView Staging Data' ;

	set @_ProgressMessage = @_FunctionName
			+ ' starting at ' + coalesce(convert(varchar(24), @_SprocStartTime, 120), '') + ' with inputs: '
			+ char(10) + '    @LoadStart   : ' + coalesce(convert(varchar(24), @LoadStart, 120), '')
			+ char(10) + '    @DebugLevel      : ' + coalesce(cast(@DebugLevel as varchar(16)), 'NULL')
			+ char(10)
	set @_ProgressLog = @_ProgressMessage;

	/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
	/**/ if @DebugLevel > 5
	/**/     begin
	/**/         raiserror('', 0, 1) with nowait;
	/**/         raiserror('DEBUG - %s: %s', 0, 1, @_FunctionName, @_ProgressMessage) with nowait;
	/**/     end
	/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

	--! Find out if we are already in a transaction
	declare	@_TxnIsExternal bit = case when @@trancount > 0 then 1 else 0 end;

	begin try
		--!
		--!
		--!
		set @_Step = 'Collect Load Parameters';
		set @_StepStartTime = getdate();

		declare @_ParameterSource varchar(200), @_DataCaptureStart datetime, @_DataCaptureEnd datetime;
		select
			  @_ParameterSource = ModuleName
			, @_DataCaptureStart = DataCaptureStart
			, @_DataCaptureEnd = DataCaptureEnd
		from
			privy.GetLoadParameters(@_FunctionName)

		set @_ProgressMessage = 'Load Parameter Values:'
				+ char(10) + '    Parameter Value Source  : ' + coalesce(@_ParameterSource, 'NULL')
				+ char(10) + '    Data Capture Start      : ' + coalesce(convert(varchar(24), @_DataCaptureStart, 120), '')
				+ char(10) + '    Data Capture End        : ' + coalesce(convert(varchar(24), @_DataCaptureEnd, 120), '')
				+ char(10) + cast(datediff(millisecond, @_StepStartTime, getdate()) as varchar(16)) + ' milliseconds to fetch load parameters'
				+ char(10)
		set @_ProgressLog += coalesce(char(10) + @_ProgressMessage, '');

		/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
		/**/ if @DebugLevel > 5
		/**/     begin
		/**/         raiserror('', 0, 1) with nowait;
		/**/         raiserror('DEBUG - %s: %s', 0, 1, @_FunctionName, @_ProgressMessage) with nowait;
		/**/     end
		/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

		if @_DataCaptureStart is null
			raiserror('Load Parameter: Data Capture Start cannot be null', 16, 1);

		if @_DataCaptureStart is null
			raiserror('Load Parameter: Data Capture Start cannot be null', 16, 1);

		--!
		--!
		--!
		set @_Step = 'Collect Runtime Parameters';
		set @_StepStartTime = getdate();

		declare @_UnmappedPaymentTerm varchar(50) = (select TEKST from [$(Icopal_profBIS)].dbo.FLEXPARAMS where PARAMTYPE = 'DWH' and PARAMNAVN = 'PAYMENT_UNMAPPED') ;
		declare @_UnmappedProductCategory varchar(50) = (select TEKST from [$(Icopal_profBIS)].dbo.FLEXPARAMS where PARAMTYPE = 'DWH' and PARAMNAVN = 'SA_UNMAPPED_ITEM') ;
		declare @_ExcludeFromQlikViewProductCategory varchar(50) = (select TEKST from [$(Icopal_profBIS)].dbo.FLEXPARAMS where PARAMTYPE = 'DWH' and PARAMNAVN = 'SALES_NOT_QLIKVIEW') ;
		declare @_ExcludeFromQlikViewCustomerCategory varchar(50) = (select TEKST from [$(Icopal_profBIS)].dbo.FLEXPARAMS where PARAMTYPE = 'DWH' and PARAMNAVN = 'CUSTOMER_NOT_EXPORTED') ;

		set @_ProgressMessage = 'Parameter Values:'
				+ char(10) + '    Unmapped Payment Term                    : ' + coalesce(@_UnmappedPaymentTerm, 'NULL')
				+ char(10) + '    Unmapped Product Category                : ' + coalesce(@_UnmappedProductCategory, 'NULL')
				+ char(10) + '    Exclude From QlikView Product Category   : ' + coalesce(@_ExcludeFromQlikViewProductCategory, 'NULL')
				+ char(10) + '    Exclude From QlikView Customer Category  : ' + coalesce(@_ExcludeFromQlikViewCustomerCategory, 'NULL')
				+ char(10) + cast(datediff(millisecond, @_StepStartTime, getdate()) as varchar(16)) + ' milliseconds to fetch runtime parameters'
				+ char(10)
		set @_ProgressLog += coalesce(char(10) + @_ProgressMessage, '');

		/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
		/**/ if @DebugLevel > 5
		/**/     begin
		/**/         raiserror('', 0, 1) with nowait;
		/**/         raiserror('DEBUG - %s: %s', 0, 1, @_FunctionName, @_ProgressMessage) with nowait;
		/**/     end
		/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

		--!
		--!
		--!
		set @_Step = 'Generate Working Values';
		set @_StepStartTime = getdate();

		declare @_UnmappedPaymentTermId int ;
		if len(@_UnmappedPaymentTerm) > 0 and isnumeric(@_UnmappedPaymentTerm) = 1
			set @_UnmappedPaymentTermId = cast(@_UnmappedPaymentTerm as int)

		declare @_UnmappedProductCategoryId int ;
		if len(@_UnmappedProductCategory) > 0 and isnumeric(@_UnmappedProductCategory) = 1
			set @_UnmappedProductCategoryId = cast(@_UnmappedProductCategory as int)

		declare @_ExcludeFromQlikViewProductCategoryId int ;
		if len(@_ExcludeFromQlikViewProductCategory) > 0 and isnumeric(@_ExcludeFromQlikViewProductCategory) = 1
			set @_ExcludeFromQlikViewProductCategoryId = cast(@_ExcludeFromQlikViewProductCategory as int)
		else
			set @_ExcludeFromQlikViewProductCategoryId = -2 ;

		if @_ExcludeFromQlikViewProductCategoryId is null
			raiserror('Product Category Id to exclude from QlikView extract cannot be identified', 16, 1);

		declare @_ExcludeFromQlikViewCustomerCategoryId int ;
		if len(@_ExcludeFromQlikViewCustomerCategory) > 0 and isnumeric(@_ExcludeFromQlikViewCustomerCategory) = 1
			set @_ExcludeFromQlikViewCustomerCategoryId = cast(@_ExcludeFromQlikViewCustomerCategory as int)
		else
			set @_ExcludeFromQlikViewCustomerCategoryId = -2 ;

		if @_ExcludeFromQlikViewCustomerCategoryId is null
			raiserror('Customer Category Id to exclude from QlikView extract cannot be identified', 16, 1);

		set @_ProgressMessage = 'Working Values:'
				+ char(10) + '    Unmapped Payment Term Id                    : ' + coalesce(cast(@_UnmappedPaymentTermId as varchar(16)), 'NULL')
				+ char(10) + '    Unmapped Product Category Id                : ' + coalesce(cast(@_UnmappedProductCategoryId as varchar(16)), 'NULL')
				+ char(10) + '    Exclude From QlikView Product Category Id   : ' + coalesce(cast(@_ExcludeFromQlikViewProductCategoryId as varchar(16)), 'NULL')
				+ char(10) + '    Exclude From QlikView Customer Category Id  : ' + coalesce(cast(@_ExcludeFromQlikViewCustomerCategoryId as varchar(16)), 'NULL')
				+ char(10) + cast(datediff(millisecond, @_StepStartTime, getdate()) as varchar(16)) + ' milliseconds to generate working values'
				+ char(10)
		set @_ProgressLog += coalesce(char(10) + @_ProgressMessage, '');

		/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
		/**/ if @DebugLevel > 5
		/**/     begin
		/**/         raiserror('', 0, 1) with nowait;
		/**/         raiserror('DEBUG - %s: %s', 0, 1, @_FunctionName, @_ProgressMessage) with nowait;
		/**/     end
		/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

		--! If there no outer transaction, use an explicit transaction so we can roll this piece back if required 
		if @_TxnIsExternal = 0 begin tran;

		set @_Step = 'Upsert Main'
		set @_StepStartTime = getdate();

		;with sourceCte
		as
		(
			--! The following columns are defined as NOT NULL on the underlying table: REC_ID, SYSTEM_ID, SITE_SOLD
			--! We use the following columns to uniquely identify each row: SYSTEM_ID, ORDER_NUMBER, ORDER_LINE_NUMBER, SHIPPING_DOCUMENT and Uniqueifier
			select
				  ord.REC_ID
				, ord.SYSTEM_ID
				, coalesce(ord.ORDER_NUMBER, '') as [ORDER_NUMBER]
				, coalesce(ord.ORDER_LINE_NUMBER, '') as [ORDER_LINE_NUMBER]
				, coalesce(ord.SHIPPING_DOCUMENT, '') as [SHIPPING_DOCUMENT]
				, row_number() over (partition by ord.SYSTEM_ID, ord.ORDER_NUMBER, ord.ORDER_LINE_NUMBER, ord.SHIPPING_DOCUMENT order by ord.EXPECTED_INVOICE_DATE desc, ord.REC_ID) as [Uniqueifier]
				, ord.EXPECTED_INVOICE_DATE
				-----------------------------------------------------------------------------------------------------------------------
				, coalesce(ord.ORDER_TYPE, '') as [ORDER_TYPE]
				, case coalesce(ord.ORDER_TYPE, '')
					when '1' then 'TODO: Define Order Type (' + coalesce(ord.ORDER_TYPE, '') + ')'
					when '2' then 'TODO: Define Order Type (' + coalesce(ord.ORDER_TYPE, '') + ')'
					when '' then 'Not Specified At Source'
					else 'Lookup Not Found (' + coalesce(ord.ORDER_TYPE, '') + ')'
				  end as [OrderTypeName]
				-----------------------------------------------------------------------------------------------------------------------
				, ord.SITE_SOLD as [LOCAL_SITE_SOLD]
				, ssite.SITE_ID -- Don't need to collect SBU from this as per V_SA_ORDERSNI as we will expose SiteKey in the view later
				-----------------------------------------------------------------------------------------------------------------------
				, coalesce(ord.ITEM_NO, '') as [ITEM_NO]
				, coalesce(pCat.ITEM_CATEGORY_ID, @_UnmappedProductCategoryId) as [ITEM_CATEGORY_ID]
				, EnvPcat.ENV_CATEGORY_ID
				-----------------------------------------------------------------------------------------------------------------------
				, coalesce(ord.SOLD_TO, '') as [SOLD_TO_CUSTOMER_NO]
				, coalesce(ord.SHIP_TO, '') as [SHIP_TO_CUSTOMER_NO]
				-----------------------------------------------------------------------------------------------------------------------
				, coalesce(ord.SALESPERSON_ID, '') as [SALESPERSON_ID]
				, coalesce(ord.SALESPERSON_NAME, '') as [SALESPERSON_NAME]
				-----------------------------------------------------------------------------------------------------------------------
				, ord.SHIPPED_QUANTITY
				, coalesce(ord.SHIPPED_UOM, '') as [SHIPPED_UOM]
				, ord.STATISTIC_QUANTITY
				, coalesce(ord.STATISTIC_UOM, '') as [STATISTIC_UOM]
				, ord.QUANTITY
				-----------------------------------------------------------------------------------------------------------------------
				, coalesce(ord.UOM, '') as [LOCAL_UOM]
				, coalesce(lUom.HARMONIZED_UOM, '') as [LOCAL_UOM_HARMONIZED]
				, lUom.FACTOR as [LOCAL_UOM_FACTOR]
				-----------------------------------------------------------------------------------------------------------------------
				, ord.SHIPPED_AMOUNT
				, ord.LOCAL_AMOUNT
				, ord.GROUP_AMOUNT
				, coalesce(ord.SHIPPED_CURRENCY, '') as [SHIPPED_CURRENCY]
				, coalesce(ord.LOCAL_CURRENCY, '') as [LOCAL_CURRENCY]
				-----------------------------------------------------------------------------------------------------------------------
				, ord.LINE_DISCOUNT_AMOUNT
				, ord.ORDER_DISCOUNT_AMOUNT
				, ord.LINE_BONUS_AMOUNT
				, ord.BONUS_SHARE_AMOUNT
				-----------------------------------------------------------------------------------------------------------------------
				--! Encapsulate ALL non-key columns into a hash value to speed up CDC checks during susbseqent loads
				, convert(nvarchar(32), hashbytes('MD5'
					, coalesce(convert(varchar(24), ord.EXPECTED_INVOICE_DATE, 120), 'EXPECTED_INVOICE_DATE')
						+ coalesce(ord.ORDER_TYPE, 'ORDER_TYPE')
						+ case coalesce(ord.ORDER_TYPE, '')
							when '1' then 'TODO: Define Order Type (' + coalesce(ord.ORDER_TYPE, '') + ')'
							when '2' then 'TODO: Define Order Type (' + coalesce(ord.ORDER_TYPE, '') + ')'
							when '' then 'Not Specified At Source'
							else 'Lookup Not Found (' + coalesce(ord.ORDER_TYPE, '') + ')'
						  end
						-----------------------------------------------------------------------------------------------------------------------
						+ coalesce(ord.SITE_SOLD, 'SITE_SOLD')
						+ coalesce(cast(ssite.SITE_ID as nvarchar(30)), 'SITE_ID') -- Don't need to collect SBU from this as per V_SA_INVOICE as we will expose SiteKey in the view later
						-----------------------------------------------------------------------------------------------------------------------
						+ coalesce(ord.ITEM_NO, 'ITEM_NO')
						+ coalesce(cast(coalesce(pCat.ITEM_CATEGORY_ID, @_UnmappedProductCategoryId) as varchar(30)), 'ITEM_CATEGORY_ID')
						+ coalesce(cast(EnvPcat.ENV_CATEGORY_ID as nvarchar(30)), 'ENV_CATEGORY_ID')
						-----------------------------------------------------------------------------------------------------------------------
						+ coalesce(ord.SOLD_TO, 'SOLD_TO')
						+ coalesce(ord.SHIP_TO, 'SHIP_TO')
						-----------------------------------------------------------------------------------------------------------------------
						+ coalesce(ord.SALESPERSON_ID, 'SALESPERSON_ID')
						+ coalesce(ord.SALESPERSON_NAME, 'SALESPERSON_NAME')
						-----------------------------------------------------------------------------------------------------------------------
						+ coalesce(cast(ord.SHIPPED_QUANTITY as nvarchar(30)), 'SHIPPED_QUANTITY')
						+ coalesce(ord.SHIPPED_UOM, 'SHIPPED_UOM') 
						+ coalesce(cast(ord.STATISTIC_QUANTITY as nvarchar(30)), 'STATISTIC_QUANTITY')
						+ coalesce( ord.STATISTIC_UOM, 'STATISTIC_UOM')
						+ coalesce(cast(ord.QUANTITY as nvarchar(30)), 'QUANTITY')
						-----------------------------------------------------------------------------------------------------------------------
						+ coalesce(ord.UOM, 'UOM')
						+ coalesce(lUom.HARMONIZED_UOM, 'HARMONIZED_UOM')
						+ coalesce(cast(lUom.FACTOR as nvarchar(30)), 'FACTOR')
						-----------------------------------------------------------------------------------------------------------------------
						+ coalesce(cast(ord.SHIPPED_AMOUNT as nvarchar(30)), 'SHIPPED_AMOUNT')
						+ coalesce(cast(ord.LOCAL_AMOUNT as nvarchar(30)), 'LOCAL_AMOUNT')
						+ coalesce(cast(ord.GROUP_AMOUNT as nvarchar(30)), 'GROUP_AMOUNT')
						+ coalesce(ord.SHIPPED_CURRENCY, 'SHIPPED_CURRENCY')
						+ coalesce(ord.LOCAL_CURRENCY, 'LOCAL_CURRENCY')
						-----------------------------------------------------------------------------------------------------------------------
						+ coalesce(cast(ord.LINE_DISCOUNT_AMOUNT as nvarchar(30)), 'LINE_DISCOUNT_AMOUNT')
						+ coalesce(cast(ord.ORDER_DISCOUNT_AMOUNT as nvarchar(30)), 'ORDER_DISCOUNT_AMOUNT')
						+ coalesce(cast(ord.LINE_BONUS_AMOUNT as nvarchar(30)), 'LINE_BONUS_AMOUNT')
						+ coalesce(cast(ord.BONUS_SHARE_AMOUNT as nvarchar(30)), 'BONUS_SHARE_AMOUNT')), 2) as [EtlDeltaHash]
				---------------------------------------------------------------------------------------------------
			from
				[$(Icopal_profBIS)].dbo.SA_ORDER_SNI as ord
			inner join [$(Icopal_profBIS)].dbo.PU_LINK_SITE as ssite
				on ssite.SYSTEM_ID = ord.SYSTEM_ID
				and ssite.LOCAL_SITE = ord.SITE_SOLD
			inner join [$(Icopal_profBIS)].dbo.MD_SITE as msite
				on msite.SITE_ID = ssite.SITE_ID
			--! Make sure we can filter for just invoices belonging to SBUs where SABIS is true
			inner join [$(Icopal_profBIS)].dbo.MD_SBU as sbu
				on sbu.SBU   = msite.SBU
			left outer join [$(Icopal_profBIS)].dbo.SA_LINK_ITEM as pCat
				on pCat.SYSTEM_ID = ord.SYSTEM_ID
				and pCat.ITEM_NO = ord.ITEM_NO
			left outer join [$(Icopal_profBIS)].dbo.SA_LINK_ENV as EnvPcat
				on EnvPcat.SYSTEM_ID = ord.SYSTEM_ID
				and EnvPcat.ITEM_NO = ord.ITEM_NO
			left outer join [$(Icopal_profBIS)].dbo.PU_LINK_UOM as lUom
				on lUom.SYSTEM_ID = ord.SYSTEM_ID
				and lUom.LOCAL_UOM = ord.UOM
			left outer join [$(Icopal_profBIS)].dbo.SA_LINK_CUSTOMER as lcc 
				on lcc.SYSTEM_ID = ord.SYSTEM_ID
				and lcc.CUSTOMER_NO = ord.SHIP_TO
			where
					ord.EXPECTED_INVOICE_DATE between @_DataCaptureStart and @_DataCaptureEnd
				--! Replicate all the filters used in Icopal_profBIS.dbo.V_SA_INVOICE (except date)
				and sbu.SABIS = 'Y'
				and ord.ORDER_TYPE in ('1', '2')
				and isnull(pCat.ITEM_CATEGORY_ID, -1) <> @_ExcludeFromQlikViewProductCategoryId
				and isnull(lcc.CUSTOMER_CATEGORY_ID, -1) <> @_ExcludeFromQlikViewCustomerCategoryId
		)
		merge into stg.OrderShippedNotInvoiced as tgt
		using sourceCte as src
			on src.SYSTEM_ID = tgt.SYSTEM_ID
			and src.ORDER_NUMBER collate SQL_Latin1_General_CP1_CI_AS = tgt.ORDER_NUMBER collate SQL_Latin1_General_CP1_CI_AS
			and src.ORDER_LINE_NUMBER collate SQL_Latin1_General_CP1_CI_AS = tgt.ORDER_LINE_NUMBER collate SQL_Latin1_General_CP1_CI_AS
			and src.SHIPPING_DOCUMENT collate SQL_Latin1_General_CP1_CI_AS = tgt.SHIPPING_DOCUMENT collate SQL_Latin1_General_CP1_CI_AS
			and src.Uniqueifier = tgt.Uniqueifier
		when not matched by target
			then insert
			(  
			  EtlDeltaHash
			, EtlCreatedOn
			, EtlCreatedBy
			, EtlUpdatedOn
			, EtlUpdatedBy
			, EtlDeletedOn
			, EtlDeletedBy
			, IsDeleted
			, REC_ID
			, SYSTEM_ID
			, ORDER_NUMBER
			, ORDER_LINE_NUMBER
			, SHIPPING_DOCUMENT
			, Uniqueifier
			, EXPECTED_INVOICE_DATE
			, ORDER_TYPE
			, OrderTypeName
			, LOCAL_SITE_SOLD
			, SITE_ID
			, ITEM_NO
			, ITEM_CATEGORY_ID
			, ENV_CATEGORY_ID
			, SOLD_TO_CUSTOMER_NO
			, SHIP_TO_CUSTOMER_NO
			, SALESPERSON_ID
			, SALESPERSON_NAME
			, SHIPPED_QUANTITY
			, SHIPPED_UOM
			, STATISTIC_QUANTITY
			, STATISTIC_UOM
			, QUANTITY
			, LOCAL_UOM
			, LOCAL_UOM_HARMONIZED
			, LOCAL_UOM_FACTOR
			, SHIPPED_AMOUNT
			, LOCAL_AMOUNT
			, GROUP_AMOUNT
			, SHIPPED_CURRENCY
			, LOCAL_CURRENCY
			, LINE_DISCOUNT_AMOUNT
			, ORDER_DISCOUNT_AMOUNT
			, LINE_BONUS_AMOUNT
			, BONUS_SHARE_AMOUNT
			)
			values
			(  
			  src.EtlDeltaHash
			, @LoadStart
			, @_FunctionName
			, @LoadStart
			, @_FunctionName
			, null -- EtlDeletedOn
			, null -- EtlDeletedBy
			, 'N' -- IsDeleted
			, src.REC_ID
			, src.SYSTEM_ID
			, src.ORDER_NUMBER
			, src.ORDER_LINE_NUMBER
			, src.SHIPPING_DOCUMENT
			, src.Uniqueifier
			, src.EXPECTED_INVOICE_DATE
			, src.ORDER_TYPE
			, src.OrderTypeName
			, src.LOCAL_SITE_SOLD
			, src.SITE_ID
			, src.ITEM_NO
			, src.ITEM_CATEGORY_ID
			, src.ENV_CATEGORY_ID
			, src.SOLD_TO_CUSTOMER_NO
			, src.SHIP_TO_CUSTOMER_NO
			, src.SALESPERSON_ID
			, src.SALESPERSON_NAME
			, src.SHIPPED_QUANTITY
			, src.SHIPPED_UOM
			, src.STATISTIC_QUANTITY
			, src.STATISTIC_UOM
			, src.QUANTITY
			, src.LOCAL_UOM
			, src.LOCAL_UOM_HARMONIZED
			, src.LOCAL_UOM_FACTOR
			, src.SHIPPED_AMOUNT
			, src.LOCAL_AMOUNT
			, src.GROUP_AMOUNT
			, src.SHIPPED_CURRENCY
			, src.LOCAL_CURRENCY
			, src.LINE_DISCOUNT_AMOUNT
			, src.ORDER_DISCOUNT_AMOUNT
			, src.LINE_BONUS_AMOUNT
			, src.BONUS_SHARE_AMOUNT
			)
		when matched and tgt.EtlDeltaHash <> src.EtlDeltaHash or tgt.IsDeleted = 'Y'
			then update set
					  tgt.EtlDeltaHash = src.EtlDeltaHash
					, tgt.EtlUpdatedOn = @LoadStart
					, tgt.EtlUpdatedBy = @_FunctionName
					, tgt.IsDeleted = 'N'
					, tgt.REC_ID = src.REC_ID
					, tgt.EXPECTED_INVOICE_DATE = src.EXPECTED_INVOICE_DATE
					, tgt.ORDER_TYPE = src.ORDER_TYPE
					, tgt.OrderTypeName = src.OrderTypeName
					, tgt.LOCAL_SITE_SOLD = src.LOCAL_SITE_SOLD
					, tgt.SITE_ID = src.SITE_ID
					, tgt.ITEM_NO = src.ITEM_NO
					, tgt.ITEM_CATEGORY_ID = src.ITEM_CATEGORY_ID
					, tgt.ENV_CATEGORY_ID = src.ENV_CATEGORY_ID
					, tgt.SOLD_TO_CUSTOMER_NO = src.SOLD_TO_CUSTOMER_NO
					, tgt.SHIP_TO_CUSTOMER_NO = src.SHIP_TO_CUSTOMER_NO
					, tgt.SALESPERSON_ID = src.SALESPERSON_ID
					, tgt.SALESPERSON_NAME = src.SALESPERSON_NAME
					, tgt.SHIPPED_QUANTITY = src.SHIPPED_QUANTITY
					, tgt.SHIPPED_UOM = src.SHIPPED_UOM
					, tgt.STATISTIC_QUANTITY = src.STATISTIC_QUANTITY
					, tgt.STATISTIC_UOM = src.STATISTIC_UOM
					, tgt.QUANTITY = src.QUANTITY
					, tgt.LOCAL_UOM = src.LOCAL_UOM
					, tgt.LOCAL_UOM_HARMONIZED = src.LOCAL_UOM_HARMONIZED
					, tgt.LOCAL_UOM_FACTOR = src.LOCAL_UOM_FACTOR
					, tgt.SHIPPED_AMOUNT = src.SHIPPED_AMOUNT
					, tgt.LOCAL_AMOUNT = src.LOCAL_AMOUNT
					, tgt.GROUP_AMOUNT = src.GROUP_AMOUNT
					, tgt.SHIPPED_CURRENCY = src.SHIPPED_CURRENCY
					, tgt.LOCAL_CURRENCY = src.LOCAL_CURRENCY
					, tgt.LINE_DISCOUNT_AMOUNT = src.LINE_DISCOUNT_AMOUNT
					, tgt.ORDER_DISCOUNT_AMOUNT = src.ORDER_DISCOUNT_AMOUNT
					, tgt.LINE_BONUS_AMOUNT = src.LINE_BONUS_AMOUNT
					, tgt.BONUS_SHARE_AMOUNT = src.BONUS_SHARE_AMOUNT
		when not matched by source and (tgt.EXPECTED_INVOICE_DATE between @_DataCaptureStart and @_DataCaptureEnd) and tgt.OrderShippedNotInvoicedKey >= 100
			then update set
					  tgt.IsDeleted = 'Y'
					, tgt.EtlDeletedOn = @LoadStart
					, tgt.EtlDeletedBy = @_FunctionName
					, tgt.EtlUpdatedOn = @LoadStart
					, tgt.EtlUpdatedBy = @_FunctionName
		;

		set @RowsAffected = @@rowcount;
		set @_ProgressMessage = 'Step: "' +  @_Step + '" processed ' + coalesce(cast(@RowsAffected as varchar(16)), 'NULL') + ' row(s)'
				+ ' in ' + log4.FormatElapsedTime(@_StepStartTime, null, 3)
		set @_ProgressLog += coalesce(char(10) + @_ProgressMessage, '');

		/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
		/**/ if @DebugLevel > 4 raiserror('DEBUG - %s: %s', 0, 1, @_FunctionName, @_ProgressMessage) with nowait;
		/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/


		--!
		--! Only commit transactions started within this procedure
		--!
		if @_TxnIsExternal = 0 and (xact_state() = 1 or @@trancount > 0) commit tran ;

		--!
		--! If we get here, every step completed successfully so report final state
		--!
		set @_Message = 'Completed all staging data preparation steps'
		set @_Error = 0 ;
	end try
	begin catch
		set @_ErrorContext = 'Failed to refresh Invoice dimension at step '
			+ coalesce('[' + @_Step + ']', 'NULL');

		--! If we have an uncommittable external transaction (see BOL), or a deadlock
		--! we can't do anything else until we roll that back. Alternatively, if we
		--! started the transaction we should roll it back otherwise or let the caller
		--! handle its own external txn 
		if (xact_state() = -1) or (xact_state() = 1 and error_number() = 1205) or (xact_state() = 1 and @_TxnIsExternal = 0)
			begin
				rollback tran;
				set @_ErrorContext = @_ErrorContext + ' (Forced roll back all changes)';
			end
		
		exec log4.ExceptionHandler
				  @ErrorContext   = @_ErrorContext
				, @ErrorProcedure = @_FunctionName
				, @ErrorNumber    = @_Error out
				, @ReturnMessage  = @_Message out
				, @ExceptionId    = @_ExceptionId out
	end catch

--/////////////////////////////////////////////////////////////////////////////////////////////////
EndProc:
--/////////////////////////////////////////////////////////////////////////////////////////////////

	if @_Error = 0
		begin
			set @_Step = 'OnComplete'
			set @_Severity = @SEVERITY_SUCCESS
			set @_Message = case when len(@_Message) > 450 then substring(@_Message, 1, 450) + '...' else coalesce(@_Message, @_Step) end
							+ ' in a total run time of ' + log4.FormatElapsedTime(@_SprocStartTime, null, 3)
			set @_ProgressLog = @_ProgressLog + char(10) + @_Message
		end
	else
		begin
			set @_Step = coalesce(@_Step, 'OnError')
			set @_Severity = @SEVERITY_SEVERE
			set @_Message = case when len(@_Message) > 450 then substring(@_Message, 1, 450) + '...' else coalesce(@_Message, @_Step) end
							+ ' after a total run time of ' + log4.FormatElapsedTime(@_SprocStartTime, null, 3)
			set @_ProgressLog = @_ProgressLog + char(10) + @_Message
		end

	if @DebugLevel != 0 and @_Severity = @SEVERITY_INFORMATION set @_Severity = @SEVERITY_DEBUG;

	/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/
	/**/ if @DebugLevel > 4
	/**/	begin
	/**/		raiserror('DEBUG - %s: %s', 0, 1, @_FunctionName, @_Message) with nowait;
	/**/		raiserror('', 0, 1) with nowait;
	/**/	end
	/*+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++*/

	if @_JournalOnOff = 'ON'
		exec log4.JournalWriter
				  @Task = @_JobName
				, @FunctionName = @_FunctionName
				, @StepInFunction = @_Step
				, @MessageText = @_Message
				, @ExtraInfo = @_ProgressLog
				, @Severity = @_Severity
				, @ExceptionId = @_ExceptionId

	--! Finally, throw an exception that will be detected by the caller
	if @_Error > 0 raiserror(@_Message, 16, 99);

	set nocount off;

	--! Return the value of @@ERROR (which will be zero on success)
	return (@_Error);
end
go
exec sp_addextendedproperty 'MS_Description'
, 'Merges any changes from the QlikView source into the staging area ready for consumption by the QV-to-IDW ETL process'
, 'SCHEMA', 'privy', 'PROCEDURE', 'OrderShippedNotInvoicedRefresh', null, null;
go
