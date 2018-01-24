CREATE TABLE [psa].[ics_stg_Symfonia_DT]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_DT_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_DT_IsIncomplete] DEFAULT ('N'),
[id] [int] NOT NULL,
[idkh] [int] NULL,
[idtw] [int] NULL
)
GO
ALTER TABLE [psa].[ics_stg_Symfonia_DT] ADD CONSTRAINT [PK_psa_ics_stg_Symfonia_DT] PRIMARY KEY CLUSTERED  ([id])
GO