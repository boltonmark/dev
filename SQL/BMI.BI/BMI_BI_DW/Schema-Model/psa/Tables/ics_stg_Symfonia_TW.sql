CREATE TABLE [psa].[ics_stg_Symfonia_TW]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_TW_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_TW_IsIncomplete] DEFAULT ('N'),
[aktywny] [bit] NULL,
[createdBy] [int] NULL,
[createdDate] [datetime] NULL,
[flag] [smallint] NULL,
[fundusz] [int] NULL,
[id] [int] NOT NULL,
[idlongname] [int] NULL,
[info] [smallint] NULL,
[jm] [varchar] (8) NULL,
[jmdef] [smallint] NULL,
[jmdod1] [varchar] (8) NULL,
[jmdod2] [varchar] (8) NULL,
[jmdom] [varchar] (8) NULL,
[jmuzup] [varchar] (8) NULL,
[katalog] [int] NULL,
[kod] [varchar] (40) NULL,
[kodpaskowy] [varchar] (150) NULL,
[kontofk] [varchar] (24) NULL,
[metoda] [smallint] NULL,
[modifiedBy] [int] NULL,
[modifiedDate] [datetime] NULL,
[nazwa] [varchar] (100) NULL,
[nazwaFiskal] [varchar] (40) NULL,
[negoc] [smallint] NULL,
[odwrotneObc] [smallint] NULL,
[pcn] [varchar] (10) NULL,
[przelicz] [smallint] NULL,
[przelit] [smallint] NULL,
[przeljmdod1] [float] NULL,
[przeljmdod2] [float] NULL,
[przeljmdom] [float] NULL,
[przelkg] [float] NULL,
[przeluz] [float] NULL,
[rodzaj] [int] NULL,
[stanmax] [float] NULL,
[stanmin] [float] NULL,
[subtyp] [smallint] NULL,
[super] [int] NULL,
[sww] [varchar] (20) NULL,
[szablon] [varchar] (40) NULL,
[typ] [smallint] NULL,
[typks] [varchar] (40) NULL,
[vat50] [smallint] NULL,
[vatsp] [int] NULL,
[zaokrag] [smallint] NULL,
[znacznik] [smallint] NULL
)
GO
ALTER TABLE [psa].[ics_stg_Symfonia_TW] ADD CONSTRAINT [PK_psa_ics_stg_Symfonia_TW] PRIMARY KEY CLUSTERED  ([id])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_Symfonia_TW', NULL, NULL
GO
