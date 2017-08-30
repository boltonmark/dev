CREATE TABLE [psa].[ics_stg_M3V10ved_POL_FSLEDG]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_psa_ics_stg_M3V10ved_POL_FSLEDG_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_psa_ics_stg_M3V10ved_POL_FSLEDG_IsDuplicate] DEFAULT ((0)),
[ESACBL] [numeric] (18, 0) NULL,
[ESACDT] [numeric] (18, 0) NULL,
[ESADAT] [numeric] (18, 0) NULL,
[ESAPRV] [numeric] (18, 0) NULL,
[ESARAT] [numeric] (18, 0) NULL,
[ESARCD] [numeric] (18, 0) NULL,
[ESBKID] [nchar] (5) NULL,
[ESBLBY] [nchar] (10) NULL,
[ESBLDT] [numeric] (18, 0) NULL,
[ESCHID] [nchar] (10) NULL,
[ESCHNO] [numeric] (18, 0) NULL,
[ESCINO] [nchar] (15) NULL,
[ESCLCD] [numeric] (18, 0) NULL,
[ESCLST] [numeric] (18, 0) NULL,
[ESCONO] [numeric] (18, 0) NOT NULL,
[ESCRST] [numeric] (18, 0) NULL,
[ESCRTP] [numeric] (18, 0) NULL,
[ESCUAM] [numeric] (18, 0) NULL,
[ESCUCD] [nchar] (3) NULL,
[ESCUCL] [nchar] (3) NULL,
[ESCUNO] [nchar] (10) NULL,
[ESDCAM] [numeric] (18, 0) NULL,
[ESDFPD] [numeric] (18, 0) NULL,
[ESDFPT] [numeric] (18, 0) NULL,
[ESDIVI] [nchar] (3) NOT NULL,
[ESDNRE] [nchar] (8) NULL,
[ESDTP5] [numeric] (18, 0) NULL,
[ESDUDT] [numeric] (18, 0) NULL,
[ESGRPD] [numeric] (18, 0) NULL,
[ESIIAM] [numeric] (18, 0) NULL,
[ESIICD] [numeric] (18, 0) NULL,
[ESIIST] [numeric] (18, 0) NULL,
[ESINYR] [numeric] (18, 0) NULL,
[ESIVCL] [nchar] (5) NULL,
[ESIVDT] [numeric] (18, 0) NULL,
[ESIVTP] [nchar] (2) NULL,
[ESJRNO] [numeric] (18, 0) NOT NULL,
[ESJSNO] [numeric] (18, 0) NOT NULL,
[ESLMDT] [numeric] (18, 0) NULL,
[ESLMTS] [numeric] (18, 0) NULL,
[ESLRDT] [numeric] (18, 0) NULL,
[ESPYCD] [nchar] (3) NULL,
[ESPYNO] [nchar] (10) NULL,
[ESPYRS] [nchar] (2) NULL,
[ESPYTP] [nchar] (2) NULL,
[ESRECO] [numeric] (18, 0) NULL,
[ESREDE] [numeric] (18, 0) NULL,
[ESRESP] [nchar] (10) NULL,
[ESRGDT] [numeric] (18, 0) NULL,
[ESRGTM] [numeric] (18, 0) NULL,
[ESRMBL] [numeric] (18, 0) NULL,
[ESRMQT] [numeric] (18, 0) NULL,
[ESRMST] [numeric] (18, 0) NULL,
[ESRVDT] [numeric] (18, 0) NULL,
[ESSAGS] [numeric] (18, 0) NULL,
[ESSLOP] [numeric] (18, 0) NULL,
[ESSMCD] [nchar] (4) NULL,
[ESTDSC] [nchar] (10) NULL,
[ESTECD] [nchar] (3) NULL,
[ESTEPY] [nchar] (3) NULL,
[ESTRCD] [numeric] (18, 0) NULL,
[ESTXID] [numeric] (18, 0) NULL,
[ESVONO] [numeric] (18, 0) NULL,
[ESVSER] [nchar] (3) NULL,
[ESVTAM] [numeric] (18, 0) NULL,
[ESYEA4] [numeric] (18, 0) NOT NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10ved_POL_FSLEDG] ADD CONSTRAINT [PK_psa_ics_stg_M3V10ved_POL_FSLEDG] PRIMARY KEY CLUSTERED  ([ESCONO], [ESDIVI], [ESJRNO], [ESJSNO], [ESYEA4])
GO
