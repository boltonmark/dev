CREATE TABLE [tsa].[ics_land_Navision_BGR_Icopal Bulgaria$Purchase Line]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_BGR_Icopal Bulgaria$Purchase Line_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Navision_BGR_Icopal Bulgaria$Purchase Line_IsDuplicate] DEFAULT ((0)),
[Allow Invoice Disc_] [tinyint] NULL,
[Allow Item Charge Assignment] [tinyint] NULL,
[Amount] [decimal] (38, 20) NULL,
[Amount Including VAT] [decimal] (38, 20) NULL,
[Amt_ Rcd_ Not Invoiced] [decimal] (38, 20) NULL,
[Amt_ Rcd_ Not Invoiced (LCY)] [decimal] (38, 20) NULL,
[Appl_-to Item Entry] [int] NULL,
[Area] [varchar] (10) NULL,
[Attached to Line No_] [int] NULL,
[Bin Code] [varchar] (20) NULL,
[Blanket Order Line No_] [int] NULL,
[Blanket Order No_] [varchar] (20) NULL,
[Budgeted FA No_] [varchar] (20) NULL,
[Buy-from Vendor No_] [varchar] (20) NULL,
[Completely Received] [tinyint] NULL,
[Cross-Reference No_] [varchar] (20) NULL,
[Cross-Reference Type] [int] NULL,
[Cross-Reference Type No_] [varchar] (30) NULL,
[Currency Code] [varchar] (10) NULL,
[Depr_ Acquisition Cost] [tinyint] NULL,
[Depr_ until FA Posting Date] [tinyint] NULL,
[Depreciation Book Code] [varchar] (10) NULL,
[Description] [varchar] (50) NULL,
[Description 2] [varchar] (50) NULL,
[Direct Unit Cost] [decimal] (38, 20) NULL,
[Document No_] [varchar] (20) NULL,
[Document Type] [int] NULL,
[Drop Shipment] [tinyint] NULL,
[Duplicate in Depreciation Book] [varchar] (10) NULL,
[Entry Point] [varchar] (10) NULL,
[Expected Receipt Date] [datetime] NULL,
[FA Posting Date] [datetime] NULL,
[FA Posting Type] [int] NULL,
[Finished] [tinyint] NULL,
[Gen_ Bus_ Posting Group] [varchar] (10) NULL,
[Gen_ Prod_ Posting Group] [varchar] (10) NULL,
[Gross Weight] [decimal] (38, 20) NULL,
[IC Partner Code] [varchar] (20) NULL,
[IC Partner Ref_ Type] [int] NULL,
[IC Partner Reference] [varchar] (20) NULL,
[Inbound Whse_ Handling Time] [varchar] (32) NULL,
[Indirect Cost %] [decimal] (38, 20) NULL,
[Insurance No_] [varchar] (20) NULL,
[Inv_ Disc_ Amount to Invoice] [decimal] (38, 20) NULL,
[Inv_ Discount Amount] [decimal] (38, 20) NULL,
[Item Category Code] [varchar] (10) NULL,
[Job Currency Code] [varchar] (20) NULL,
[Job Currency Factor] [decimal] (38, 20) NULL,
[Job Line Amount] [decimal] (38, 20) NULL,
[Job Line Amount (LCY)] [decimal] (38, 20) NULL,
[Job Line Disc_ Amount (LCY)] [decimal] (38, 20) NULL,
[Job Line Discount %] [decimal] (38, 20) NULL,
[Job Line Discount Amount] [decimal] (38, 20) NULL,
[Job Line Type] [int] NULL,
[Job No_] [varchar] (20) NULL,
[Job Task No_] [varchar] (20) NULL,
[Job Total Price] [decimal] (38, 20) NULL,
[Job Total Price (LCY)] [decimal] (38, 20) NULL,
[Job Unit Price] [decimal] (38, 20) NULL,
[Job Unit Price (LCY)] [decimal] (38, 20) NULL,
[Lead Time Calculation] [varchar] (32) NULL,
[Line Amount] [decimal] (38, 20) NULL,
[Line Discount %] [decimal] (38, 20) NULL,
[Line Discount Amount] [decimal] (38, 20) NULL,
[Line No_] [int] NULL,
[Location Code] [varchar] (10) NULL,
[Maintenance Code] [varchar] (10) NULL,
[MPS Order] [tinyint] NULL,
[Net Weight] [decimal] (38, 20) NULL,
[No_] [varchar] (20) NULL,
[Nonstock] [tinyint] NULL,
[Operation No_] [varchar] (10) NULL,
[Order Date] [datetime] NULL,
[Outstanding Amount] [decimal] (38, 20) NULL,
[Outstanding Amount (LCY)] [decimal] (38, 20) NULL,
[Outstanding Qty_ (Base)] [decimal] (38, 20) NULL,
[Outstanding Quantity] [decimal] (38, 20) NULL,
[Overhead Rate] [decimal] (38, 20) NULL,
[Pay-to Vendor No_] [varchar] (20) NULL,
[Planned Receipt Date] [datetime] NULL,
[Planning Flexibility] [int] NULL,
[Posting Group] [varchar] (10) NULL,
[Prepayment %] [decimal] (38, 20) NULL,
[Prepayment Amount] [decimal] (38, 20) NULL,
[Prepayment Line] [tinyint] NULL,
[Prepayment Tax Area Code] [varchar] (20) NULL,
[Prepayment Tax Group Code] [varchar] (10) NULL,
[Prepayment Tax Liable] [tinyint] NULL,
[Prepayment VAT %] [decimal] (38, 20) NULL,
[Prepayment VAT Identifier] [varchar] (10) NULL,
[Prepmt Amt Deducted] [decimal] (38, 20) NULL,
[Prepmt Amt to Deduct] [decimal] (38, 20) NULL,
[Prepmt_ Amount Inv_ Incl_ VAT] [decimal] (38, 20) NULL,
[Prepmt_ Amt_ Incl_ VAT] [decimal] (38, 20) NULL,
[Prepmt_ Amt_ Inv_] [decimal] (38, 20) NULL,
[Prepmt_ Line Amount] [decimal] (38, 20) NULL,
[Prepmt_ VAT Base Amt_] [decimal] (38, 20) NULL,
[Prepmt_ VAT Calc_ Type] [int] NULL,
[Prod_ Order Line No_] [int] NULL,
[Prod_ Order No_] [varchar] (20) NULL,
[Product Group Code] [varchar] (10) NULL,
[Profit %] [decimal] (38, 20) NULL,
[Promised Receipt Date] [datetime] NULL,
[Purchasing Code] [varchar] (10) NULL,
[Qty_ Invoiced (Base)] [decimal] (38, 20) NULL,
[Qty_ per Unit of Measure] [decimal] (38, 20) NULL,
[Qty_ Rcd_ Not Invoiced] [decimal] (38, 20) NULL,
[Qty_ Rcd_ Not Invoiced (Base)] [decimal] (38, 20) NULL,
[Qty_ Received (Base)] [decimal] (38, 20) NULL,
[Qty_ to Invoice] [decimal] (38, 20) NULL,
[Qty_ to Invoice (Base)] [decimal] (38, 20) NULL,
[Qty_ to Receive] [decimal] (38, 20) NULL,
[Qty_ to Receive (Base)] [decimal] (38, 20) NULL,
[Quantity] [decimal] (38, 20) NULL,
[Quantity (Base)] [decimal] (38, 20) NULL,
[Quantity Invoiced] [decimal] (38, 20) NULL,
[Quantity Received] [decimal] (38, 20) NULL,
[Receipt Line No_] [int] NULL,
[Receipt No_] [varchar] (20) NULL,
[Requested Receipt Date] [datetime] NULL,
[Responsibility Center] [varchar] (10) NULL,
[Ret_ Qty_ Shpd Not Invd_(Base)] [decimal] (38, 20) NULL,
[Return Qty_ Shipped] [decimal] (38, 20) NULL,
[Return Qty_ Shipped (Base)] [decimal] (38, 20) NULL,
[Return Qty_ Shipped Not Invd_] [decimal] (38, 20) NULL,
[Return Qty_ to Ship] [decimal] (38, 20) NULL,
[Return Qty_ to Ship (Base)] [decimal] (38, 20) NULL,
[Return Reason Code] [varchar] (10) NULL,
[Return Shipment Line No_] [int] NULL,
[Return Shipment No_] [varchar] (20) NULL,
[Return Shpd_ Not Invd_] [decimal] (38, 20) NULL,
[Return Shpd_ Not Invd_ (LCY)] [decimal] (38, 20) NULL,
[Routing No_] [varchar] (20) NULL,
[Routing Reference No_] [int] NULL,
[Safety Lead Time] [varchar] (32) NULL,
[Sales Order Line No_] [int] NULL,
[Sales Order No_] [varchar] (20) NULL,
[Salvage Value] [decimal] (38, 20) NULL,
[Shortcut Dimension 1 Code] [varchar] (20) NULL,
[Shortcut Dimension 2 Code] [varchar] (20) NULL,
[Special Order] [tinyint] NULL,
[Special Order Sales Line No_] [int] NULL,
[Special Order Sales No_] [varchar] (20) NULL,
[System-Created Entry] [tinyint] NULL,
[Tax Area Code] [varchar] (20) NULL,
[Tax Group Code] [varchar] (10) NULL,
[Tax Liable] [tinyint] NULL,
[timestamp] [varbinary] (max) NULL,
[Transaction Specification] [varchar] (10) NULL,
[Transaction Type] [varchar] (10) NULL,
[Transport Method] [varchar] (10) NULL,
[Type] [int] NULL,
[Unit Cost] [decimal] (38, 20) NULL,
[Unit Cost (LCY)] [decimal] (38, 20) NULL,
[Unit of Measure] [varchar] (10) NULL,
[Unit of Measure (Cross Ref_)] [varchar] (10) NULL,
[Unit of Measure Code] [varchar] (10) NULL,
[Unit Price (LCY)] [decimal] (38, 20) NULL,
[Unit Volume] [decimal] (38, 20) NULL,
[Units per Parcel] [decimal] (38, 20) NULL,
[Use Duplication List] [tinyint] NULL,
[Use Tax] [tinyint] NULL,
[Variant Code] [varchar] (10) NULL,
[VAT %] [decimal] (38, 20) NULL,
[VAT Base Amount] [decimal] (38, 20) NULL,
[VAT Bus_ Posting Group] [varchar] (10) NULL,
[VAT Calculation Type] [int] NULL,
[VAT Difference] [decimal] (38, 20) NULL,
[VAT Identifier] [varchar] (10) NULL,
[VAT Prod_ Posting Group] [varchar] (10) NULL,
[Vendor Item No_] [varchar] (20) NULL,
[Work Center No_] [varchar] (20) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_Navision_BGR_Icopal Bulgaria$Purchase Line_1] ON [tsa].[ics_land_Navision_BGR_Icopal Bulgaria$Purchase Line] ([Document No_], [Document Type], [Line No_])
GO
