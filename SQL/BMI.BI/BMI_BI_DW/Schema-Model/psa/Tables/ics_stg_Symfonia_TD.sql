CREATE TABLE [psa].[ics_stg_Symfonia_TD]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_TD_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_TD_IsIncomplete] DEFAULT ('N'),
[aktywny] [bit] NULL,
[charakter] [smallint] NULL,
[datarej] [smallint] NULL,
[flag] [smallint] NULL,
[id] [int] NOT NULL,
[idDokKoryg] [int] NULL,
[idDokSkojarz] [int] NULL,
[idDokZal] [int] NULL,
[idDokZalKon] [int] NULL,
[idRejestr] [int] NULL,
[idRejestrNaliczony] [int] NULL,
[idRejestrNP] [int] NULL,
[idRejestrOO] [int] NULL,
[idSchematKs] [int] NULL,
[idSeriaKoryg] [int] NULL,
[idSeriaSkojarz] [int] NULL,
[idSeriaZal] [int] NULL,
[idSeriaZalKon] [int] NULL,
[jednostka] [smallint] NULL,
[jpkRodzaj] [smallint] NULL,
[kod] [varchar] (40) NULL,
[nazwa] [varchar] (100) NULL,
[opis] [varchar] (100) NULL,
[symbolFK] [varchar] (4) NULL,
[terminRozl] [smallint] NULL,
[typ] [smallint] NULL,
[typFK] [varchar] (4) NULL
)
GO
ALTER TABLE [psa].[ics_stg_Symfonia_TD] ADD CONSTRAINT [PK_psa_ics_stg_Symfonia_TD] PRIMARY KEY CLUSTERED  ([id])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_Symfonia_TD', NULL, NULL
GO
