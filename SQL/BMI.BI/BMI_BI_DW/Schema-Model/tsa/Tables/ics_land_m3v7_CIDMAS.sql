CREATE TABLE [tsa].[ics_land_m3v7_CIDMAS]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL,
[IsDuplicate] [bit] NOT NULL,
[IDCONO] [decimal] (3, 0) NULL,
[IDSUNO] [nvarchar] (255) NULL,
[IDSUTY] [decimal] (1, 0) NULL,
[IDSUNM] [nvarchar] (255) NULL,
[IDALSU] [nvarchar] (255) NULL,
[IDSTAT] [nvarchar] (255) NULL,
[IDCORG] [nvarchar] (255) NULL,
[IDCOR2] [nvarchar] (255) NULL,
[IDLNCD] [nvarchar] (255) NULL,
[IDPHNO] [nvarchar] (255) NULL,
[IDPHN2] [nvarchar] (255) NULL,
[IDTLNO] [nvarchar] (255) NULL,
[IDTFNO] [nvarchar] (255) NULL,
[IDCSCD] [nvarchar] (255) NULL,
[IDECAR] [nvarchar] (255) NULL,
[IDDTFM] [nvarchar] (255) NULL,
[IDEDIT] [nvarchar] (255) NULL,
[IDVRNO] [nvarchar] (255) NULL,
[IDSUCO] [nvarchar] (255) NULL,
[IDSUAL] [nvarchar] (255) NULL,
[IDSUCM] [nvarchar] (255) NULL,
[IDMEPF] [nvarchar] (255) NULL,
[IDPODA] [decimal] (3, 0) NULL,
[IDCFI1] [nvarchar] (255) NULL,
[IDCFI2] [decimal] (15, 2) NULL,
[IDCFI3] [nvarchar] (255) NULL,
[IDCFI4] [nvarchar] (255) NULL,
[IDCFI5] [nvarchar] (255) NULL,
[IDHAFE] [nvarchar] (255) NULL,
[IDDESV] [nvarchar] (255) NULL,
[IDTIZO] [nvarchar] (255) NULL,
[IDFWSC] [nvarchar] (255) NULL,
[IDTXID] [decimal] (13, 0) NULL,
[IDRGDT] [decimal] (8, 0) NULL,
[IDRGTM] [decimal] (6, 0) NULL,
[IDLMDT] [decimal] (8, 0) NULL,
[IDCHNO] [decimal] (3, 0) NULL,
[IDCHID] [nvarchar] (255) NULL,
[IDLMTS] [decimal] (18, 0) NULL
)
GO
CREATE CLUSTERED INDEX [tsa_ics_land_m3v7_CIDMAS_1] ON [tsa].[ics_land_m3v7_CIDMAS] ([IDSUNO])
GO
