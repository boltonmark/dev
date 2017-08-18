CREATE TABLE [psa].[ics_stg_m3_OINVOH]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3_OINVOH_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_m3_OINVOH_IsIncomplete] DEFAULT ('N'),
[UHCONO] [decimal] (3, 0) NULL,
[UHDIVI] [nvarchar] (255) NULL,
[UHFACI] [nvarchar] (255) NULL,
[UHIVNO] [decimal] (9, 0) NULL,
[UHYEA4] [decimal] (4, 0) NULL,
[UHPYNO] [nvarchar] (255) NULL,
[UHINST] [nvarchar] (255) NULL,
[UHIVAM] [decimal] (15, 2) NULL,
[UHIVLA] [decimal] (15, 2) NULL,
[UHCUCD] [nvarchar] (255) NULL,
[UHRAIN] [decimal] (11, 6) NULL,
[UHDUDT] [decimal] (8, 0) NULL,
[UHVSER] [nvarchar] (255) NULL,
[UHVONO] [decimal] (8, 0) NULL,
[UHIDAT] [decimal] (8, 0) NULL,
[UHACDT] [decimal] (8, 0) NULL,
[UHIVTP] [nvarchar] (255) NULL,
[UHUPEC] [decimal] (1, 0) NULL,
[UHUPBC] [decimal] (1, 0) NULL,
[UHUPAC] [decimal] (1, 0) NULL,
[UHINRC] [nvarchar] (255) NULL,
[UHNVAT] [decimal] (1, 0) NULL,
[UHMUST] [decimal] (1, 0) NULL,
[UHCASH] [decimal] (1, 0) NULL,
[UHRAFC] [decimal] (15, 2) NULL,
[UHRALC] [decimal] (15, 2) NULL,
[UHFAC2] [nvarchar] (255) NULL,
[UHORIG] [decimal] (1, 0) NULL,
[UHNREF] [nvarchar] (255) NULL,
[UH3RDP] [nvarchar] (255) NULL,
[UHRGDT] [decimal] (8, 0) NULL,
[UHRGTM] [decimal] (6, 0) NULL,
[UHLMDT] [decimal] (8, 0) NULL,
[UHCHNO] [decimal] (3, 0) NULL,
[UHCHID] [nvarchar] (255) NULL,
[UHRYEA] [decimal] (4, 0) NULL,
[UHRIVN] [decimal] (9, 0) NULL,
[UHINPX] [nvarchar] (255) NULL,
[UHEXIN] [nvarchar] (255) NULL,
[UHRINP] [nvarchar] (255) NULL,
[UHRXIN] [nvarchar] (255) NULL,
[UHLMTS] [decimal] (18, 0) NULL,
[UHSBTO] [decimal] (1, 0) NULL,
[UHNESI] [decimal] (1, 0) NULL,
[UHLCUR] [nvarchar] (255) NULL,
[UHLVAT] [decimal] (15, 2) NULL,
[UHARAT] [decimal] (11, 6) NULL,
[UHIVBA] [decimal] (15, 2) NULL,
[UHPDYR] [decimal] (4, 0) NULL,
[UHPDNO] [nvarchar] (255) NULL
)
GO