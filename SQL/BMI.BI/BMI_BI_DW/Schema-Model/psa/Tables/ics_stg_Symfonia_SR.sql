CREATE TABLE [psa].[ics_stg_Symfonia_SR]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_SR_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_SR_IsIncomplete] DEFAULT ('N'),
[id] [int] NOT NULL,
[idrj] [int] NULL,
[stannl] [float] NULL,
[stannlwal] [float] NULL,
[stanpl] [float] NULL,
[stanplwal] [float] NULL,
[waluta] [varchar] (3) NULL
)
GO
ALTER TABLE [psa].[ics_stg_Symfonia_SR] ADD CONSTRAINT [PK_psa_ics_stg_Symfonia_SR] PRIMARY KEY CLUSTERED  ([id])
GO