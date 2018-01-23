CREATE TABLE [tsa].[ics_land_Symfonia_DW]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_DW_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_DW_IsDuplicate] DEFAULT ((0)),
[bufor] [int] NULL,
[cena] [float] NULL,
[data] [datetime] NULL,
[flag] [smallint] NULL,
[id] [int] NULL,
[iddkpz] [int] NULL,
[iddkzk] [int] NULL,
[iddw] [int] NULL,
[idkh] [int] NULL,
[idtw] [int] NULL,
[ilosc] [float] NULL,
[iloscdosp] [float] NULL,
[iloscPz] [float] NULL,
[kod] [varchar] (40) NULL,
[magazyn] [int] NULL,
[numer] [int] NULL,
[stan] [float] NULL,
[subtyp] [smallint] NULL,
[typ] [smallint] NULL,
[wartoscdosp] [float] NULL,
[wartoscst] [float] NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_Symfonia_DW_1] ON [tsa].[ics_land_Symfonia_DW] ([id])
GO
