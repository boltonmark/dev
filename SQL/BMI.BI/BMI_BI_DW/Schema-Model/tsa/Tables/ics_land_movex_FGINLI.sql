CREATE TABLE [tsa].[ics_land_movex_FGINLI]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_movex_FGINLI_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_movex_FGINLI_IsDuplicate] DEFAULT ((0)),
[F5CONO] [decimal] (3, 0) NULL,
[F5DIVI] [nvarchar] (3) NULL,
[F5SUNO] [nvarchar] (10) NULL,
[F5SINO] [nvarchar] (24) NULL,
[F5INYR] [decimal] (4, 0) NULL,
[F5PUNO] [nvarchar] (7) NULL,
[F5PNLI] [decimal] (3, 0) NULL,
[F5PNLS] [decimal] (3, 0) NULL,
[F5REPN] [decimal] (10, 0) NULL,
[F5RELP] [decimal] (1, 0) NULL,
[F5INLP] [decimal] (1, 0) NULL,
[F5INS1] [nvarchar] (1) NULL,
[F5INS2] [nvarchar] (1) NULL,
[F5INS3] [nvarchar] (1) NULL,
[F5INS4] [nvarchar] (1) NULL,
[F5INS5] [nvarchar] (1) NULL,
[F5IVQT] [decimal] (15, 6) NULL,
[F5IVQA] [decimal] (15, 6) NULL,
[F5IVOC] [decimal] (17, 6) NULL,
[F5IVNA] [decimal] (15, 2) NULL,
[F5IVDI] [decimal] (5, 2) NULL,
[F5PUUN] [nvarchar] (3) NULL,
[F5PPUN] [nvarchar] (3) NULL,
[F5PUCD] [decimal] (5, 0) NULL,
[F5IVCW] [decimal] (15, 6) NULL,
[F5ADDG] [decimal] (15, 2) NULL,
[F5IVLC] [decimal] (15, 2) NULL,
[F5SERA] [decimal] (11, 6) NULL,
[F5ECLC] [nvarchar] (2) NULL,
[F5VRCD] [nvarchar] (2) NULL,
[F5VTCD] [decimal] (2, 0) NULL,
[F5ACDT] [decimal] (8, 0) NULL,
[F5DNNR] [nvarchar] (24) NULL,
[F5DNQT] [decimal] (15, 6) NULL,
[F5DNQA] [decimal] (15, 6) NULL,
[F5DNPR] [decimal] (17, 6) NULL,
[F5DNCM] [decimal] (15, 2) NULL,
[F5DNRQ] [nvarchar] (3) NULL,
[F5DNRP] [nvarchar] (3) NULL,
[F5IMST] [decimal] (1, 0) NULL,
[F5IMDT] [decimal] (8, 0) NULL,
[F5RPQT] [decimal] (15, 6) NULL,
[F5RPQA] [decimal] (15, 6) NULL,
[F5RCAC] [decimal] (15, 2) NULL,
[F5ICAC] [decimal] (15, 2) NULL,
[F5RGDT] [decimal] (8, 0) NULL,
[F5RGTM] [decimal] (6, 0) NULL,
[F5LMDT] [decimal] (8, 0) NULL,
[F5CHNO] [decimal] (3, 0) NULL,
[F5CHID] [nvarchar] (10) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_movex_FGINLI_1] ON [tsa].[ics_land_movex_FGINLI] ([F5PNLI], [F5PNLS], [F5PUNO], [F5RELP], [F5REPN], [F5SINO])
GO
