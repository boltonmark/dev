CREATE TABLE [tsa].[ics_land_Symfonia_TD]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_TD_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_TD_IsDuplicate] DEFAULT ((0)),
[aktywny] [bit] NULL,
[charakter] [smallint] NULL,
[datarej] [smallint] NULL,
[flag] [smallint] NULL,
[id] [int] NULL,
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