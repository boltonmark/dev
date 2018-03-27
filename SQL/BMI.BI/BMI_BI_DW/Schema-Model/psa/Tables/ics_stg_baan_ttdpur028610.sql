CREATE TABLE [psa].[ics_stg_baan_ttdpur028610]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_baan_ttdpur028610_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_baan_ttdpur028610_IsIncomplete] DEFAULT ('N'),
[t_Refcntd] [int] NULL,
[t_Refcntu] [int] NULL,
[t_ccos] [varchar] (3) NOT NULL,
[t_crtr] [tinyint] NULL,
[t_frcs] [tinyint] NULL,
[t_item] [varchar] (16) NULL,
[t_llim] [float] NULL,
[t_luni] [tinyint] NULL,
[t_pono] [smallint] NOT NULL,
[t_puni] [tinyint] NULL,
[t_raun] [varchar] (3) NULL,
[t_ulim] [float] NULL
)
GO
ALTER TABLE [psa].[ics_stg_baan_ttdpur028610] ADD CONSTRAINT [PK_psa_ics_stg_baan_ttdpur028610] PRIMARY KEY CLUSTERED  ([t_ccos], [t_pono])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_baan_ttdpur028610', NULL, NULL
GO
