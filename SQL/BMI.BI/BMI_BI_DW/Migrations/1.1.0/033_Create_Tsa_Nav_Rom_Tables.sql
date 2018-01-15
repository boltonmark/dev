﻿-- <Migration ID="bb428f3c-2459-4583-b8fa-c3c001193bcd" />
GO

if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Header', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Header] ;
if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Header', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Header] ;
if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Line', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Line] ;
if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Line', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Line] ;
if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania$Purchase Line Discount', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania$Purchase Line Discount] ;
if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Price', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Price] ;
if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania$Purchases&PayablesSetup', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania$Purchases&PayablesSetup] ;
if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania$Salesperson_Purchaser', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania$Salesperson_Purchaser] ;
if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania$Standard Purchase Code', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania$Standard Purchase Code] ;
if object_id('tsa.ics_land_Navision_Rom_Live Icopal Romania$Standard Purchase Line', 'U') is not null
	drop table tsa.[ics_land_Navision_Rom_Live Icopal Romania$Standard Purchase Line] ;
		go


	
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Header]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Header]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Header_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Header_IsDuplicate] DEFAULT ((0)),
[Applies-to_Doc__No_] [varchar] (20) NULL,
[Applies-to_Doc__Type] [int] NULL,
[Area] [varchar] (10) NULL,
[Bal__Account_No_] [varchar] (20) NULL,
[Bal__Account_Type] [int] NULL,
[BizTalk_Purchase_Invoice] [tinyint] NULL,
[Buy-from_Address] [varchar] (30) NULL,
[Buy-from_Address_2] [varchar] (30) NULL,
[Buy-from_City] [varchar] (30) NULL,
[Buy-from_Contact] [varchar] (30) NULL,
[Buy-from_Contact_No_] [varchar] (20) NULL,
[Buy-from_Country_Code] [varchar] (10) NULL,
[Buy-from_County] [varchar] (30) NULL,
[Buy-from_Post_Code] [varchar] (20) NULL,
[Buy-from_Vendor_Name] [varchar] (30) NULL,
[Buy-from_Vendor_Name_2] [varchar] (30) NULL,
[Buy-from_Vendor_No_] [varchar] (20) NULL,
[Correction] [tinyint] NULL,
[Currency_Code] [varchar] (10) NULL,
[Currency_Factor] [decimal] (38, 20) NULL,
[Custom_Invoice_No_] [varchar] (20) NULL,
[Date_Received] [datetime] NULL,
[Document_Date] [datetime] NULL,
[Due_Date] [datetime] NULL,
[EU_3-Party_Trade] [tinyint] NULL,
[Entry_Point] [varchar] (10) NULL,
[Expected_Receipt_Date] [datetime] NULL,
[Gen__Bus__Posting_Group] [varchar] (10) NULL,
[Invoice_Disc__Code] [varchar] (20) NULL,
[Job_No_] [varchar] (20) NULL,
[Language_Code] [varchar] (10) NULL,
[Location_Code] [varchar] (10) NULL,
[No_] [varchar] (20) NULL,
[No__Printed] [int] NULL,
[No__Series] [varchar] (10) NULL,
[Not_Declaration_394] [tinyint] NULL,
[On_Hold] [varchar] (3) NULL,
[Order_Address_Code] [varchar] (10) NULL,
[Order_Date] [datetime] NULL,
[Order_No_] [varchar] (20) NULL,
[Order_No__Series] [varchar] (10) NULL,
[Pay-to_Address] [varchar] (30) NULL,
[Pay-to_Address_2] [varchar] (30) NULL,
[Pay-to_City] [varchar] (30) NULL,
[Pay-to_Contact] [varchar] (30) NULL,
[Pay-to_Contact_No_] [varchar] (20) NULL,
[Pay-to_Country_Code] [varchar] (10) NULL,
[Pay-to_County] [varchar] (30) NULL,
[Pay-to_Name] [varchar] (30) NULL,
[Pay-to_Name_2] [varchar] (30) NULL,
[Pay-to_Post_Code] [varchar] (20) NULL,
[Pay-to_Vendor_No_] [varchar] (20) NULL,
[Payment_Discount_%] [decimal] (38, 20) NULL,
[Payment_Method_Code] [varchar] (10) NULL,
[Payment_Terms_Code] [varchar] (10) NULL,
[Pmt__Discount_Date] [datetime] NULL,
[Posting_Date] [datetime] NULL,
[Posting_Description] [varchar] (50) NULL,
[Pre-Assigned_No_] [varchar] (20) NULL,
[Pre-Assigned_No__Series] [varchar] (10) NULL,
[Prices_Including_VAT] [tinyint] NULL,
[Purchaser_Code] [varchar] (10) NULL,
[Reason_Code] [varchar] (10) NULL,
[Responsibility_Center] [varchar] (10) NULL,
[Sell-to_Customer_No_] [varchar] (20) NULL,
[Ship-to_Address] [varchar] (30) NULL,
[Ship-to_Address_2] [varchar] (30) NULL,
[Ship-to_City] [varchar] (30) NULL,
[Ship-to_Code] [varchar] (10) NULL,
[Ship-to_Contact] [varchar] (30) NULL,
[Ship-to_Country_Code] [varchar] (10) NULL,
[Ship-to_County] [varchar] (30) NULL,
[Ship-to_Name] [varchar] (30) NULL,
[Ship-to_Name_2] [varchar] (30) NULL,
[Ship-to_Post_Code] [varchar] (20) NULL,
[Shipment_Method_Code] [varchar] (10) NULL,
[Shortcut_Dimension_1_Code] [varchar] (20) NULL,
[Shortcut_Dimension_2_Code] [varchar] (20) NULL,
[Source_Code] [varchar] (10) NULL,
[Tax_Area_Code] [varchar] (20) NULL,
[Tax_Liable] [tinyint] NULL,
[Time_Received] [datetime] NULL,
[Transaction_Specification] [varchar] (10) NULL,
[Transaction_Type] [varchar] (10) NULL,
[Transport_Method] [varchar] (10) NULL,
[User_ID] [varchar] (20) NULL,
[VAT_Base_Discount_%] [decimal] (38, 20) NULL,
[VAT_Bus__Posting_Group] [varchar] (10) NULL,
[VAT_Country_Code] [varchar] (10) NULL,
[VAT_Registration_No_] [varchar] (20) NULL,
[Vendor_Invoice_No_] [varchar] (20) NULL,
[Vendor_Order_No_] [varchar] (20) NULL,
[Vendor_Posting_Group] [varchar] (10) NULL,
[Your_Reference] [varchar] (30) NULL,
[timestamp] [timestamp] NOT NULL
)
GO
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Header]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Header]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Header_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Header_IsDuplicate] DEFAULT ((0)),
[Applies-to_Doc__No_] [varchar] (20) NULL,
[Applies-to_Doc__Type] [int] NULL,
[Applies-to_ID] [varchar] (20) NULL,
[Area] [varchar] (10) NULL,
[Bal__Account_No_] [varchar] (20) NULL,
[Bal__Account_Type] [int] NULL,
[BizTalk_Document_Sent] [tinyint] NULL,
[BizTalk_Purch__Order_Cnfmn_] [tinyint] NULL,
[BizTalk_Purchase_Credit_Memo] [tinyint] NULL,
[BizTalk_Purchase_Invoice] [tinyint] NULL,
[BizTalk_Purchase_Order] [tinyint] NULL,
[BizTalk_Purchase_Quote] [tinyint] NULL,
[BizTalk_Purchase_Receipt] [tinyint] NULL,
[BizTalk_Request_for_Purch__Qte] [tinyint] NULL,
[Buy-from_Address] [varchar] (30) NULL,
[Buy-from_Address_2] [varchar] (30) NULL,
[Buy-from_City] [varchar] (30) NULL,
[Buy-from_Contact] [varchar] (30) NULL,
[Buy-from_Contact_No_] [varchar] (20) NULL,
[Buy-from_Country_Code] [varchar] (10) NULL,
[Buy-from_County] [varchar] (30) NULL,
[Buy-from_IC_Partner_Code] [varchar] (20) NULL,
[Buy-from_Post_Code] [varchar] (20) NULL,
[Buy-from_Vendor_Name] [varchar] (30) NULL,
[Buy-from_Vendor_Name_2] [varchar] (30) NULL,
[Buy-from_Vendor_No_] [varchar] (20) NULL,
[Campaign_No_] [varchar] (20) NULL,
[Correction] [tinyint] NULL,
[Currency_Code] [varchar] (10) NULL,
[Currency_Factor] [decimal] (38, 20) NULL,
[Custom_Invoice_No_] [varchar] (20) NULL,
[Date_Received] [datetime] NULL,
[Date_Sent] [datetime] NULL,
[Doc__No__Occurrence] [int] NULL,
[Document_Date] [datetime] NULL,
[Document_Type] [int] NULL,
[Due_Date] [datetime] NULL,
[EU_3-Party_Trade] [tinyint] NULL,
[Entry_Point] [varchar] (10) NULL,
[Expected_Receipt_Date] [datetime] NULL,
[Gen__Bus__Posting_Group] [varchar] (10) NULL,
[IC_Direction] [int] NULL,
[IC_Status] [int] NULL,
[Inbound_Whse__Handling_Time] [varchar] (32) NULL,
[Invoice] [tinyint] NULL,
[Invoice_Disc__Code] [varchar] (20) NULL,
[Invoice_Discount_Calculation] [int] NULL,
[Invoice_Discount_Value] [decimal] (38, 20) NULL,
[Job_No_] [varchar] (20) NULL,
[Language_Code] [varchar] (10) NULL,
[Last_Posting_No_] [varchar] (20) NULL,
[Last_Receiving_No_] [varchar] (20) NULL,
[Last_Return_Shipment_No_] [varchar] (20) NULL,
[Lead_Time_Calculation] [varchar] (32) NULL,
[Location_Code] [varchar] (10) NULL,
[No_] [varchar] (20) NULL,
[No__Printed] [int] NULL,
[No__Series] [varchar] (10) NULL,
[Not_Declaration_394] [tinyint] NULL,
[On_Hold] [varchar] (3) NULL,
[Order_Address_Code] [varchar] (10) NULL,
[Order_Class] [varchar] (10) NULL,
[Order_Date] [datetime] NULL,
[Pay-to_Address] [varchar] (30) NULL,
[Pay-to_Address_2] [varchar] (30) NULL,
[Pay-to_City] [varchar] (30) NULL,
[Pay-to_Contact] [varchar] (30) NULL,
[Pay-to_Contact_No_] [varchar] (20) NULL,
[Pay-to_Country_Code] [varchar] (10) NULL,
[Pay-to_County] [varchar] (30) NULL,
[Pay-to_IC_Partner_Code] [varchar] (20) NULL,
[Pay-to_Name] [varchar] (30) NULL,
[Pay-to_Name_2] [varchar] (30) NULL,
[Pay-to_Post_Code] [varchar] (20) NULL,
[Pay-to_Vendor_No_] [varchar] (20) NULL,
[Payment_Discount_%] [decimal] (38, 20) NULL,
[Payment_Method_Code] [varchar] (10) NULL,
[Payment_Terms_Code] [varchar] (10) NULL,
[Pmt__Discount_Date] [datetime] NULL,
[Posting_Date] [datetime] NULL,
[Posting_Desc__Code] [varchar] (10) NULL,
[Posting_Description] [varchar] (50) NULL,
[Posting_No_] [varchar] (20) NULL,
[Posting_No__Series] [varchar] (10) NULL,
[Posting_from_Whse__Ref_] [int] NULL,
[Prices_Including_VAT] [tinyint] NULL,
[Promised_Receipt_Date] [datetime] NULL,
[Purchaser_Code] [varchar] (10) NULL,
[Reason_Code] [varchar] (10) NULL,
[Receive] [tinyint] NULL,
[Receiving_No_] [varchar] (20) NULL,
[Receiving_No__Series] [varchar] (10) NULL,
[Requested_Receipt_Date] [datetime] NULL,
[Responsibility_Center] [varchar] (10) NULL,
[Return_Shipment_No_] [varchar] (20) NULL,
[Return_Shipment_No__Series] [varchar] (10) NULL,
[Sell-to_Customer_No_] [varchar] (20) NULL,
[Send_IC_Document] [tinyint] NULL,
[Ship] [tinyint] NULL,
[Ship-to_Address] [varchar] (30) NULL,
[Ship-to_Address_2] [varchar] (30) NULL,
[Ship-to_City] [varchar] (30) NULL,
[Ship-to_Code] [varchar] (10) NULL,
[Ship-to_Contact] [varchar] (30) NULL,
[Ship-to_Country_Code] [varchar] (10) NULL,
[Ship-to_County] [varchar] (30) NULL,
[Ship-to_Name] [varchar] (30) NULL,
[Ship-to_Name_2] [varchar] (30) NULL,
[Ship-to_Post_Code] [varchar] (20) NULL,
[Shipment_Method_Code] [varchar] (10) NULL,
[Shortcut_Dimension_1_Code] [varchar] (20) NULL,
[Shortcut_Dimension_2_Code] [varchar] (20) NULL,
[Status] [int] NULL,
[Tax_Area_Code] [varchar] (20) NULL,
[Tax_Liable] [tinyint] NULL,
[Time_Received] [datetime] NULL,
[Time_Sent] [datetime] NULL,
[Transaction_Specification] [varchar] (10) NULL,
[Transaction_Type] [varchar] (10) NULL,
[Transport_Method] [varchar] (10) NULL,
[VAT_Base_Discount_%] [decimal] (38, 20) NULL,
[VAT_Bus__Posting_Group] [varchar] (10) NULL,
[VAT_Country_Code] [varchar] (10) NULL,
[VAT_Registration_No_] [varchar] (20) NULL,
[Vendor_Authorization_No_] [varchar] (20) NULL,
[Vendor_Cr__Memo_No_] [varchar] (20) NULL,
[Vendor_Invoice_No_] [varchar] (20) NULL,
[Vendor_Order_No_] [varchar] (20) NULL,
[Vendor_Posting_Group] [varchar] (10) NULL,
[Vendor_Quote_No_] [varchar] (20) NULL,
[Vendor_Shipment_No_] [varchar] (20) NULL,
[Your_Reference] [varchar] (30) NULL,
[timestamp] [timestamp] NOT NULL
)
GO
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Line]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Line]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Line_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Line_IsDuplicate] DEFAULT ((0)),
[Allow_Invoice_Disc_] [tinyint] NULL,
[Allow_Item_Charge_Assignment] [tinyint] NULL,
[Amount] [decimal] (38, 20) NULL,
[Amount_Including_VAT] [decimal] (38, 20) NULL,
[Amt__Rcd__Not_Invoiced] [decimal] (38, 20) NULL,
[Amt__Rcd__Not_Invoiced_(LCY)] [decimal] (38, 20) NULL,
[Appl_-to_Item_Entry] [int] NULL,
[Area] [varchar] (10) NULL,
[Attached_to_Line_No_] [int] NULL,
[Bin_Code] [varchar] (20) NULL,
[Blanket_Order_Line_No_] [int] NULL,
[Blanket_Order_No_] [varchar] (20) NULL,
[Budgeted_FA_No_] [varchar] (20) NULL,
[Buy-from_Vendor_No_] [varchar] (20) NULL,
[Completely_Received] [tinyint] NULL,
[Country_of_Origin_Code] [varchar] (10) NULL,
[Cross-Reference_No_] [varchar] (20) NULL,
[Cross-Reference_Type] [int] NULL,
[Cross-Reference_Type_No_] [varchar] (30) NULL,
[Currency_Code] [varchar] (10) NULL,
[Depr__Acquisition_Cost] [tinyint] NULL,
[Depr__until_FA_Posting_Date] [tinyint] NULL,
[Depreciation_Book_Code] [varchar] (10) NULL,
[Description] [varchar] (50) NULL,
[Description_2] [varchar] (50) NULL,
[Direct_Unit_Cost] [decimal] (38, 20) NULL,
[Document_No_] [varchar] (20) NULL,
[Document_Type] [int] NULL,
[Drop_Shipment] [tinyint] NULL,
[Duplicate_in_Depreciation_Book] [varchar] (10) NULL,
[Entry_Point] [varchar] (10) NULL,
[Expected_Receipt_Date] [datetime] NULL,
[FA_Posting_Date] [datetime] NULL,
[FA_Posting_Type] [int] NULL,
[Finished] [tinyint] NULL,
[Gen__Bus__Posting_Group] [varchar] (10) NULL,
[Gen__Prod__Posting_Group] [varchar] (10) NULL,
[Gross_Weight] [decimal] (38, 20) NULL,
[IC_Partner_Ref__Type] [int] NULL,
[IC_Partner_Reference] [varchar] (20) NULL,
[Inbound_Whse__Handling_Time] [varchar] (32) NULL,
[Indirect_Cost_%] [decimal] (38, 20) NULL,
[Insurance_No_] [varchar] (20) NULL,
[Inv__Disc__Amount_to_Invoice] [decimal] (38, 20) NULL,
[Inv__Discount_Amount] [decimal] (38, 20) NULL,
[Item_Category_Code] [varchar] (10) NULL,
[Job_No_] [varchar] (20) NULL,
[Lead_Time_Calculation] [varchar] (32) NULL,
[Line_Amount] [decimal] (38, 20) NULL,
[Line_Discount_%] [decimal] (38, 20) NULL,
[Line_Discount_Amount] [decimal] (38, 20) NULL,
[Line_No_] [int] NULL,
[Location_Code] [varchar] (10) NULL,
[MPS_Order] [tinyint] NULL,
[Maintenance_Code] [varchar] (10) NULL,
[Net_Weight] [decimal] (38, 20) NULL,
[No_] [varchar] (20) NULL,
[No__of_Palet] [decimal] (38, 20) NULL,
[Nonstock] [tinyint] NULL,
[Operation_No_] [varchar] (10) NULL,
[Order_Date] [datetime] NULL,
[Outstanding_Amount] [decimal] (38, 20) NULL,
[Outstanding_Amount_(LCY)] [decimal] (38, 20) NULL,
[Outstanding_Qty__(Base)] [decimal] (38, 20) NULL,
[Outstanding_Quantity] [decimal] (38, 20) NULL,
[Overhead_Rate] [decimal] (38, 20) NULL,
[Palet_Type] [varchar] (250) NULL,
[Palet_Weight] [decimal] (38, 20) NULL,
[Pay-to_Vendor_No_] [varchar] (20) NULL,
[Phase_Code] [varchar] (10) NULL,
[Planned_Receipt_Date] [datetime] NULL,
[Planning_Flexibility] [int] NULL,
[Posting_Group] [varchar] (10) NULL,
[Prod__Order_Line_No_] [int] NULL,
[Prod__Order_No_] [varchar] (20) NULL,
[Product_Group_Code] [varchar] (10) NULL,
[Profit_%] [decimal] (38, 20) NULL,
[Promised_Receipt_Date] [datetime] NULL,
[Purchasing_Code] [varchar] (10) NULL,
[Qty__Invoiced_(Base)] [decimal] (38, 20) NULL,
[Qty__Rcd__Not_Invoiced] [decimal] (38, 20) NULL,
[Qty__Rcd__Not_Invoiced_(Base)] [decimal] (38, 20) NULL,
[Qty__Received_(Base)] [decimal] (38, 20) NULL,
[Qty__per_Unit_of_Measure] [decimal] (38, 20) NULL,
[Qty__to_Invoice] [decimal] (38, 20) NULL,
[Qty__to_Invoice_(Base)] [decimal] (38, 20) NULL,
[Qty__to_Receive] [decimal] (38, 20) NULL,
[Qty__to_Receive_(Base)] [decimal] (38, 20) NULL,
[Quantity] [decimal] (38, 20) NULL,
[Quantity_(Base)] [decimal] (38, 20) NULL,
[Quantity_Invoiced] [decimal] (38, 20) NULL,
[Quantity_Received] [decimal] (38, 20) NULL,
[Receipt_Line_No_] [int] NULL,
[Receipt_No_] [varchar] (20) NULL,
[Requested_Receipt_Date] [datetime] NULL,
[Responsibility_Center] [varchar] (10) NULL,
[Ret__Qty__Shpd_Not_Invd_(Base)] [decimal] (38, 20) NULL,
[Return_Qty__Shipped] [decimal] (38, 20) NULL,
[Return_Qty__Shipped_(Base)] [decimal] (38, 20) NULL,
[Return_Qty__Shipped_Not_Invd_] [decimal] (38, 20) NULL,
[Return_Qty__to_Ship] [decimal] (38, 20) NULL,
[Return_Qty__to_Ship_(Base)] [decimal] (38, 20) NULL,
[Return_Reason_Code] [varchar] (10) NULL,
[Return_Shipment_Line_No_] [int] NULL,
[Return_Shipment_No_] [varchar] (20) NULL,
[Return_Shpd__Not_Invd_] [decimal] (38, 20) NULL,
[Return_Shpd__Not_Invd__(LCY)] [decimal] (38, 20) NULL,
[Routing_No_] [varchar] (20) NULL,
[Routing_Reference_No_] [int] NULL,
[Safety_Lead_Time] [varchar] (32) NULL,
[Sales_Order_Line_No_] [int] NULL,
[Sales_Order_No_] [varchar] (20) NULL,
[Salvage_Value] [decimal] (38, 20) NULL,
[Shortcut_Dimension_1_Code] [varchar] (20) NULL,
[Shortcut_Dimension_2_Code] [varchar] (20) NULL,
[Special_Order] [tinyint] NULL,
[Special_Order_Sales_Line_No_] [int] NULL,
[Special_Order_Sales_No_] [varchar] (20) NULL,
[Step_Code] [varchar] (10) NULL,
[System-Created_Entry] [tinyint] NULL,
[Tariff_No_] [varchar] (10) NULL,
[Task_Code] [varchar] (10) NULL,
[Tax_Area_Code] [varchar] (20) NULL,
[Tax_Group_Code] [varchar] (10) NULL,
[Tax_Liable] [tinyint] NULL,
[Transaction_Specification] [varchar] (10) NULL,
[Transaction_Type] [varchar] (10) NULL,
[Transport_Method] [varchar] (10) NULL,
[Type] [int] NULL,
[Unit_Cost] [decimal] (38, 20) NULL,
[Unit_Cost_(LCY)] [decimal] (38, 20) NULL,
[Unit_Price_(LCY)] [decimal] (38, 20) NULL,
[Unit_Volume] [decimal] (38, 20) NULL,
[Unit_of_Measure] [varchar] (10) NULL,
[Unit_of_Measure_(Cross_Ref_)] [varchar] (10) NULL,
[Unit_of_Measure_Code] [varchar] (10) NULL,
[Units_per_Parcel] [decimal] (38, 20) NULL,
[Use_Duplication_List] [tinyint] NULL,
[Use_Tax] [tinyint] NULL,
[VAT_%] [decimal] (38, 20) NULL,
[VAT_Base_Amount] [decimal] (38, 20) NULL,
[VAT_Bus__Posting_Group] [varchar] (10) NULL,
[VAT_Calculation_Type] [int] NULL,
[VAT_Difference] [decimal] (38, 20) NULL,
[VAT_Identifier] [varchar] (10) NULL,
[VAT_Prod__Posting_Group] [varchar] (10) NULL,
[Variant_Code] [varchar] (10) NULL,
[Vendor_Item_No_] [varchar] (20) NULL,
[Work_Center_No_] [varchar] (20) NULL,
[timestamp] [timestamp] NOT NULL
)
GO
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Line]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Line]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Line_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purch_ Inv_ Line_IsDuplicate] DEFAULT ((0)),
[Allow_Invoice_Disc_] [tinyint] NULL,
[Amount] [decimal] (38, 20) NULL,
[Amount_Including_VAT] [decimal] (38, 20) NULL,
[Appl_-to_Item_Entry] [int] NULL,
[Area] [varchar] (10) NULL,
[Attached_to_Line_No_] [int] NULL,
[Bin_Code] [varchar] (20) NULL,
[Blanket_Order_Line_No_] [int] NULL,
[Blanket_Order_No_] [varchar] (20) NULL,
[Budgeted_FA_No_] [varchar] (20) NULL,
[Buy-from_Vendor_No_] [varchar] (20) NULL,
[Cross-Reference_No_] [varchar] (20) NULL,
[Cross-Reference_Type] [int] NULL,
[Cross-Reference_Type_No_] [varchar] (30) NULL,
[Depr__Acquisition_Cost] [tinyint] NULL,
[Depr__until_FA_Posting_Date] [tinyint] NULL,
[Depreciation_Book_Code] [varchar] (10) NULL,
[Description] [varchar] (50) NULL,
[Description_2] [varchar] (50) NULL,
[Direct_Unit_Cost] [decimal] (38, 20) NULL,
[Document_No_] [varchar] (20) NULL,
[Duplicate_in_Depreciation_Book] [varchar] (10) NULL,
[Entry_Point] [varchar] (10) NULL,
[Expected_Receipt_Date] [datetime] NULL,
[FA_Posting_Date] [datetime] NULL,
[FA_Posting_Type] [int] NULL,
[Gen__Bus__Posting_Group] [varchar] (10) NULL,
[Gen__Prod__Posting_Group] [varchar] (10) NULL,
[Gross_Weight] [decimal] (38, 20) NULL,
[IC_Partner_Ref__Type] [int] NULL,
[IC_Partner_Reference] [varchar] (20) NULL,
[Indirect_Cost_%] [decimal] (38, 20) NULL,
[Insurance_No_] [varchar] (20) NULL,
[Inv__Discount_Amount] [decimal] (38, 20) NULL,
[Item_Category_Code] [varchar] (10) NULL,
[Job_No_] [varchar] (20) NULL,
[Line_Amount] [decimal] (38, 20) NULL,
[Line_Discount_%] [decimal] (38, 20) NULL,
[Line_Discount_Amount] [decimal] (38, 20) NULL,
[Line_No_] [int] NULL,
[Location_Code] [varchar] (10) NULL,
[Maintenance_Code] [varchar] (10) NULL,
[Net_Weight] [decimal] (38, 20) NULL,
[No_] [varchar] (20) NULL,
[No__of_Palet] [decimal] (38, 20) NULL,
[Nonstock] [tinyint] NULL,
[Operation_No_] [varchar] (10) NULL,
[Overhead_Rate] [decimal] (38, 20) NULL,
[Palet_Type] [varchar] (250) NULL,
[Palet_Weight] [decimal] (38, 20) NULL,
[Phase_Code] [varchar] (10) NULL,
[Posting_Group] [varchar] (10) NULL,
[Prod__Order_Line_No_] [int] NULL,
[Prod__Order_No_] [varchar] (20) NULL,
[Product_Group_Code] [varchar] (10) NULL,
[Purchasing_Code] [varchar] (10) NULL,
[Qty__per_Unit_of_Measure] [decimal] (38, 20) NULL,
[Quantity] [decimal] (38, 20) NULL,
[Quantity_(Base)] [decimal] (38, 20) NULL,
[Responsibility_Center] [varchar] (10) NULL,
[Return_Reason_Code] [varchar] (10) NULL,
[Routing_No_] [varchar] (20) NULL,
[Routing_Reference_No_] [int] NULL,
[Salvage_Value] [decimal] (38, 20) NULL,
[Shortcut_Dimension_1_Code] [varchar] (20) NULL,
[Shortcut_Dimension_2_Code] [varchar] (20) NULL,
[Step_Code] [varchar] (10) NULL,
[System-Created_Entry] [tinyint] NULL,
[Task_Code] [varchar] (10) NULL,
[Tax_Area_Code] [varchar] (20) NULL,
[Tax_Group_Code] [varchar] (10) NULL,
[Tax_Liable] [tinyint] NULL,
[Transaction_Specification] [varchar] (10) NULL,
[Transaction_Type] [varchar] (10) NULL,
[Transport_Method] [varchar] (10) NULL,
[Type] [int] NULL,
[Unit_Cost] [decimal] (38, 20) NULL,
[Unit_Cost_(LCY)] [decimal] (38, 20) NULL,
[Unit_Price_(LCY)] [decimal] (38, 20) NULL,
[Unit_Volume] [decimal] (38, 20) NULL,
[Unit_of_Measure] [varchar] (10) NULL,
[Unit_of_Measure_(Cross_Ref_)] [varchar] (10) NULL,
[Unit_of_Measure_Code] [varchar] (10) NULL,
[Units_per_Parcel] [decimal] (38, 20) NULL,
[Use_Duplication_List] [tinyint] NULL,
[Use_Tax] [tinyint] NULL,
[VAT_%] [decimal] (38, 20) NULL,
[VAT_Base_Amount] [decimal] (38, 20) NULL,
[VAT_Bus__Posting_Group] [varchar] (10) NULL,
[VAT_Calculation_Type] [int] NULL,
[VAT_Difference] [decimal] (38, 20) NULL,
[VAT_Identifier] [varchar] (10) NULL,
[VAT_Prod__Posting_Group] [varchar] (10) NULL,
[Variant_Code] [varchar] (10) NULL,
[Vendor_Item_No_] [varchar] (20) NULL,
[Work_Center_No_] [varchar] (20) NULL,
[timestamp] [timestamp] NOT NULL
)
GO
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Purchase Line Discount]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Purchase Line Discount]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Line Discount_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Line Discount_IsDuplicate] DEFAULT ((0)),
[Currency_Code] [varchar] (10) NULL,
[Ending_Date] [datetime] NULL,
[Item_No_] [varchar] (20) NULL,
[Line_Discount_%] [decimal] (38, 20) NULL,
[Minimum_Quantity] [decimal] (38, 20) NULL,
[Starting_Date] [datetime] NULL,
[Unit_of_Measure_Code] [varchar] (10) NULL,
[Variant_Code] [varchar] (10) NULL,
[Vendor_No_] [varchar] (20) NULL,
[timestamp] [timestamp] NOT NULL
)
GO
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Price]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Price]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Price_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchase Price_IsDuplicate] DEFAULT ((0)),
[Currency_Code] [varchar] (10) NULL,
[Direct_Unit_Cost] [decimal] (38, 20) NULL,
[Ending_Date] [datetime] NULL,
[Item_No_] [varchar] (20) NULL,
[Minimum_Quantity] [decimal] (38, 20) NULL,
[Starting_Date] [datetime] NULL,
[Unit_of_Measure_Code] [varchar] (10) NULL,
[Variant_Code] [varchar] (10) NULL,
[Vendor_No_] [varchar] (20) NULL,
[timestamp] [timestamp] NOT NULL
)
GO
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Purchases&PayablesSetup]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Purchases&PayablesSetup]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchases & Payables Setup_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Purchases & Payables Setup_IsDuplicate] DEFAULT ((0)),
[Allow_VAT_Difference] [tinyint] NULL,
[Appln__between_Currencies] [int] NULL,
[Blanket_Order_Nos_] [varchar] (10) NULL,
[Calc__Inv__Disc__per_VAT_ID] [tinyint] NULL,
[Calc__Inv__Discount] [tinyint] NULL,
[Copy_Cmts_Ret_Ord__to_Cr__Memo] [tinyint] NULL,
[Copy_Cmts_Ret_Ord__to_Ret_Shpt] [tinyint] NULL,
[Copy_Comments_Blanket_to_Order] [tinyint] NULL,
[Copy_Comments_Order_to_Invoice] [tinyint] NULL,
[Copy_Comments_Order_to_Receipt] [tinyint] NULL,
[Credit_Memo_Nos_] [varchar] (10) NULL,
[Custom_Invoice_No__Mandatory] [tinyint] NULL,
[Discount_Posting] [int] NULL,
[Exact_Cost_Reversing_Mandatory] [tinyint] NULL,
[Ext__Doc__No__Mandatory] [tinyint] NULL,
[Invoice_Nos_] [varchar] (10) NULL,
[Invoice_Rounding] [tinyint] NULL,
[Order_Nos_] [varchar] (10) NULL,
[Posted_Credit_Memo_Nos_] [varchar] (10) NULL,
[Posted_Invoice_Nos_] [varchar] (10) NULL,
[Posted_Receipt_Nos_] [varchar] (10) NULL,
[Posted_Return_Shpt__Nos_] [varchar] (10) NULL,
[Posted_Self-Invoice_Nos_] [varchar] (10) NULL,
[Posting_Desc__Code] [varchar] (10) NULL,
[Primary_Key] [varchar] (10) NULL,
[Quote_Nos_] [varchar] (10) NULL,
[Receipt_on_Invoice] [tinyint] NULL,
[Return_Order_Nos_] [varchar] (10) NULL,
[Return_Shipment_on_Credit_Memo] [tinyint] NULL,
[Vendor_Nos_] [varchar] (10) NULL,
[timestamp] [timestamp] NOT NULL
)
GO
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Salesperson_Purchaser]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Salesperson_Purchaser]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Salesperson_Purchaser_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Salesperson_Purchaser_IsDuplicate] DEFAULT ((0)),
[Code] [varchar] (10) NULL,
[Commission_%] [decimal] (38, 20) NULL,
[E-Mail] [varchar] (80) NULL,
[Empty_SalesPerson_Purch_Code] [tinyint] NULL,
[Enable_Synchronization] [tinyint] NULL,
[Global_Dimension_1_Code] [varchar] (20) NULL,
[Global_Dimension_2_Code] [varchar] (20) NULL,
[Job_Title] [varchar] (30) NULL,
[Name] [varchar] (50) NULL,
[Navision_User_ID] [varchar] (20) NULL,
[Notify_about_Appmt__Changes] [tinyint] NULL,
[Notify_about_Contact_Changes] [tinyint] NULL,
[Notify_about_Task_Changes] [tinyint] NULL,
[Notify_about_Team_To-do_Chgs_] [tinyint] NULL,
[Outlook_Calendar_Folder_Path] [varchar] (250) NULL,
[Outlook_Calendar_FolderID] [image] NULL,
[Outlook_Calendar_StoreID] [image] NULL,
[Outlook_Contacts_Folder_Path] [varchar] (250) NULL,
[Outlook_Contacts_FolderID] [image] NULL,
[Outlook_Contacts_StoreID] [image] NULL,
[Outlook_Profile_Name] [varchar] (80) NULL,
[Outlook_Tasks_Folder_Path] [varchar] (250) NULL,
[Outlook_Tasks_FolderID] [image] NULL,
[Outlook_Tasks_StoreID] [image] NULL,
[Outlook_User_Name] [varchar] (80) NULL,
[Phone_No_] [varchar] (30) NULL,
[Search_E-Mail] [varchar] (80) NULL,
[Synchronize_From] [varchar] (32) NULL,
[Synchronize_To] [varchar] (32) NULL,
[Synchronize_To-dos] [int] NULL,
[Version_No_] [int] NULL,
[timestamp] [timestamp] NOT NULL
)
GO
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Standard Purchase Code]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Standard Purchase Code]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Standard Purchase Code_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Standard Purchase Code_IsDuplicate] DEFAULT ((0)),
[Code] [varchar] (10) NULL,
[Currency_Code] [varchar] (10) NULL,
[Description] [varchar] (50) NULL,
[timestamp] [timestamp] NOT NULL
)
GO
PRINT N'Creating [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Standard Purchase Line]'
GO
CREATE TABLE [tsa].[ics_land_Navision_Rom_Live Icopal Romania$Standard Purchase Line]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Standard Purchase Line_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_Rom_Live Icopal Romania1812$Standard Purchase Line_IsDuplicate] DEFAULT ((0)),
[Amount_Excl__VAT] [decimal] (38, 20) NULL,
[Description] [varchar] (50) NULL,
[Line_No_] [int] NULL,
[No_] [varchar] (20) NULL,
[Quantity] [decimal] (38, 20) NULL,
[Shortcut_Dimension_1_Code] [varchar] (20) NULL,
[Shortcut_Dimension_2_Code] [varchar] (20) NULL,
[Standard_Purchase_Code] [varchar] (10) NULL,
[Type] [int] NULL,
[Unit_of_Measure_Code] [varchar] (10) NULL,
[Variant_Code] [varchar] (10) NULL,
[timestamp] [timestamp] NOT NULL
)
GO
