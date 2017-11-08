CREATE TABLE [psa].[ics_stg_M3V10gen_POL_FGINLI]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_gen_FGINLI_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_gen_FGINLI_IsIncomplete] DEFAULT ('N'),
[F5ACDT] [numeric] (8, 0) NULL,
[F5ADDG] [numeric] (15, 2) NULL,
[F5ATNB] [numeric] (17, 0) NULL,
[F5ATNR] [numeric] (17, 0) NULL,
[F5CHID] [nchar] (10) NULL,
[F5CHNO] [numeric] (3, 0) NULL,
[F5CONO] [numeric] (18, 0) NOT NULL,
[F5DIVI] [nchar] (3) NOT NULL,
[F5DNCM] [numeric] (15, 2) NULL,
[F5DNNR] [nvarchar] (24) NULL,
[F5DNPR] [numeric] (17, 6) NULL,
[F5DNQA] [numeric] (15, 6) NULL,
[F5DNQT] [numeric] (15, 6) NULL,
[F5DNRP] [nchar] (3) NULL,
[F5DNRQ] [nchar] (3) NULL,
[F5ECLC] [nchar] (2) NULL,
[F5FIAS] [numeric] (1, 0) NULL,
[F5HDPR] [nchar] (15) NULL,
[F5ICAC] [numeric] (15, 2) NULL,
[F5IMDT] [numeric] (8, 0) NULL,
[F5IMST] [numeric] (1, 0) NULL,
[F5INLP] [numeric] (18, 0) NOT NULL,
[F5INS1] [nchar] (1) NULL,
[F5INS2] [nchar] (1) NULL,
[F5INS3] [nchar] (1) NULL,
[F5INS4] [nchar] (1) NULL,
[F5INS5] [nchar] (1) NULL,
[F5INYR] [numeric] (18, 0) NOT NULL,
[F5IVCW] [numeric] (15, 6) NULL,
[F5IVDI] [numeric] (5, 2) NULL,
[F5IVLC] [numeric] (15, 2) NULL,
[F5IVNA] [numeric] (15, 2) NULL,
[F5IVOC] [numeric] (17, 6) NULL,
[F5IVQA] [numeric] (15, 6) NULL,
[F5IVQT] [numeric] (15, 6) NULL,
[F5LMDT] [numeric] (8, 0) NULL,
[F5OPTX] [nchar] (15) NULL,
[F5OPTY] [nchar] (15) NULL,
[F5OPTZ] [nchar] (15) NULL,
[F5PNLI] [numeric] (18, 0) NOT NULL,
[F5PNLS] [numeric] (18, 0) NOT NULL,
[F5PPUN] [nchar] (3) NULL,
[F5PUCD] [numeric] (5, 0) NULL,
[F5PUNO] [nchar] (7) NOT NULL,
[F5PUUN] [nchar] (3) NULL,
[F5RCAC] [numeric] (15, 2) NULL,
[F5RELP] [numeric] (18, 0) NOT NULL,
[F5REPN] [numeric] (18, 0) NOT NULL,
[F5RGDT] [numeric] (8, 0) NULL,
[F5RGTM] [numeric] (6, 0) NULL,
[F5RPQA] [numeric] (15, 6) NULL,
[F5RPQT] [numeric] (15, 6) NULL,
[F5SERA] [numeric] (11, 6) NULL,
[F5SERS] [numeric] (2, 0) NULL,
[F5SINO] [nvarchar] (24) NOT NULL,
[F5SUNO] [nchar] (10) NOT NULL,
[F5TXID] [numeric] (13, 0) NULL,
[F5VRCD] [nchar] (2) NULL,
[F5VTCD] [numeric] (2, 0) NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10gen_POL_FGINLI] ADD CONSTRAINT [PK_psa_ics_stg_M3V10gen_POL_FGINLI] PRIMARY KEY CLUSTERED  ([F5CONO], [F5DIVI], [F5INLP], [F5INYR], [F5PNLI], [F5PNLS], [F5PUNO], [F5RELP], [F5REPN], [F5SINO], [F5SUNO])
GO
