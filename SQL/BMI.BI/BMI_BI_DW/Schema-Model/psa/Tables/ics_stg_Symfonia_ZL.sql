CREATE TABLE [psa].[ics_stg_Symfonia_ZL]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_ZL_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_Symfonia_ZL_IsIncomplete] DEFAULT ('N'),
[aktywny] [bit] NULL,
[anulowany] [smallint] NULL,
[cena] [float] NULL,
[createdBy] [int] NULL,
[createdDate] [datetime] NULL,
[data] [datetime] NULL,
[data_real] [datetime] NULL,
[data_status] [datetime] NULL,
[dzial] [int] NULL,
[flag] [smallint] NULL,
[id] [int] NULL,
[idkh] [int] NULL,
[idrn] [int] NULL,
[idtw] [int] NULL,
[ilosc] [float] NULL,
[iloscGotowa] [float] NULL,
[katalog] [int] NULL,
[kod] [varchar] (40) NULL,
[modifiedBy] [int] NULL,
[modifiedDate] [datetime] NULL,
[nazwa] [varchar] (40) NULL,
[okres] [smallint] NULL,
[opis] [varchar] (100) NULL,
[rodzaj] [int] NULL,
[seria] [varchar] (5) NULL,
[seriadzial] [int] NULL,
[serianr] [int] NULL,
[status] [smallint] NULL,
[subtyp] [smallint] NULL,
[super] [int] NULL,
[typ] [smallint] NULL,
[typ_dk] [varchar] (4) NULL,
[znacznik] [smallint] NULL
)
GO
