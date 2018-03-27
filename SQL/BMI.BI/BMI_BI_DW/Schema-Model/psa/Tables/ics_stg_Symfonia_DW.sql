CREATE TABLE [psa].[ics_stg_Symfonia_DW]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_DW_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_DW_IsIncomplete] DEFAULT ('N'),
[bufor] [int] NULL,
[cena] [float] NULL,
[data] [datetime] NULL,
[flag] [smallint] NULL,
[id] [int] NOT NULL,
[iddkpz] [int] NULL,
[iddkzk] [int] NULL,
[iddw] [int] NULL,
[idkh] [int] NULL,
[idtw] [int] NULL,
[ilosc] [float] NULL,
[iloscdosp] [float] NULL,
[iloscPz] [float] NULL,
[kod] [varchar] (40) NULL,
[magazyn] [int] NULL,
[numer] [int] NULL,
[stan] [float] NULL,
[subtyp] [smallint] NULL,
[typ] [smallint] NULL,
[wartoscdosp] [float] NULL,
[wartoscst] [float] NULL
)
GO
ALTER TABLE [psa].[ics_stg_Symfonia_DW] ADD CONSTRAINT [PK_psa_ics_stg_Symfonia_DW] PRIMARY KEY CLUSTERED  ([id])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_Symfonia_DW', NULL, NULL
GO
