CREATE TABLE [psa].[ics_stg_Navision_BGR_Purch_Inv_Header]
(
[EtlRecordId] [bigint] NOT NULL IDENTITY(1, 1),
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[EtlUpdatedOn] [datetime] NOT NULL,
[EtlUpdatedBy] [varchar] (200) NOT NULL,
[EtlDeletedOn] [datetime] NULL,
[EtlDeletedBy] [varchar] (200) NULL,
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Navision_BGR_Purch_Inv_Header_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Navision_BGR_Purch_Inv_Header_IsIncomplete] DEFAULT ('N'),
[Applies-to_Doc__No_] [varchar] (20) NULL,
[Applies-to_Doc__Type] [int] NULL,
[Area] [varchar] (10) NULL,
[Bal__Account_No_] [varchar] (20) NULL,
[Bal__Account_Type] [int] NULL,
[BizTalk_Purchase_Invoice] [tinyint] NULL,
[Buy-from_Address] [varchar] (50) NULL,
[Buy-from_Address_2] [varchar] (50) NULL,
[Buy-from_City] [varchar] (30) NULL,
[Buy-from_Contact] [varchar] (50) NULL,
[Buy-from_Contact_No_] [varchar] (20) NULL,
[Buy-from_Country_Region_Code] [varchar] (10) NULL,
[Buy-from_County] [varchar] (30) NULL,
[Buy-from_Post_Code] [varchar] (20) NULL,
[Buy-from_Vendor_Name] [varchar] (50) NULL,
[Buy-from_Vendor_Name_2] [varchar] (50) NULL,
[Buy-from_Vendor_No_] [varchar] (20) NULL,
[Campaign_No_] [varchar] (20) NULL,
[Composed_By] [varchar] (30) NULL,
[Correction] [tinyint] NULL,
[Currency_Code] [varchar] (10) NULL,
[Currency_Factor] [decimal] (38, 20) NULL,
[Customs_Declaration_No_] [varchar] (10) NULL,
[Date_Received] [datetime] NULL,
[Debit_Memo] [tinyint] NULL,
[Do_not_include_in_VAT_Ledgers] [tinyint] NULL,
[Document_Date] [datetime] NULL,
[Due_Date] [datetime] NULL,
[Entry_Point] [varchar] (10) NULL,
[Expected_Receipt_Date] [datetime] NULL,
[Gen__Bus__Posting_Group] [varchar] (10) NULL,
[Identification_No_] [varchar] (13) NULL,
[Invoice_Disc__Code] [varchar] (20) NULL,
[Language_Code] [varchar] (10) NULL,
[Location_Code] [varchar] (10) NULL,
[No_] [varchar] (20) NOT NULL,
[No__Printed] [int] NULL,
[No__Series] [varchar] (10) NULL,
[On_Hold] [varchar] (3) NULL,
[Order_Address_Code] [varchar] (10) NULL,
[Order_Date] [datetime] NULL,
[Order_No_] [varchar] (20) NULL,
[Order_No__Series] [varchar] (10) NULL,
[Payment_Discount_%] [decimal] (38, 20) NULL,
[Payment_Method_Code] [varchar] (10) NULL,
[Payment_Terms_Code] [varchar] (10) NULL,
[Pay-to_Address] [varchar] (50) NULL,
[Pay-to_Address_2] [varchar] (50) NULL,
[Pay-to_City] [varchar] (30) NULL,
[Pay-to_Contact] [varchar] (50) NULL,
[Pay-to_Contact_No_] [varchar] (20) NULL,
[Pay-to_Country_Region_Code] [varchar] (10) NULL,
[Pay-to_County] [varchar] (30) NULL,
[Pay-to_Name] [varchar] (50) NULL,
[Pay-to_Name_2] [varchar] (50) NULL,
[Pay-to_Post_Code] [varchar] (20) NULL,
[Pay-to_Vendor_No_] [varchar] (20) NULL,
[Pmt__Discount_Date] [datetime] NULL,
[Posting_Date] [datetime] NULL,
[Posting_Description] [varchar] (50) NULL,
[Pre-Assigned_No_] [varchar] (20) NULL,
[Pre-Assigned_No__Series] [varchar] (10) NULL,
[Prepayment_Invoice] [tinyint] NULL,
[Prepayment_No__Series] [varchar] (10) NULL,
[Prepayment_Order_No_] [varchar] (20) NULL,
[Prices_Including_VAT] [tinyint] NULL,
[Purchaser_Code] [varchar] (10) NULL,
[Quote_No_] [varchar] (20) NULL,
[Reason_Code] [varchar] (10) NULL,
[Responsibility_Center] [varchar] (10) NULL,
[Sales_Protocol] [tinyint] NULL,
[Sell-to_Customer_No_] [varchar] (20) NULL,
[Shipment_Method_Code] [varchar] (10) NULL,
[Ship-to_Address] [varchar] (50) NULL,
[Ship-to_Address_2] [varchar] (50) NULL,
[Ship-to_City] [varchar] (30) NULL,
[Ship-to_Code] [varchar] (10) NULL,
[Ship-to_Contact] [varchar] (50) NULL,
[Ship-to_Country_Region_Code] [varchar] (10) NULL,
[Ship-to_County] [varchar] (30) NULL,
[Ship-to_Name] [varchar] (50) NULL,
[Ship-to_Name_2] [varchar] (50) NULL,
[Ship-to_Post_Code] [varchar] (20) NULL,
[Shortcut_Dimension_1_Code] [varchar] (20) NULL,
[Shortcut_Dimension_2_Code] [varchar] (20) NULL,
[Source_Code] [varchar] (10) NULL,
[Tax_Area_Code] [varchar] (20) NULL,
[Tax_Liable] [tinyint] NULL,
[Time_Received] [datetime] NULL,
[timestamp] [varbinary] (max) NULL,
[To_Invoice_Date] [datetime] NULL,
[To_Invoice_No_] [varchar] (20) NULL,
[Transaction_Specification] [varchar] (10) NULL,
[Transaction_Type] [varchar] (10) NULL,
[Transport_Method] [varchar] (10) NULL,
[Unrealized_VAT] [tinyint] NULL,
[User_ID] [varchar] (20) NULL,
[VAT_Base_Discount_%] [decimal] (38, 20) NULL,
[VAT_Bus__Posting_Group] [varchar] (10) NULL,
[VAT_Country_Region_Code] [varchar] (10) NULL,
[VAT_Exempt_Ground] [varchar] (10) NULL,
[VAT_Protocol] [tinyint] NULL,
[VAT_Registration_No_] [varchar] (20) NULL,
[VAT_Settlement_Date] [datetime] NULL,
[VAT_Subject] [varchar] (30) NULL,
[Vendor_Invoice_No_] [varchar] (20) NULL,
[Vendor_Order_No_] [varchar] (20) NULL,
[Vendor_Posting_Group] [varchar] (10) NULL,
[Void] [tinyint] NULL,
[Void_Date] [datetime] NULL,
[Your_Reference] [varchar] (30) NULL
)
GO
ALTER TABLE [psa].[ics_stg_Navision_BGR_Purch_Inv_Header] ADD CONSTRAINT [PK_psa_ics_stg_Navision_BGR_Purch_Inv_Header] PRIMARY KEY CLUSTERED  ([No_])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_Navision_BGR_Purch_Inv_Header', NULL, NULL
GO
