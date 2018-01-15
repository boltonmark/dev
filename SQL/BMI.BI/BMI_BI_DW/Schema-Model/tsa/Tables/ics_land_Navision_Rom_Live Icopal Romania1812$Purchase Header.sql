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
