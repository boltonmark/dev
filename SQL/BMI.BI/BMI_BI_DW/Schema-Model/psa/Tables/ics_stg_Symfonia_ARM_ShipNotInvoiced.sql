CREATE TABLE [psa].[ics_stg_Symfonia_ARM_ShipNotInvoiced]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_ARM_ShipNotInvoiced_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_ARM_ShipNotInvoiced_IsIncomplete] DEFAULT ('N'),
[AmountLocal] [float] NULL,
[Bonus] [varchar] (1) NULL,
[ExpectedInvDate] [datetime] NULL,
[id] [int] NULL,
[InvoiceLineType] [varchar] (1) NULL,
[InvoiceShipTo] [varchar] (4) NULL,
[InvoiceSoldTo] [varchar] (4) NULL,
[ItemNo] [varchar] (40) NULL,
[ItemQty] [float] NULL,
[ItemUOM] [varchar] (8) NULL,
[LineBonus] [varchar] (1) NULL,
[lineid] [int] NULL,
[LocalCurrency] [varchar] (3) NULL,
[OrderCurrency] [varchar] (3) NULL,
[OrderLineAmount] [float] NULL,
[OrderLineNr] [smallint] NULL,
[OrderNr] [varchar] (80) NULL,
[SalesCompanyId] [int] NULL,
[SalesPersonId] [int] NULL,
[SalesPersonName] [nvarchar] (128) NULL,
[ShippingDokNr] [varchar] (40) NULL,
[StatItemQty] [float] NULL,
[StatItemUOM] [varchar] (8) NULL,
[SysId] [int] NULL
)
GO
