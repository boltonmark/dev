CREATE TABLE [tsa].[ics_land_M3V10gen_POL_ODLINE]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_gen_ODLINE_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_gen_ODLINE_IsDuplicate] DEFAULT ((0)),
[UBALUN] [nchar] (3) NULL,
[UBAPBA] [numeric] (1, 0) NULL,
[UBCHID] [nchar] (10) NULL,
[UBCHNO] [numeric] (3, 0) NULL,
[UBCHQT] [numeric] (15, 6) NULL,
[UBCMNO] [nchar] (4) NULL,
[UBCONO] [numeric] (3, 0) NULL,
[UBCUCT] [nchar] (3) NULL,
[UBCUOR] [nvarchar] (20) NULL,
[UBDCOS] [numeric] (17, 6) NULL,
[UBDIA1] [numeric] (15, 2) NULL,
[UBDIA2] [numeric] (15, 2) NULL,
[UBDIA3] [numeric] (15, 2) NULL,
[UBDIA4] [numeric] (15, 2) NULL,
[UBDIA5] [numeric] (15, 2) NULL,
[UBDIA6] [numeric] (15, 2) NULL,
[UBDIC1] [numeric] (1, 0) NULL,
[UBDIC2] [numeric] (1, 0) NULL,
[UBDIC3] [numeric] (1, 0) NULL,
[UBDIC4] [numeric] (1, 0) NULL,
[UBDIC5] [numeric] (1, 0) NULL,
[UBDIC6] [numeric] (1, 0) NULL,
[UBDIP1] [numeric] (5, 2) NULL,
[UBDIP2] [numeric] (5, 2) NULL,
[UBDIP3] [numeric] (5, 2) NULL,
[UBDIP4] [numeric] (5, 2) NULL,
[UBDIP5] [numeric] (5, 2) NULL,
[UBDIP6] [numeric] (5, 2) NULL,
[UBDIVI] [nchar] (3) NULL,
[UBDLIX] [numeric] (11, 0) NULL,
[UBDLQA] [numeric] (15, 6) NULL,
[UBDLQS] [numeric] (15, 6) NULL,
[UBDLQT] [numeric] (15, 6) NULL,
[UBDTID] [numeric] (13, 0) NULL,
[UBELNO] [nchar] (8) NULL,
[UBEXIN] [nchar] (14) NULL,
[UBFACI] [nchar] (3) NULL,
[UBGWTP] [nchar] (10) NULL,
[UBHDPR] [nchar] (15) NULL,
[UBINPR] [numeric] (17, 6) NULL,
[UBINPX] [nchar] (6) NULL,
[UBITNO] [nchar] (15) NULL,
[UBIVNO] [numeric] (9, 0) NULL,
[UBIVQA] [numeric] (15, 6) NULL,
[UBIVQS] [numeric] (15, 6) NULL,
[UBIVQT] [numeric] (15, 6) NULL,
[UBLMDT] [numeric] (8, 0) NULL,
[UBLNAM] [numeric] (15, 2) NULL,
[UBLTYP] [nchar] (1) NULL,
[UBNEPR] [numeric] (17, 6) NULL,
[UBORNO] [nchar] (10) NULL,
[UBPONR] [numeric] (5, 0) NULL,
[UBPOSX] [numeric] (2, 0) NULL,
[UBPOTX] [numeric] (13, 0) NULL,
[UBPRCH] [numeric] (1, 0) NULL,
[UBPRMO] [nchar] (1) NULL,
[UBPROJ] [nchar] (7) NULL,
[UBPRPR] [numeric] (1, 0) NULL,
[UBPRTX] [numeric] (13, 0) NULL,
[UBRGDT] [numeric] (8, 0) NULL,
[UBRGTM] [numeric] (6, 0) NULL,
[UBRTQA] [numeric] (15, 6) NULL,
[UBRTQT] [numeric] (15, 6) NULL,
[UBSACD] [numeric] (5, 0) NULL,
[UBSAPR] [numeric] (17, 6) NULL,
[UBSPUN] [nchar] (3) NULL,
[UBSTCD] [numeric] (1, 0) NULL,
[UBSUNO] [nchar] (10) NULL,
[UBUCCD] [numeric] (1, 0) NULL,
[UBUCOS] [numeric] (17, 6) NULL,
[UBWATP] [nchar] (10) NULL,
[UBWHLO] [nchar] (3) NULL,
[UBYEA4] [numeric] (4, 0) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10gen_POL_ODLINE_1] ON [tsa].[ics_land_M3V10gen_POL_ODLINE] ([UBCONO], [UBDLIX], [UBORNO], [UBPONR], [UBPOSX], [UBWHLO])
GO
