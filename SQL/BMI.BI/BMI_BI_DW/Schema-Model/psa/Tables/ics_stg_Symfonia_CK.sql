CREATE TABLE [psa].[ics_stg_Symfonia_CK]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_CK_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_CK_IsIncomplete] DEFAULT ('N'),
[aktywny] [bit] NULL,
[cenowy] [smallint] NULL,
[cykliczny] [smallint] NULL,
[czw] [bit] NULL,
[datado] [datetime] NULL,
[dataod] [datetime] NULL,
[dzial] [int] NULL,
[id] [int] NOT NULL,
[kod] [varchar] (40) NULL,
[kontrah] [smallint] NULL,
[laczony] [smallint] NULL,
[nd] [bit] NULL,
[numer] [smallint] NULL,
[numerlacz] [smallint] NULL,
[opis] [varchar] (80) NULL,
[pon] [bit] NULL,
[pt] [bit] NULL,
[sb] [bit] NULL,
[sr] [bit] NULL,
[wt] [bit] NULL,
[znacznik] [smallint] NULL
)
GO
ALTER TABLE [psa].[ics_stg_Symfonia_CK] ADD CONSTRAINT [PK_psa_ics_stg_Symfonia_CK] PRIMARY KEY CLUSTERED  ([id])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_Symfonia_CK', NULL, NULL
GO
