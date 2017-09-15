CREATE TABLE [tsa].[ics_land_M3V10gen_POL_OPAYMD]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF__ics_land___Exclu__03524525] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF__ics_land___IsDup__0446695E] DEFAULT ((0)),
[ULCHID] [nchar] (10) NULL,
[ULCHNO] [numeric] (18, 0) NULL,
[ULCONO] [numeric] (18, 0) NULL,
[ULCSHD] [nchar] (5) NULL,
[ULCUIN] [nchar] (3) NULL,
[ULDIVI] [nchar] (3) NULL,
[ULDUDT] [numeric] (18, 0) NULL,
[ULEXIN] [nchar] (14) NULL,
[ULIDAT] [numeric] (18, 0) NULL,
[ULINPX] [nchar] (6) NULL,
[ULIVNO] [numeric] (18, 0) NULL,
[ULLMDT] [numeric] (18, 0) NULL,
[ULPLNB] [numeric] (18, 0) NULL,
[ULPMAM] [numeric] (18, 0) NULL,
[ULPMIA] [numeric] (18, 0) NULL,
[ULPMLA] [numeric] (18, 0) NULL,
[ULPMNB] [numeric] (18, 0) NULL,
[ULRAIN] [numeric] (18, 0) NULL,
[ULRGDT] [numeric] (18, 0) NULL,
[ULRGTM] [numeric] (18, 0) NULL,
[ULYEA4] [numeric] (18, 0) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10gen_POL_OPAYMD_1] ON [tsa].[ics_land_M3V10gen_POL_OPAYMD] ([ULCONO], [ULINPX], [ULIVNO], [ULPLNB], [ULPMNB], [ULYEA4])
GO