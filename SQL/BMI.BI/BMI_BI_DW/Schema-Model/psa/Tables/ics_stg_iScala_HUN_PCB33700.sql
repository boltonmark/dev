CREATE TABLE [psa].[ics_stg_iScala_HUN_PCB33700]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_iScala_HUN_PCB33700_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_iScala_HUN_PCB33700_IsIncomplete] DEFAULT ('N'),
[PCB3001] [nchar] (38) NOT NULL,
[PCB3002] [int] NOT NULL,
[PCB3003] [nchar] (38) NULL
)
GO
ALTER TABLE [psa].[ics_stg_iScala_HUN_PCB33700] ADD CONSTRAINT [PK_psa_ics_stg_iScala_HUN_PCB33700] PRIMARY KEY CLUSTERED  ([PCB3001], [PCB3002])
GO
