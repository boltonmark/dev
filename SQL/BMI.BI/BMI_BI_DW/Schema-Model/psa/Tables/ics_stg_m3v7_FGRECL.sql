CREATE TABLE [psa].[ics_stg_m3v7_FGRECL]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3v7_FGRECL_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3v7_FGRECL_IsIncomplete] DEFAULT ('N'),
[F2CONO] [numeric] (18, 0) NOT NULL,
[F2DIVI] [nchar] (3) NOT NULL,
[F2PUNO] [nchar] (7) NOT NULL,
[F2PNLI] [numeric] (18, 0) NOT NULL,
[F2PNLS] [numeric] (18, 0) NOT NULL,
[F2REPN] [numeric] (18, 0) NOT NULL,
[F2RELP] [numeric] (18, 0) NOT NULL,
[F2FACI] [nvarchar] (255) NULL,
[F2WHLO] [nvarchar] (255) NULL,
[F2SUDO] [nvarchar] (255) NULL,
[F2SUNO] [nvarchar] (255) NULL,
[F2SORN] [nvarchar] (255) NULL,
[F2TRDT] [decimal] (8, 0) NULL,
[F2ITNO] [nvarchar] (255) NULL,
[F2IMST] [decimal] (1, 0) NULL,
[F2IMDT] [decimal] (8, 0) NULL,
[F2SCOC] [decimal] (17, 6) NULL,
[F2SCOP] [decimal] (17, 6) NULL,
[F2SCDC] [decimal] (5, 2) NULL,
[F2PUCD] [decimal] (5, 0) NULL,
[F2CUCD] [nvarchar] (255) NULL,
[F2SERA] [decimal] (11, 6) NULL,
[F2CRTP] [decimal] (2, 0) NULL,
[F2RPQT] [decimal] (15, 6) NULL,
[F2RPQA] [decimal] (15, 6) NULL,
[F2CAWE] [decimal] (15, 6) NULL,
[F2IVQT] [decimal] (15, 6) NULL,
[F2IVQA] [decimal] (15, 6) NULL,
[F2IVCW] [decimal] (15, 6) NULL,
[F2RCAC] [decimal] (15, 2) NULL,
[F2ICAC] [decimal] (15, 2) NULL,
[F2IASR] [decimal] (1, 0) NULL,
[F2IASD] [decimal] (1, 0) NULL,
[F2ANBR] [decimal] (9, 0) NULL,
[F2SENO] [decimal] (4, 0) NULL,
[F2HSIN] [nvarchar] (255) NULL,
[F2SBAN] [nvarchar] (255) NULL,
[F2FGTP] [nvarchar] (255) NULL,
[F2ORTY] [nvarchar] (255) NULL,
[F2PIDT] [decimal] (8, 0) NULL,
[F2BUYE] [nvarchar] (255) NULL,
[F2RGDT] [decimal] (8, 0) NULL,
[F2RGTM] [decimal] (6, 0) NULL,
[F2LMDT] [decimal] (8, 0) NULL,
[F2CHNO] [decimal] (3, 0) NULL,
[F2CHID] [nvarchar] (255) NULL
)
GO
ALTER TABLE [psa].[ics_stg_m3v7_FGRECL] ADD CONSTRAINT [PK_psa_ics_stg_M3V7_FGRECL] PRIMARY KEY CLUSTERED  ([F2CONO], [F2DIVI], [F2PNLI], [F2PNLS], [F2PUNO], [F2RELP], [F2REPN])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3v7_FGRECL', NULL, NULL
GO
