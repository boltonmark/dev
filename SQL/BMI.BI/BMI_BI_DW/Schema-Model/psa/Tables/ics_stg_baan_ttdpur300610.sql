CREATE TABLE [psa].[ics_stg_baan_ttdpur300610]
(
[EtlRecordId] [bigint] NOT NULL IDENTITY(1, 1),
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[EtlUpdatedOn] [datetime] NOT NULL,
[EtlUpdatedBy] [varchar] (200) NOT NULL,
[EtlDeletedOn] [datetime] NULL,
[EtlDeletedBy] [varchar] (200) NULL,
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_baan_ttdpur300610_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_baan_ttdpur300610_IsIncomplete] DEFAULT ('N'),
[t_Refcntd] [int] NULL,
[t_Refcntu] [int] NULL,
[t_ccon] [int] NULL,
[t_ccor] [varchar] (3) NULL,
[t_ccrs] [varchar] (3) NULL,
[t_ccty] [varchar] (3) NULL,
[t_ccur] [varchar] (3) NULL,
[t_cdat] [datetime] NULL,
[t_cdec] [varchar] (3) NULL,
[t_cdes] [varchar] (30) NULL,
[t_cfrw] [varchar] (3) NULL,
[t_clan] [varchar] (3) NULL,
[t_cono] [int] NOT NULL,
[t_cpay] [varchar] (3) NULL,
[t_csts] [tinyint] NULL,
[t_cvyn] [tinyint] NULL,
[t_cwar] [varchar] (3) NULL,
[t_edat] [datetime] NULL,
[t_icap] [tinyint] NULL,
[t_icpr] [tinyint] NULL,
[t_icyp] [tinyint] NULL,
[t_refe] [varchar] (30) NULL,
[t_sdat] [datetime] NULL,
[t_suno] [varchar] (6) NULL,
[t_txta] [int] NULL,
[t_txtb] [int] NULL
)
GO
ALTER TABLE [psa].[ics_stg_baan_ttdpur300610] ADD CONSTRAINT [PK_psa_ics_stg_baan_ttdpur300610] PRIMARY KEY CLUSTERED  ([t_cono])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_baan_ttdpur300610', NULL, NULL
GO
