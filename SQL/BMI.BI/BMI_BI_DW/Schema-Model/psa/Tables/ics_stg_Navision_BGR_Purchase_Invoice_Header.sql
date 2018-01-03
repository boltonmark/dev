CREATE TABLE [psa].[ics_stg_Navision_BGR_Purchase_Invoice_Header]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Navision_BGR_Purchase_Invoice_Header_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Navision_BGR_Purchase_Invoice_Header_IsIncomplete] DEFAULT ('N'),
[timestamp] [varbinary] (8) NULL,
[No_] [varchar] (20) NOT NULL,
[Buy-from Vendor No_] [varchar] (20) NULL,
[Pay-to Vendor No_] [varchar] (20) NULL,
[Pay-to Name] [varchar] (50) NULL,
[Pay-to Name 2] [varchar] (50) NULL,
[Pay-to Address] [varchar] (50) NULL,
[Pay-to Address 2] [varchar] (50) NULL,
[Pay-to City] [varchar] (30) NULL,
[Pay-to Contact] [varchar] (50) NULL,
[Your Reference] [varchar] (30) NULL,
[Ship-to Code] [varchar] (10) NULL,
[Ship-to Name] [varchar] (50) NULL,
[Ship-to Name 2] [varchar] (50) NULL,
[Ship-to Address] [varchar] (50) NULL,
[Ship-to Address 2] [varchar] (50) NULL,
[Ship-to City] [varchar] (30) NULL,
[Ship-to Contact] [varchar] (50) NULL,
[Order Date] [datetime] NULL,
[Posting Date] [datetime] NULL,
[Expected Receipt Date] [datetime] NULL,
[Posting Description] [varchar] (50) NULL,
[Payment Terms Code] [varchar] (10) NULL,
[Due Date] [datetime] NULL,
[Payment Discount %] [decimal] (38, 20) NULL,
[Pmt_ Discount Date] [datetime] NULL,
[Shipment Method Code] [varchar] (10) NULL,
[Location Code] [varchar] (10) NULL,
[Shortcut Dimension 1 Code] [varchar] (20) NULL,
[Shortcut Dimension 2 Code] [varchar] (20) NULL,
[Vendor Posting Group] [varchar] (10) NULL,
[Currency Code] [varchar] (10) NULL,
[Currency Factor] [decimal] (38, 20) NULL,
[Prices Including VAT] [tinyint] NULL,
[Invoice Disc_ Code] [varchar] (20) NULL,
[Language Code] [varchar] (10) NULL,
[Purchaser Code] [varchar] (10) NULL,
[Order No_] [varchar] (20) NULL,
[No_ Printed] [int] NULL,
[On Hold] [varchar] (3) NULL,
[Applies-to Doc_ Type] [int] NULL,
[Applies-to Doc_ No_] [varchar] (20) NULL,
[Bal_ Account No_] [varchar] (20) NULL,
[Vendor Order No_] [varchar] (20) NULL,
[Vendor Invoice No_] [varchar] (20) NULL,
[VAT Registration No_] [varchar] (20) NULL,
[Sell-to Customer No_] [varchar] (20) NULL,
[Reason Code] [varchar] (10) NULL,
[Gen_ Bus_ Posting Group] [varchar] (10) NULL,
[Transaction Type] [varchar] (10) NULL,
[Transport Method] [varchar] (10) NULL,
[VAT Country_Region Code] [varchar] (10) NULL,
[Buy-from Vendor Name] [varchar] (50) NULL,
[Buy-from Vendor Name 2] [varchar] (50) NULL,
[Buy-from Address] [varchar] (50) NULL,
[Buy-from Address 2] [varchar] (50) NULL,
[Buy-from City] [varchar] (30) NULL,
[Buy-from Contact] [varchar] (50) NULL,
[Pay-to Post Code] [varchar] (20) NULL,
[Pay-to County] [varchar] (30) NULL,
[Pay-to Country_Region Code] [varchar] (10) NULL,
[Buy-from Post Code] [varchar] (20) NULL,
[Buy-from County] [varchar] (30) NULL,
[Buy-from Country_Region Code] [varchar] (10) NULL,
[Ship-to Post Code] [varchar] (20) NULL,
[Ship-to County] [varchar] (30) NULL,
[Ship-to Country_Region Code] [varchar] (10) NULL,
[Bal_ Account Type] [int] NULL,
[Order Address Code] [varchar] (10) NULL,
[Entry Point] [varchar] (10) NULL,
[Correction] [tinyint] NULL,
[Document Date] [datetime] NULL,
[Area] [varchar] (10) NULL,
[Transaction Specification] [varchar] (10) NULL,
[Payment Method Code] [varchar] (10) NULL,
[Pre-Assigned No_ Series] [varchar] (10) NULL,
[No_ Series] [varchar] (10) NULL,
[Order No_ Series] [varchar] (10) NULL,
[Pre-Assigned No_] [varchar] (20) NULL,
[User ID] [varchar] (20) NULL,
[Source Code] [varchar] (10) NULL,
[Tax Area Code] [varchar] (20) NULL,
[Tax Liable] [tinyint] NULL,
[VAT Bus_ Posting Group] [varchar] (10) NULL,
[VAT Base Discount %] [decimal] (38, 20) NULL,
[Prepayment No_ Series] [varchar] (10) NULL,
[Prepayment Invoice] [tinyint] NULL,
[Prepayment Order No_] [varchar] (20) NULL,
[Quote No_] [varchar] (20) NULL,
[Campaign No_] [varchar] (20) NULL,
[Buy-from Contact No_] [varchar] (20) NULL,
[Pay-to Contact No_] [varchar] (20) NULL,
[Responsibility Center] [varchar] (10) NULL,
[Identification No_] [varchar] (13) NULL,
[Customs Declaration No_] [varchar] (10) NULL,
[Debit Memo] [tinyint] NULL,
[To Invoice No_] [varchar] (20) NULL,
[To Invoice Date] [datetime] NULL,
[Void] [tinyint] NULL,
[Void Date] [datetime] NULL,
[VAT Subject] [varchar] (30) NULL,
[Sales Protocol] [tinyint] NULL,
[Do not include in VAT Ledgers] [tinyint] NULL,
[VAT Settlement Date] [datetime] NULL,
[VAT Exempt Ground] [varchar] (10) NULL,
[Composed By] [varchar] (30) NULL,
[VAT Protocol] [tinyint] NULL,
[Date Received] [datetime] NULL,
[Time Received] [datetime] NULL,
[BizTalk Purchase Invoice] [tinyint] NULL,
[Unrealized VAT] [tinyint] NULL
)
GO
ALTER TABLE [psa].[ics_stg_Navision_BGR_Purchase_Invoice_Header] ADD CONSTRAINT [PK_psa_ics_stg_Navision_BGR_Purchase_Invoice_Header] PRIMARY KEY CLUSTERED  ([No_])
GO
