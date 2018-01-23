CREATE TABLE [tsa].[ics_land_Symfonia_DK]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_DK_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_Symfonia_DK_IsDuplicate] DEFAULT ((0)),
[aktywny] [bit] NULL,
[anulowany] [smallint] NULL,
[bufor] [smallint] NULL,
[createdBy] [int] NULL,
[createdDate] [datetime] NULL,
[data] [datetime] NULL,
[data_obcy] [datetime] NULL,
[datarej] [datetime] NULL,
[datarej2] [datetime] NULL,
[datasp] [datetime] NULL,
[datawplywu] [datetime] NULL,
[dataZest1] [datetime] NULL,
[eFaktura] [smallint] NULL,
[exp_fk] [smallint] NULL,
[flag] [smallint] NULL,
[formaplatn] [int] NULL,
[grupacen] [smallint] NULL,
[guid] [uniqueidentifier] NULL,
[id] [int] NULL,
[iddokkoryg] [int] NULL,
[info] [smallint] NULL,
[jpk] [smallint] NULL,
[katalog] [int] NULL,
[khadid] [int] NULL,
[khid] [int] NULL,
[kod] [varchar] (40) NULL,
[kod_obcy] [varchar] (40) NULL,
[koszt] [float] NULL,
[kosztAproksymowany] [float] NULL,
[kurs] [float] NULL,
[kursDoch] [float] NULL,
[magazyn] [int] NULL,
[modifiedBy] [int] NULL,
[modifiedDate] [datetime] NULL,
[nazwa] [varchar] (40) NULL,
[netto] [float] NULL,
[odadid] [int] NULL,
[odebrane] [varchar] (40) NULL,
[odid] [int] NULL,
[ok] [smallint] NULL,
[okres] [smallint] NULL,
[opis] [varchar] (80) NULL,
[paragon] [int] NULL,
[plattermin] [datetime] NULL,
[plattyp] [int] NULL,
[rabat] [float] NULL,
[rejestrVat] [int] NULL,
[rejestrVat2] [int] NULL,
[rodzaj] [int] NULL,
[rozlmg] [smallint] NULL,
[rr] [smallint] NULL,
[schemat] [varchar] (4) NULL,
[seria] [varchar] (5) NULL,
[seriadzial] [int] NULL,
[serianr] [int] NULL,
[statusFK] [smallint] NULL,
[statusRDF] [smallint] NULL,
[subtyp] [smallint] NULL,
[super] [int] NULL,
[typ] [smallint] NULL,
[typ_dk] [varchar] (4) NULL,
[typceny] [int] NULL,
[vat] [float] NULL,
[walBrutto] [float] NULL,
[walNetto] [float] NULL,
[waluta] [varchar] (3) NULL,
[wartoscSp] [float] NULL,
[wartPrzychod] [float] NULL,
[wplaty] [float] NULL,
[wystawil] [int] NULL,
[znacznik] [smallint] NULL,
[zyskdod] [float] NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_Symfonia_DK_1] ON [tsa].[ics_land_Symfonia_DK] ([id])
GO
