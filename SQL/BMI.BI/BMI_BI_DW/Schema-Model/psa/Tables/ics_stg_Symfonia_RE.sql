CREATE TABLE [psa].[ics_stg_Symfonia_RE]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_RE_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_RE_IsIncomplete] DEFAULT ('N'),
[id] [int] NOT NULL,
[idtw] [int] NULL,
[ilosc] [float] NULL,
[super] [int] NULL
)
GO
ALTER TABLE [psa].[ics_stg_Symfonia_RE] ADD CONSTRAINT [PK_psa_ics_stg_Symfonia_RE] PRIMARY KEY CLUSTERED  ([id])
GO