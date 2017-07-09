CREATE TABLE [qvstg].[Invoice]
(
[InvoiceKey] [int] NOT NULL,
[IsDeleted] [char] (1) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[EtlUpdatedOn] [datetime] NOT NULL,
[EtlUpdatedBy] [varchar] (200) NOT NULL,
[EtlDeletedOn] [datetime] NULL,
[EtlDeletedBy] [varchar] (200) NULL,
[DataSourceKey] [int] NOT NULL,
[QlikViewInvoiceKey] [nvarchar] (50) NOT NULL,
[LineCount] [int] NOT NULL,
[InvoiceDateKey] [int] NOT NULL,
[InvoiceDate] [datetime] NOT NULL,
[InvoiceNumber] [nvarchar] (20) NOT NULL,
[InvoiceLineNumber] [int] NOT NULL,
[NativeInvoiceLineNumber] [nvarchar] (20) NOT NULL,
[OrderNumber] [nvarchar] (20) NOT NULL,
[OrderLineNumber] [int] NOT NULL,
[NativeOrderLineNumber] [nvarchar] (20) NOT NULL,
[NativeInvoiceType] [nvarchar] (1) NOT NULL,
[InvoiceTypeName] [nvarchar] (29) NOT NULL,
[LocalSellingSite] [nvarchar] (20) NOT NULL,
[SiteKey] [int] NOT NULL,
[ProductKey] [int] NOT NULL,
[SoldToCustomerKey] [int] NOT NULL,
[ShippedToCustomerKey] [int] NOT NULL,
[NativeSalesPersonId] [nvarchar] (20) NOT NULL,
[NativeSalesPersonName] [nvarchar] (100) NOT NULL,
[DeliveryDateKey] [int] NOT NULL,
[DeliveryDate] [datetime] NULL,
[ExpectedPaymentDateKey] [int] NOT NULL,
[ExpectedPaymentDate] [datetime] NULL,
[ActualPaymentDateKey] [int] NOT NULL,
[ActualPaymentDate] [datetime] NULL,
[LocalDeliveryTerm] [nvarchar] (20) NOT NULL,
[LocalDeliveryTermText] [nvarchar] (100) NOT NULL,
[PaymentTermKey] [int] NOT NULL,
[LocalPaymentTerm] [nvarchar] (20) NOT NULL,
[LocalPaymentTermText] [nvarchar] (100) NOT NULL,
[InvoiceQuantityValue] [decimal] (12, 2) NULL,
[InvoiceQuantityUnitOfMeasure] [nvarchar] (20) NOT NULL,
[StatisticQuantityValue] [decimal] (12, 2) NULL,
[StatisticQuantityUnitOfMeasure] [nvarchar] (20) NOT NULL,
[Quantity] [decimal] (12, 2) NULL,
[LocalUnitOfMeasure] [nvarchar] (20) NOT NULL,
[LocalUnitOfMeasureHarmonised] [nvarchar] (20) NOT NULL,
[LocalUnitOfMeasureFactor] [decimal] (11, 4) NULL,
[InvoiceAmount] [decimal] (15, 4) NULL,
[LocalAmount] [decimal] (15, 4) NULL,
[GroupAmountEUR] [decimal] (15, 4) NULL,
[InvoiceCurrency] [nvarchar] (3) NOT NULL,
[LocalCurrency] [nvarchar] (3) NOT NULL,
[LineDiscountAmount] [decimal] (15, 4) NULL,
[InvoiceDiscountAmount] [decimal] (15, 4) NULL,
[LineBonusAmount] [decimal] (15, 4) NULL,
[BonusShareAmount] [decimal] (15, 4) NULL,
[StandardCost] [decimal] (15, 4) NULL,
[StandardFreight] [decimal] (15, 4) NULL
)
GO
ALTER TABLE [qvstg].[Invoice] ADD CONSTRAINT [CK_qvstg_Invoice_IsDeleted] CHECK (([IsDeleted]='Y' OR [IsDeleted]='N'))
GO
ALTER TABLE [qvstg].[Invoice] ADD CONSTRAINT [PK_qvstg_Invoice] PRIMARY KEY CLUSTERED  ([InvoiceKey])
GO
ALTER TABLE [qvstg].[Invoice] ADD CONSTRAINT [AK_qvstg_Invoice_UniqueifiedBusinessKey] UNIQUE NONCLUSTERED  ([DataSourceKey], [InvoiceNumber], [OrderNumber], [NativeInvoiceLineNumber], [NativeOrderLineNumber])
GO
ALTER TABLE [qvstg].[Invoice] ADD CONSTRAINT [AK_qvstg_Invoice_DataSourceKey_QlikViewInvoiceKey] UNIQUE NONCLUSTERED  ([DataSourceKey], [QlikViewInvoiceKey])
GO
