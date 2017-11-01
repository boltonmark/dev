CREATE TABLE [tsa].[ics_land_M3V10gen_POL_OINVOL]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_gen_OINVOL_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_gen_OINVOL_IsDuplicate] DEFAULT ((0)),
[ONBSCD] [nchar] (3) NULL,
[ONCHID] [nchar] (10) NULL,
[ONCHNO] [numeric] (3, 0) NULL,
[ONCONO] [numeric] (3, 0) NULL,
[ONCVT1] [numeric] (15, 2) NULL,
[ONCVT2] [numeric] (15, 2) NULL,
[ONDIVI] [nchar] (3) NULL,
[ONDLIX] [numeric] (11, 0) NULL,
[ONECAR] [nchar] (2) NULL,
[ONEXIN] [nchar] (14) NULL,
[ONFTCO] [nchar] (3) NULL,
[ONINPX] [nchar] (6) NULL,
[ONIVAM] [numeric] (15, 2) NULL,
[ONIVAV] [numeric] (15, 2) NULL,
[ONIVBA] [numeric] (15, 2) NULL,
[ONIVFR] [nvarchar] (30) NULL,
[ONIVLA] [numeric] (15, 2) NULL,
[ONIVNO] [numeric] (9, 0) NULL,
[ONIVRF] [nvarchar] (20) NULL,
[ONIVSQ] [numeric] (3, 0) NULL,
[ONIVTP] [nchar] (2) NULL,
[ONLMDT] [numeric] (8, 0) NULL,
[ONORNO] [nchar] (10) NULL,
[ONPYNO] [nchar] (10) NULL,
[ONRGDT] [numeric] (8, 0) NULL,
[ONRGTM] [numeric] (6, 0) NULL,
[ONVRIN] [nchar] (16) NULL,
[ONVRNO] [nchar] (16) NULL,
[ONVTAM] [numeric] (15, 2) NULL,
[ONVTCD] [numeric] (2, 0) NULL,
[ONVTP1] [numeric] (5, 2) NULL,
[ONVTP2] [numeric] (5, 2) NULL,
[ONWHLO] [nchar] (3) NULL,
[ONYEA4] [numeric] (4, 0) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10gen_POL_OINVOL_1] ON [tsa].[ics_land_M3V10gen_POL_OINVOL] ([ONCONO], [ONDIVI], [ONDLIX], [ONINPX], [ONIVNO], [ONIVRF], [ONIVTP], [ONORNO], [ONWHLO], [ONYEA4])
GO
