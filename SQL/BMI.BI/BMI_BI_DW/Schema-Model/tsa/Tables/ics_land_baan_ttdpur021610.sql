CREATE TABLE [tsa].[ics_land_baan_ttdpur021610]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_baan_ttdpur021610_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_baan_ttdpur021610_IsDuplicate] DEFAULT ((0)),
[t_Refcntd] [int] NULL,
[t_Refcntu] [int] NULL,
[t_ecoq] [float] NULL,
[t_item] [varchar] (16) NULL,
[t_itsu] [varchar] (16) NULL,
[t_mioq] [float] NULL,
[t_oltm] [smallint] NULL,
[t_pric] [float] NULL,
[t_suno] [varchar] (6) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_baan_ttdpur021610_1] ON [tsa].[ics_land_baan_ttdpur021610] ([t_item], [t_suno])
GO