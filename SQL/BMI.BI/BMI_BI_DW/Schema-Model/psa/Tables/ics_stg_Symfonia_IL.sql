CREATE TABLE [psa].[ics_stg_Symfonia_IL]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_IL_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_IL_IsIncomplete] DEFAULT ('N'),
[data] [datetime] NULL,
[data_stan0] [datetime] NULL,
[flag] [smallint] NULL,
[id] [int] NOT NULL,
[magazyn] [int] NULL,
[nazwa] [varchar] (40) NULL,
[typ] [smallint] NULL,
[wlasciwosci] [smallint] NULL,
[wystawil] [int] NULL
)
GO
ALTER TABLE [psa].[ics_stg_Symfonia_IL] ADD CONSTRAINT [PK_psa_ics_stg_Symfonia_IL] PRIMARY KEY CLUSTERED  ([id])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_Symfonia_IL', NULL, NULL
GO
