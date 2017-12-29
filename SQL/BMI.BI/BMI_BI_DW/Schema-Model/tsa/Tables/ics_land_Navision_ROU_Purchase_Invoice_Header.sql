CREATE TABLE [tsa].[ics_land_Navision_ROU_Purchase_Invoice_Header]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_ROU_Purchase_Invoice_Header_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_ROU_Purchase_Invoice_Header_IsDuplicate] DEFAULT ((0)),
[Applies-to Doc_ No_] [varchar] (20) NULL,
[Applies-to Doc_ Type] [int] NULL,
[Area] [varchar] (10) NULL,
[Bal_ Account No_] [varchar] (20) NULL,
[Bal_ Account Type] [int] NULL,
[BizTalk Purchase Invoice] [tinyint] NULL,
[Buy-from Address] [varchar] (30) NULL,
[Buy-from Address 2] [varchar] (30) NULL,
[Buy-from City] [varchar] (30) NULL,
[Buy-from Contact] [varchar] (30) NULL,
[Buy-from Contact No_] [varchar] (20) NULL,
[Buy-from Country Code] [varchar] (10) NULL,
[Buy-from County] [varchar] (30) NULL,
[Buy-from Post Code] [varchar] (20) NULL,
[Buy-from Vendor Name] [varchar] (30) NULL,
[Buy-from Vendor Name 2] [varchar] (30) NULL,
[Buy-from Vendor No_] [varchar] (20) NULL,
[Correction] [tinyint] NULL,
[Currency Code] [varchar] (10) NULL,
[Currency Factor] [decimal] (38, 20) NULL,
[Custom Invoice No_] [varchar] (20) NULL,
[Date Received] [datetime] NULL,
[Document Date] [datetime] NULL,
[Due Date] [datetime] NULL,
[Entry Point] [varchar] (10) NULL,
[EU 3-Party Trade] [tinyint] NULL,
[Expected Receipt Date] [datetime] NULL,
[Gen_ Bus_ Posting Group] [varchar] (10) NULL,
[Invoice Disc_ Code] [varchar] (20) NULL,
[Job No_] [varchar] (20) NULL,
[Language Code] [varchar] (10) NULL,
[Location Code] [varchar] (10) NULL,
[No_] [varchar] (20) NOT NULL,
[No_ Printed] [int] NULL,
[No_ Series] [varchar] (10) NULL,
[Not Declaration 394] [tinyint] NULL,
[On Hold] [varchar] (3) NULL,
[Order Address Code] [varchar] (10) NULL,
[Order Date] [datetime] NULL,
[Order No_] [varchar] (20) NULL,
[Order No_ Series] [varchar] (10) NULL,
[Payment Discount %] [decimal] (38, 20) NULL,
[Payment Method Code] [varchar] (10) NULL,
[Payment Terms Code] [varchar] (10) NULL,
[Pay-to Address] [varchar] (30) NULL,
[Pay-to Address 2] [varchar] (30) NULL,
[Pay-to City] [varchar] (30) NULL,
[Pay-to Contact] [varchar] (30) NULL,
[Pay-to Contact No_] [varchar] (20) NULL,
[Pay-to Country Code] [varchar] (10) NULL,
[Pay-to County] [varchar] (30) NULL,
[Pay-to Name] [varchar] (30) NULL,
[Pay-to Name 2] [varchar] (30) NULL,
[Pay-to Post Code] [varchar] (20) NULL,
[Pay-to Vendor No_] [varchar] (20) NULL,
[Pmt_ Discount Date] [datetime] NULL,
[Posting Date] [datetime] NULL,
[Posting Description] [varchar] (50) NULL,
[Pre-Assigned No_] [varchar] (20) NULL,
[Pre-Assigned No_ Series] [varchar] (10) NULL,
[Prices Including VAT] [tinyint] NULL,
[Purchaser Code] [varchar] (10) NULL,
[Reason Code] [varchar] (10) NULL,
[Responsibility Center] [varchar] (10) NULL,
[Sell-to Customer No_] [varchar] (20) NULL,
[Shipment Method Code] [varchar] (10) NULL,
[Ship-to Address] [varchar] (30) NULL,
[Ship-to Address 2] [varchar] (30) NULL,
[Ship-to City] [varchar] (30) NULL,
[Ship-to Code] [varchar] (10) NULL,
[Ship-to Contact] [varchar] (30) NULL,
[Ship-to Country Code] [varchar] (10) NULL,
[Ship-to County] [varchar] (30) NULL,
[Ship-to Name] [varchar] (30) NULL,
[Ship-to Name 2] [varchar] (30) NULL,
[Ship-to Post Code] [varchar] (20) NULL,
[Shortcut Dimension 1 Code] [varchar] (20) NULL,
[Shortcut Dimension 2 Code] [varchar] (20) NULL,
[Source Code] [varchar] (10) NULL,
[Tax Area Code] [varchar] (20) NULL,
[Tax Liable] [tinyint] NULL,
[Time Received] [datetime] NULL,
[timestamp] [varbinary] (8) NULL,
[Transaction Specification] [varchar] (10) NULL,
[Transaction Type] [varchar] (10) NULL,
[Transport Method] [varchar] (10) NULL,
[User ID] [varchar] (20) NULL,
[VAT Base Discount %] [decimal] (38, 20) NULL,
[VAT Bus_ Posting Group] [varchar] (10) NULL,
[VAT Country Code] [varchar] (10) NULL,
[VAT Registration No_] [varchar] (20) NULL,
[Vendor Invoice No_] [varchar] (20) NULL,
[Vendor Order No_] [varchar] (20) NULL,
[Vendor Posting Group] [varchar] (10) NULL,
[Your Reference] [varchar] (30) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_Navision_ROU_Purchase_Invoice_Header] ON [tsa].[ics_land_Navision_ROU_Purchase_Invoice_Header] ([No_])
GO
