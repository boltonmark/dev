CREATE TABLE [psa].[ics_stg_M3V10ved_POL_FRCALP]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ved_FRCALP_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ved_FRCALP_IsIncomplete] DEFAULT ('N'),
[HEANBR] [numeric] (9, 0) NULL,
[HEBANO] [nvarchar] (20) NULL,
[HEBJNO] [nvarchar] (18) NOT NULL,
[HEBSOB] [numeric] (15, 2) NULL,
[HECANB] [numeric] (17, 0) NULL,
[HECHID] [nchar] (10) NULL,
[HECHNO] [numeric] (3, 0) NULL,
[HECONO] [numeric] (18, 0) NOT NULL,
[HEFACI] [nchar] (3) NULL,
[HEFSRC] [nchar] (1) NULL,
[HEGTYP] [nchar] (2) NULL,
[HEHACP] [numeric] (17, 6) NULL,
[HEITNO] [nchar] (15) NOT NULL,
[HELMDT] [numeric] (8, 0) NULL,
[HELMTS] [numeric] (18, 0) NULL,
[HEMFCO] [numeric] (17, 6) NULL,
[HEMRGD] [numeric] (18, 0) NOT NULL,
[HEMRGT] [numeric] (18, 0) NOT NULL,
[HERGDT] [numeric] (8, 0) NULL,
[HERGTM] [numeric] (6, 0) NULL,
[HETMSX] [numeric] (18, 0) NOT NULL,
[HETRDT] [numeric] (18, 0) NOT NULL,
[HETRQT] [numeric] (15, 6) NULL,
[HETRTM] [numeric] (18, 0) NOT NULL,
[HETRTP] [nchar] (3) NULL,
[HETTID] [nchar] (3) NULL,
[HETTYP] [numeric] (2, 0) NULL,
[HEWHLO] [nchar] (3) NOT NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10ved_POL_FRCALP] ADD CONSTRAINT [PK_psa_ics_stg_M3V10ved_POL_FRCALP] PRIMARY KEY CLUSTERED  ([HEBJNO], [HECONO], [HEITNO], [HEMRGD], [HEMRGT], [HETMSX], [HETRDT], [HETRTM], [HEWHLO])
GO
