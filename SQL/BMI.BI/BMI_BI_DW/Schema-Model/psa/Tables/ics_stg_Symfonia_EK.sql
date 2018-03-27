CREATE TABLE [psa].[ics_stg_Symfonia_EK]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_EK_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_EK_IsIncomplete] DEFAULT ('N'),
[flag] [smallint] NULL,
[id] [int] NOT NULL,
[idEKwzor] [int] NULL,
[idSK] [int] NULL,
[kod] [varchar] (40) NULL,
[kwota] [smallint] NULL,
[mnoznik] [float] NULL,
[nazwa] [varchar] (100) NULL,
[nr_poz] [smallint] NULL,
[szablon] [varchar] (40) NULL,
[wymiar01] [varchar] (40) NULL,
[wymiar02] [varchar] (40) NULL,
[wymiar03] [varchar] (40) NULL,
[wymiar04] [varchar] (40) NULL,
[wymiar05] [varchar] (40) NULL,
[wymiar06] [varchar] (40) NULL,
[wymiar07] [varchar] (40) NULL,
[wymiar08] [varchar] (40) NULL,
[wymiar09] [varchar] (40) NULL,
[wymiar10] [varchar] (40) NULL
)
GO
ALTER TABLE [psa].[ics_stg_Symfonia_EK] ADD CONSTRAINT [PK_psa_ics_stg_Symfonia_EK] PRIMARY KEY CLUSTERED  ([id])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_Symfonia_EK', NULL, NULL
GO
