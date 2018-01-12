CREATE TABLE [tsa].[ics_land_baan_ttdpur036610]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_baan_ttdpur036610_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_baan_ttdpur036610_IsDuplicate] DEFAULT ((0)),
[t_Refcntd] [int] NULL,
[t_Refcntu] [int] NULL,
[t_cntr] [varchar] (3) NULL,
[t_cuni] [varchar] (3) NULL,
[t_dile] [tinyint] NULL,
[t_dmth] [tinyint] NULL,
[t_item] [varchar] (16) NULL,
[t_kogr] [tinyint] NULL,
[t_stsc] [tinyint] NULL,
[t_suno] [varchar] (6) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_baan_ttdpur036610_1] ON [tsa].[ics_land_baan_ttdpur036610] ([t_cntr], [t_dile], [t_item], [t_suno])
GO