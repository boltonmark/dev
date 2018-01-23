CREATE TABLE [tsa].[ics_land_Symfonia_CN]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_CN_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_CN_IsDuplicate] DEFAULT ((0)),
[aktywna] [smallint] NULL,
[cena] [float] NULL,
[createdBy] [int] NULL,
[dataend] [datetime] NULL,
[datastart] [datetime] NULL,
[flag] [smallint] NULL,
[flagcen] [smallint] NULL,
[id] [int] NULL,
[idck] [int] NULL,
[idpd] [int] NULL,
[idpm] [int] NULL,
[parametr] [float] NULL,
[subtyp] [smallint] NULL,
[typ] [smallint] NULL,
[typceny] [smallint] NULL,
[typpar] [smallint] NULL,
[typpd] [smallint] NULL,
[waluta] [varchar] (3) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_Symfonia_CN_1] ON [tsa].[ics_land_Symfonia_CN] ([id])
GO
