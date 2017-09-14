CREATE TABLE [tsa].[ics_land_M3V10ved_POL_CSYTAB]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF__ics_land___Exclu__45BF2700] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF__ics_land___IsDup__46B34B39] DEFAULT ((0)),
[CTCHID] [nchar] (10) NULL,
[CTCHNO] [numeric] (18, 0) NULL,
[CTCONO] [numeric] (18, 0) NULL,
[CTDIVI] [nchar] (3) NULL,
[CTLMDT] [numeric] (18, 0) NULL,
[CTLMTS] [numeric] (18, 0) NULL,
[CTLNCD] [nchar] (2) NULL,
[CTPARM] [nvarchar] (200) NULL,
[CTRGDT] [numeric] (18, 0) NULL,
[CTRGTM] [numeric] (18, 0) NULL,
[CTSTCO] [nchar] (10) NULL,
[CTSTKY] [nchar] (10) NULL,
[CTTX15] [nchar] (15) NULL,
[CTTX40] [nvarchar] (40) NULL,
[CTTXID] [numeric] (18, 0) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10ved_POL_CSYTAB_1] ON [tsa].[ics_land_M3V10ved_POL_CSYTAB] ([CTCONO], [CTDIVI], [CTLNCD], [CTSTCO], [CTSTKY])
GO
