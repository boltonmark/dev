CREATE TABLE [tsa].[ics_land_Navision_BGR_Purch_And_Payables_Setup]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_BGR_Purch_And_Payables_Setup_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_BGR_Purch_And_Payables_Setup_IsDuplicate] DEFAULT ((0)),
[Allow_VAT_Difference] [tinyint] NULL,
[Appln__between_Currencies] [int] NULL,
[Archive_Quotes_and_Orders] [tinyint] NULL,
[Blanket_Order_Nos_] [varchar] (10) NULL,
[Calc__Inv__Disc__per_VAT_ID] [tinyint] NULL,
[Calc__Inv__Discount] [tinyint] NULL,
[Check_Prepmt__when_Posting] [tinyint] NULL,
[Copy_Cmts_Ret_Ord__to_Cr__Memo] [tinyint] NULL,
[Copy_Cmts_Ret_Ord__to_Ret_Shpt] [tinyint] NULL,
[Copy_Comments_Blanket_to_Order] [tinyint] NULL,
[Copy_Comments_Order_to_Invoice] [tinyint] NULL,
[Copy_Comments_Order_to_Receipt] [tinyint] NULL,
[Credit_Memo_Nos_] [varchar] (10) NULL,
[Default_Posting_Date] [int] NULL,
[Default_Qty__to_Ship_Rcv_] [int] NULL,
[Discount_Posting] [int] NULL,
[EU_VAT_Bus__Posting_Group] [varchar] (20) NULL,
[Exact_Cost_Reversing_Mandatory] [tinyint] NULL,
[Ext__Doc__No__Mandatory] [tinyint] NULL,
[Intr__Jnl__Incl__Item_Charges] [tinyint] NULL,
[Invoice_Nos_] [varchar] (10) NULL,
[Invoice_Rounding] [tinyint] NULL,
[Order_Nos_] [varchar] (10) NULL,
[Posted_Credit_Memo_Nos_] [varchar] (10) NULL,
[Posted_Invoice_Nos_] [varchar] (10) NULL,
[Posted_Prepmt__Cr__Memo_Nos_] [varchar] (10) NULL,
[Posted_Prepmt__Inv__Nos_] [varchar] (10) NULL,
[Posted_Receipt_Nos_] [varchar] (10) NULL,
[Posted_Return_Shpt__Nos_] [varchar] (10) NULL,
[Posted_Unreal__VAT_Prot__Nos_] [varchar] (20) NULL,
[Primary_Key] [varchar] (10) NULL,
[Protokol_VAT_Bus__Post__Group] [varchar] (20) NULL,
[Quote_Nos_] [varchar] (10) NULL,
[Receipt_on_Invoice] [tinyint] NULL,
[Return_Order_Nos_] [varchar] (10) NULL,
[Return_Shipment_on_Credit_Memo] [tinyint] NULL,
[timestamp] [varbinary] (max) NULL,
[Unreal__VAT_Prot__Nos_] [varchar] (20) NULL,
[Vendor_Nos_] [varchar] (10) NULL
)
GO