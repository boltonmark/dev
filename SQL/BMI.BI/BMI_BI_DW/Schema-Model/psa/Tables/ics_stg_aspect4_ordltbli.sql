CREATE TABLE [psa].[ics_stg_aspect4_ordltbli]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_aspect4_ordltbli_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_aspect4_ordltbli_IsIncomplete] DEFAULT ('N'),
[ORDL_I_STATUS_KODE] [decimal] (1, 0) NULL,
[ORDL_I_RESSOURCETYPE] [nvarchar] (1) NULL,
[ORDL_I_TRANSTYPE] [nvarchar] (1) NULL,
[ORDL_I_ORDREART] [nvarchar] (1) NULL,
[ORDL_I_ORDREKLASSE] [nvarchar] (1) NULL,
[ORDL_I_RECORDTYPE] [nvarchar] (2) NULL,
[ORDL_I_ORDRENR] [decimal] (9, 0) NOT NULL,
[ORDL_I_LEV_LQBENR] [decimal] (4, 0) NOT NULL,
[ORDL_I_LINIENR] [decimal] (4, 0) NOT NULL,
[ORDL_I_KONCRN] [decimal] (3, 0) NULL,
[ORDL_I_FIRMA] [decimal] (3, 0) NULL,
[ORDL_I_OPDAT_DATO] [decimal] (8, 0) NULL,
[ORDL_I_OPDAT_AF] [nvarchar] (10) NULL,
[ORDL_I_OPRET_DATO] [decimal] (8, 0) NULL,
[ORDL_I_OPRET_AF] [nvarchar] (10) NULL,
[ORDL_I_ORDRESTATUS] [decimal] (2, 0) NULL,
[ORDL_I_PRIORITET] [decimal] (2, 0) NULL,
[ORDL_I_VARENR] [nvarchar] (16) NULL,
[ORDL_I_LEV_TERMIN_DT] [decimal] (8, 0) NULL,
[ORDL_I_LEV_TERMIN_KL] [decimal] (4, 0) NULL,
[ORDL_I_PRIS] [decimal] (11, 2) NULL,
[ORDL_I_BELQB] [decimal] (11, 2) NULL,
[ORDL_I_BESTILT_ANTAL] [decimal] (13, 5) NULL,
[ORDL_I_LEVERET_ANTAL] [decimal] (13, 5) NULL,
[ORDL_I_RABAT] [decimal] (11, 2) NULL,
[ORDL_I_LAGR_NUMMER] [nvarchar] (8) NULL,
[ORDL_I_LAGR_PARTI] [nvarchar] (24) NULL,
[ORDL_I_UDF1] [nvarchar] (5) NULL,
[ORDL_I_UDF2] [nvarchar] (5) NULL,
[ORDL_I_UDF3] [nvarchar] (5) NULL,
[ORDL_I_UDF4] [nvarchar] (5) NULL,
[ORDL_I_UDF5] [nvarchar] (5) NULL,
[ORDL_I_ANTAL_U_LEVERING] [decimal] (13, 5) NULL,
[ORDL_I_OPR_BESTILT_ANTAL] [decimal] (13, 5) NULL,
[ORDL_I_LEVERANCE_NR] [decimal] (4, 0) NULL,
[ORDL_I_LEVERANCE_DATO] [decimal] (8, 0) NULL,
[ORDL_I_ORDREPOLITIK] [nvarchar] (2) NULL,
[ORDL_I_PRISANGIVELSE] [decimal] (6, 0) NULL,
[ORDL_I_RABATTYPE] [nvarchar] (1) NULL,
[ORDL_I_PRISRABAT] [nvarchar] (1) NULL,
[ORDL_I_MAENGDERABAT] [nvarchar] (1) NULL,
[ORDL_I_PRISLISTE] [nvarchar] (1) NULL,
[ORDL_LEVERANDQR_VARENR] [nvarchar] (16) NULL,
[ORDL_LEVERANDQR_VARENAVN] [nvarchar] (255) NULL,
[ORDL_I_SPECIALAFTALE] [nvarchar] (1) NULL,
[ORDL_I_GRUNDPRIS_BRUGES_IKKE] [decimal] (11, 2) NULL,
[ORDL_I_KOSTBELQB] [decimal] (11, 2) NULL,
[ORDL_I_AFSLUTTES] [nvarchar] (1) NULL,
[ORDL_I_OPR_LEV_TERMIN_DT] [decimal] (8, 0) NULL,
[ORDL_I_OPR_LEV_TERMIN_KL] [decimal] (4, 0) NULL,
[ORDL_LEVERANDQR_FAKT_DATO] [decimal] (8, 0) NULL,
[ORDL_I_QNS_LEV_TERMIN_DT] [decimal] (8, 0) NULL,
[ORDL_I_QNS_LEV_TERMIN_KL] [decimal] (4, 0) NULL,
[ORDL_LEVDQR] [nvarchar] (16) NULL,
[ORDL_ANTFK] [decimal] (13, 5) NULL,
[ORDL_ANTUFK] [decimal] (13, 5) NULL,
[ORDL_FAKBEL] [decimal] (11, 2) NULL,
[ORDL_I_PROJNR] [decimal] (9, 0) NULL,
[ORDL_I_AARSAG] [nvarchar] (5) NULL,
[ORDL_I_LOKAT] [nvarchar] (10) NULL,
[ORDL_I_TLAGER] [nvarchar] (8) NULL,
[ORDL_I_TPARTI] [nvarchar] (24) NULL,
[ORDL_I_TLOKAT] [nvarchar] (10) NULL,
[ORDL_I_FRKDAT] [decimal] (8, 0) NULL,
[ORDL_I_FRKKL] [decimal] (4, 0) NULL,
[ORDL_ANTLLG] [decimal] (13, 5) NULL,
[ORDL_BEHTYP] [nvarchar] (2) NULL,
[ORDL_ANTUFL] [decimal] (13, 5) NULL,
[ORDL_I_KORREKTION] [decimal] (11, 2) NULL,
[ORDL_I_TOTALRABAT] [nvarchar] (1) NULL,
[ORDL_I_PRISGRUPPE] [nvarchar] (2) NULL,
[ORDL_I_PRIS_DATO] [decimal] (8, 0) NULL,
[ORDL_I_ULPCT] [decimal] (5, 2) NULL,
[ORDL_I_OLPCT] [decimal] (5, 2) NULL,
[ORDL_I_SUPKOR] [decimal] (5, 2) NULL,
[ORDL_ITS] [decimal] (8, 0) NULL,
[ORDL_I_ANBESI] [decimal] (13, 5) NULL,
[ORDL_I_PAR1] [nvarchar] (10) NULL,
[ORDL_I_NR1] [nvarchar] (16) NULL,
[ORDL_I_TEKST1] [nvarchar] (255) NULL,
[ORDL_I_MGD1] [decimal] (13, 5) NULL,
[ORDL_I_MGD2] [decimal] (13, 5) NULL,
[ORDL_I_MGD3] [decimal] (13, 5) NULL,
[ORDL_I_BELQB1] [decimal] (11, 2) NULL,
[ORDL_I_BELQB2] [decimal] (11, 2) NULL,
[ORDL_I_BELQB3] [decimal] (11, 2) NULL
)
GO
ALTER TABLE [psa].[ics_stg_aspect4_ordltbli] ADD CONSTRAINT [PK_stg_aspect4_ordltbli] PRIMARY KEY CLUSTERED  ([ORDL_I_ORDRENR], [ORDL_I_LEV_LQBENR], [ORDL_I_LINIENR])
GO
