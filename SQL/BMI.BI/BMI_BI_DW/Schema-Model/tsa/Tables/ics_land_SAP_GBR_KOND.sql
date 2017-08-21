CREATE TABLE [tsa].[ics_land_SAP_GBR_KOND]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_GBR_KOND_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_GBR_KOND_IsDuplicate] DEFAULT ((0)),
[MANDT] [nvarchar] (3) NULL,
[KNUMD] [nvarchar] (10) NULL,
[ZUSKO] [nvarchar] (2) NULL,
[KSCHL] [nvarchar] (4) NULL,
[ERNAM] [nvarchar] (12) NULL,
[ERDAT] [datetime] NULL,
[KNUMB] [nvarchar] (10) NULL,
[KNUMK] [nvarchar] (10) NULL,
[KNUMT] [nvarchar] (10) NULL,
[KNUMS] [nvarchar] (10) NULL,
[KNUM1] [nvarchar] (10) NULL,
[STFKZ] [nvarchar] (1) NULL,
[KZBZG] [nvarchar] (1) NULL,
[KONBE] [nvarchar] (5) NULL,
[KNUM2] [nvarchar] (10) NULL,
[STFK2] [nvarchar] (1) NULL,
[KZBZ2] [nvarchar] (1) NULL,
[KONB2] [nvarchar] (5) NULL,
[KRECH] [nvarchar] (1) NULL,
[KONWA] [nvarchar] (5) NULL,
[KMEIN] [nvarchar] (3) NULL,
[KPEIN] [decimal] (5, 0) NULL,
[KUMZA] [decimal] (5, 0) NULL,
[KUMNE] [decimal] (5, 0) NULL,
[KWAEH] [nvarchar] (5) NULL,
[KSKTO] [nvarchar] (1) NULL,
[KNTYP] [nvarchar] (1) NULL,
[KMWST] [nvarchar] (2) NULL,
[KSTAT] [nvarchar] (1) NULL,
[KNPRS] [nvarchar] (1) NULL,
[KRUEK] [nvarchar] (1) NULL,
[KRELI] [nvarchar] (1) NULL,
[KMANU] [nvarchar] (1) NULL,
[KGRPE] [nvarchar] (1) NULL,
[KAUFT] [nvarchar] (1) NULL,
[MXWRT] [decimal] (11, 2) NULL,
[GKWRT] [decimal] (11, 2) NULL,
[PKWRT] [decimal] (15, 2) NULL,
[FKWRT] [decimal] (15, 2) NULL,
[RSWRT] [decimal] (15, 2) NULL,
[UKBAS] [decimal] (15, 2) NULL,
[PRBAS] [decimal] (11, 2) NULL,
[KUNNR] [nvarchar] (10) NULL,
[LIFNR] [nvarchar] (10) NULL,
[KONKZ] [nvarchar] (1) NULL,
[KZNEP] [nvarchar] (1) NULL,
[KOUPD] [nvarchar] (1) NULL,
[STBAS] [decimal] (15, 2) NULL,
[KOBAS] [decimal] (15, 2) NULL,
[GRUMS] [decimal] (15, 2) NULL,
[MAXRA] [decimal] (11, 2) NULL,
[AUBET] [decimal] (11, 2) NULL,
[ABRBG] [datetime] NULL,
[ABREN] [datetime] NULL,
[KWRTA] [decimal] (11, 2) NULL,
[KWRTR] [decimal] (11, 2) NULL,
[KVSL1] [nvarchar] (3) NULL,
[KVSL2] [nvarchar] (3) NULL,
[KSTBS] [decimal] (15, 2) NULL,
[KBETR] [decimal] (11, 2) NULL
)
GO
