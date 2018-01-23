CREATE TABLE [tsa].[ics_land_Symfonia_RP]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_RP_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_RP_IsDuplicate] DEFAULT ((0)),
[data] [datetime] NULL,
[exp_fk] [smallint] NULL,
[id] [int] NULL,
[idrj] [int] NULL,
[kod] [varchar] (40) NULL,
[okres] [smallint] NULL,
[opis] [varchar] (80) NULL,
[seria] [varchar] (5) NULL,
[seriadzial] [int] NULL,
[serianr] [int] NULL,
[stan] [float] NULL,
[stanwal] [float] NULL,
[statusFK] [smallint] NULL,
[typdk] [varchar] (4) NULL,
[waluta] [varchar] (3) NULL,
[wplaty] [float] NULL,
[wplatywal] [float] NULL,
[wyplaty] [float] NULL,
[wyplatywal] [float] NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_Symfonia_RP_1] ON [tsa].[ics_land_Symfonia_RP] ([id])
GO
