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
