CREATE TABLE [tsa].[ics_land_M3V10ved_POL_MPDEPR]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF__ics_land___Exclu__6AF0ABAF] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF__ics_land___IsDup__6BE4CFE8] DEFAULT ((0)),
[ILCMCO] [nchar] (2) NULL,
[ILCONO] [numeric] (18, 0) NULL,
[ILDSPN] [numeric] (18, 0) NULL,
[ILFDAT] [numeric] (18, 0) NULL,
[ILFPLP] [numeric] (18, 0) NULL,
[ILITNO] [nchar] (15) NULL,
[ILLEDT] [numeric] (18, 0) NULL,
[ILMEDC] [nchar] (10) NULL,
[ILORQA] [numeric] (18, 0) NULL,
[ILPLPN] [numeric] (18, 0) NULL,
[ILPLPS] [numeric] (18, 0) NULL,
[ILPNLI] [numeric] (18, 0) NULL,
[ILPNLS] [numeric] (18, 0) NULL,
[ILPRQA] [numeric] (18, 0) NULL,
[ILPUNO] [nchar] (7) NULL,
[ILRGTM] [numeric] (18, 0) NULL,
[ILRSIN] [numeric] (18, 0) NULL,
[ILVDDT] [numeric] (18, 0) NULL,
[ILWHLO] [nchar] (3) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10ved_POL_MPDEPR_1] ON [tsa].[ics_land_M3V10ved_POL_MPDEPR] ([ILCONO], [ILDSPN], [ILLEDT], [ILPLPN], [ILPLPS], [ILPNLI], [ILPNLS], [ILPUNO], [ILRGTM])
GO