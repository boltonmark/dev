CREATE TABLE [tsa].[ics_land_M3V10vil_POL_FGLEDG]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF__ics_land___Exclu__22CAF07E] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF__ics_land___IsDup__23BF14B7] DEFAULT ((0)),
[EGACAM] [numeric] (18, 0) NULL,
[EGACDT] [numeric] (18, 0) NULL,
[EGACQT] [numeric] (18, 0) NULL,
[EGAIT1] [nchar] (8) NULL,
[EGAIT2] [nchar] (8) NULL,
[EGAIT3] [nchar] (8) NULL,
[EGAIT4] [nchar] (8) NULL,
[EGAIT5] [nchar] (8) NULL,
[EGAIT6] [nchar] (8) NULL,
[EGAIT7] [nchar] (8) NULL,
[EGAPCD] [nchar] (10) NULL,
[EGAPRV] [numeric] (18, 0) NULL,
[EGARAT] [numeric] (18, 0) NULL,
[EGARCD] [numeric] (18, 0) NULL,
[EGAT04] [numeric] (18, 0) NULL,
[EGBSCD] [nchar] (3) NULL,
[EGCHID] [nchar] (10) NULL,
[EGCHNO] [numeric] (18, 0) NULL,
[EGCONO] [numeric] (18, 0) NULL,
[EGCRTP] [numeric] (18, 0) NULL,
[EGCUAM] [numeric] (18, 0) NULL,
[EGCUCD] [nchar] (3) NULL,
[EGCVT1] [numeric] (18, 0) NULL,
[EGCVT2] [numeric] (18, 0) NULL,
[EGCVT3] [numeric] (18, 0) NULL,
[EGCVT4] [numeric] (18, 0) NULL,
[EGDBCR] [nchar] (1) NULL,
[EGDCAM] [numeric] (18, 0) NULL,
[EGDCQT] [numeric] (18, 0) NULL,
[EGDIVI] [nchar] (3) NULL,
[EGECAR] [nchar] (2) NULL,
[EGEICD] [numeric] (18, 0) NULL,
[EGERDT] [numeric] (18, 0) NULL,
[EGFEID] [nchar] (4) NULL,
[EGFNCN] [numeric] (18, 0) NULL,
[EGFTCO] [nchar] (3) NULL,
[EGGFL1] [nchar] (1) NULL,
[EGGFL2] [nchar] (1) NULL,
[EGGFL3] [nchar] (1) NULL,
[EGGFL4] [nchar] (1) NULL,
[EGGFL5] [nchar] (1) NULL,
[EGJRNO] [numeric] (18, 0) NULL,
[EGJSNO] [numeric] (18, 0) NULL,
[EGLMDT] [numeric] (18, 0) NULL,
[EGLMTS] [numeric] (18, 0) NULL,
[EGOCDT] [numeric] (18, 0) NULL,
[EGRECO] [numeric] (18, 0) NULL,
[EGREDE] [numeric] (18, 0) NULL,
[EGRGDT] [numeric] (18, 0) NULL,
[EGRGTM] [numeric] (18, 0) NULL,
[EGSERS] [numeric] (18, 0) NULL,
[EGTCAM] [numeric] (18, 0) NULL,
[EGTCAR] [numeric] (18, 0) NULL,
[EGTCRT] [numeric] (18, 0) NULL,
[EGTDSC] [nchar] (10) NULL,
[EGTGCD] [numeric] (18, 0) NULL,
[EGTHCC] [nchar] (3) NULL,
[EGTOCD] [nchar] (1) NULL,
[EGTRCD] [numeric] (18, 0) NULL,
[EGTXID] [numeric] (18, 0) NULL,
[EGUNIT] [nchar] (3) NULL,
[EGVATD] [numeric] (18, 0) NULL,
[EGVATR] [nchar] (1) NULL,
[EGVDSC] [nchar] (7) NULL,
[EGVONO] [numeric] (18, 0) NULL,
[EGVRNE] [numeric] (18, 0) NULL,
[EGVRNO] [nchar] (16) NULL,
[EGVSER] [nchar] (3) NULL,
[EGVSNO] [numeric] (18, 0) NULL,
[EGVTCD] [numeric] (18, 0) NULL,
[EGVTP1] [numeric] (18, 0) NULL,
[EGVTP2] [numeric] (18, 0) NULL,
[EGVTXT] [nvarchar] (40) NULL,
[EGYEA4] [numeric] (18, 0) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10vil_POL_FGLEDG_1] ON [tsa].[ics_land_M3V10vil_POL_FGLEDG] ([EGCONO], [EGDIVI], [EGJRNO], [EGJSNO], [EGYEA4])
GO
