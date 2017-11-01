CREATE TABLE [tsa].[ics_land_M3V10gen_POL_OINVOH]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_gen_OINVOH_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_gen_OINVOH_IsDuplicate] DEFAULT ((0)),
[UH3RDP] [nchar] (10) NULL,
[UHACDT] [numeric] (8, 0) NULL,
[UHCASH] [numeric] (1, 0) NULL,
[UHCHID] [nchar] (10) NULL,
[UHCHNO] [numeric] (3, 0) NULL,
[UHCONO] [numeric] (3, 0) NULL,
[UHCUCD] [nchar] (3) NULL,
[UHDIVI] [nchar] (3) NULL,
[UHDUDT] [numeric] (8, 0) NULL,
[UHEXIN] [nchar] (14) NULL,
[UHFAC2] [nchar] (3) NULL,
[UHFACI] [nchar] (3) NULL,
[UHIDAT] [numeric] (8, 0) NULL,
[UHINPX] [nchar] (6) NULL,
[UHINRC] [nchar] (10) NULL,
[UHINST] [nchar] (2) NULL,
[UHIVAM] [numeric] (15, 2) NULL,
[UHIVLA] [numeric] (15, 2) NULL,
[UHIVNO] [numeric] (9, 0) NULL,
[UHIVTP] [nchar] (2) NULL,
[UHLMDT] [numeric] (8, 0) NULL,
[UHLMTS] [numeric] (18, 0) NULL,
[UHMUST] [numeric] (1, 0) NULL,
[UHNESI] [numeric] (1, 0) NULL,
[UHNREF] [nvarchar] (20) NULL,
[UHNVAT] [numeric] (1, 0) NULL,
[UHORIG] [numeric] (1, 0) NULL,
[UHPYNO] [nchar] (10) NULL,
[UHRAFC] [numeric] (15, 2) NULL,
[UHRAIN] [numeric] (11, 6) NULL,
[UHRALC] [numeric] (15, 2) NULL,
[UHRGDT] [numeric] (8, 0) NULL,
[UHRGTM] [numeric] (6, 0) NULL,
[UHRINP] [nchar] (6) NULL,
[UHRIVN] [numeric] (9, 0) NULL,
[UHRXIN] [nchar] (14) NULL,
[UHRYEA] [numeric] (4, 0) NULL,
[UHSBTO] [numeric] (1, 0) NULL,
[UHUPAC] [numeric] (1, 0) NULL,
[UHUPBC] [numeric] (1, 0) NULL,
[UHUPEC] [numeric] (1, 0) NULL,
[UHVONO] [numeric] (8, 0) NULL,
[UHVSER] [nchar] (3) NULL,
[UHYEA4] [numeric] (4, 0) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10gen_POL_OINVOH_1] ON [tsa].[ics_land_M3V10gen_POL_OINVOH] ([UHCONO], [UHDIVI], [UHINPX], [UHIVNO], [UHYEA4])
GO
