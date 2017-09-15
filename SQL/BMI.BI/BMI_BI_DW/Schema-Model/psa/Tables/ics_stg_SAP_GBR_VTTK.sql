CREATE TABLE [psa].[ics_stg_SAP_GBR_VTTK]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_SAP_GBR_VTTK_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_SAP_GBR_VTTK_IsIncomplete] DEFAULT ('N'),
[MANDT] [nvarchar] (3) NULL,
[TKNUM] [nvarchar] (10) NULL,
[VBTYP] [nvarchar] (1) NULL,
[SHTYP] [nvarchar] (4) NULL,
[TPLST] [nvarchar] (4) NULL,
[ERNAM] [nvarchar] (12) NULL,
[ERDAT] [datetime] NULL,
[ERZET] [datetime] NULL,
[AENAM] [nvarchar] (12) NULL,
[AEDAT] [datetime] NULL,
[AEZET] [datetime] NULL,
[STERM] [nvarchar] (1) NULL,
[ABFER] [nvarchar] (1) NULL,
[ABWST] [nvarchar] (1) NULL,
[BFART] [nvarchar] (1) NULL,
[VSART] [nvarchar] (2) NULL,
[VSAVL] [nvarchar] (2) NULL,
[VSANL] [nvarchar] (2) NULL,
[LAUFK] [nvarchar] (1) NULL,
[VSBED] [nvarchar] (2) NULL,
[ROUTE] [nvarchar] (6) NULL,
[SIGNI] [nvarchar] (20) NULL,
[EXTI1] [nvarchar] (20) NULL,
[EXTI2] [nvarchar] (20) NULL,
[TPBEZ] [nvarchar] (20) NULL,
[STDIS] [nvarchar] (1) NULL,
[DTDIS] [datetime] NULL,
[UZDIS] [datetime] NULL,
[STREG] [nvarchar] (1) NULL,
[DPREG] [datetime] NULL,
[UPREG] [datetime] NULL,
[DAREG] [datetime] NULL,
[UAREG] [datetime] NULL,
[STLBG] [nvarchar] (1) NULL,
[DPLBG] [datetime] NULL,
[UPLBG] [datetime] NULL,
[DALBG] [datetime] NULL,
[UALBG] [datetime] NULL,
[STLAD] [nvarchar] (1) NULL,
[DPLEN] [datetime] NULL,
[UPLEN] [datetime] NULL,
[DALEN] [datetime] NULL,
[UALEN] [datetime] NULL,
[STABF] [nvarchar] (1) NULL,
[DPABF] [datetime] NULL,
[UPABF] [datetime] NULL,
[DTABF] [datetime] NULL,
[UZABF] [datetime] NULL,
[STTBG] [nvarchar] (1) NULL,
[DPTBG] [datetime] NULL,
[UPTBG] [datetime] NULL,
[DATBG] [datetime] NULL,
[UATBG] [datetime] NULL,
[STTEN] [nvarchar] (1) NULL,
[DPTEN] [datetime] NULL,
[UPTEN] [datetime] NULL,
[DATEN] [datetime] NULL,
[UATEN] [datetime] NULL,
[STTRG] [nvarchar] (1) NULL,
[TDLNR] [nvarchar] (10) NULL,
[TERNR] [nvarchar] (12) NULL,
[PKSTK] [nvarchar] (1) NULL,
[DTMEG] [nvarchar] (3) NULL,
[DTMEV] [nvarchar] (3) NULL,
[DISTZ] [decimal] (13, 3) NULL,
[MEDST] [nvarchar] (3) NULL,
[FAHZT] [decimal] (5, 2) NULL,
[GESZT] [decimal] (5, 2) NULL,
[MEIZT] [nvarchar] (3) NULL,
[STAFO] [nvarchar] (6) NULL,
[FBSTA] [nvarchar] (1) NULL,
[FBGST] [nvarchar] (1) NULL,
[ARSTA] [nvarchar] (1) NULL,
[ARGST] [nvarchar] (1) NULL,
[STERM_DONE] [nvarchar] (1) NULL,
[VSE_FRK] [nvarchar] (1) NULL,
[KKALSM] [nvarchar] (6) NULL,
[SDABW] [nvarchar] (4) NULL,
[FRKRL] [nvarchar] (1) NULL,
[GESZTD] [decimal] (11, 0) NULL,
[FAHZTD] [decimal] (11, 0) NULL,
[GESZTDA] [decimal] (11, 0) NULL,
[FAHZTDA] [decimal] (11, 0) NULL,
[ROCPY_DONE] [nvarchar] (1) NULL,
[HANDLE] [nvarchar] (22) NULL,
[TSEGFL] [nvarchar] (1) NULL,
[TSEGTP] [nvarchar] (10) NULL,
[ADD01] [nvarchar] (10) NULL,
[ADD02] [nvarchar] (10) NULL,
[ADD03] [nvarchar] (10) NULL,
[ADD04] [nvarchar] (10) NULL,
[TEXT1] [nvarchar] (40) NULL,
[TEXT2] [nvarchar] (40) NULL,
[TEXT3] [nvarchar] (40) NULL,
[TEXT4] [nvarchar] (40) NULL,
[PROLI] [nvarchar] (3) NULL,
[DGTLOCK] [nvarchar] (1) NULL,
[DGMDDAT] [datetime] NULL,
[CONT_DG] [nvarchar] (1) NULL,
[WARZTD] [decimal] (11, 0) NULL,
[WARZTDA] [decimal] (11, 0) NULL,
[AULWE] [nvarchar] (10) NULL,
[TNDRST] [nvarchar] (2) NULL,
[TNDRRC] [nvarchar] (2) NULL,
[TNDR_TEXT] [nvarchar] (80) NULL,
[TNDRDAT] [datetime] NULL,
[TNDRZET] [datetime] NULL,
[TNDR_MAXP] [decimal] (15, 2) NULL,
[TNDR_MAXC] [nvarchar] (5) NULL,
[TNDR_ACTP] [decimal] (15, 2) NULL,
[TNDR_ACTC] [nvarchar] (5) NULL,
[TNDR_CARR] [nvarchar] (10) NULL,
[TNDR_CRNM] [nvarchar] (35) NULL,
[TNDR_TRKID] [nvarchar] (35) NULL,
[TNDR_EXPD] [datetime] NULL,
[TNDR_EXPT] [datetime] NULL,
[TNDR_ERPD] [datetime] NULL,
[TNDR_ERPT] [datetime] NULL,
[TNDR_LTPD] [datetime] NULL,
[TNDR_LTPT] [datetime] NULL,
[TNDR_ERDD] [datetime] NULL,
[TNDR_ERDT] [datetime] NULL,
[TNDR_LTDD] [datetime] NULL,
[TNDR_LTDT] [datetime] NULL,
[TNDR_LDLG] [decimal] (13, 3) NULL,
[TNDR_LDLU] [nvarchar] (3) NULL,
[KZHULFR] [nvarchar] (1) NULL,
[ALLOWED_TWGT] [decimal] (8, 0) NULL,
[VLSTK] [nvarchar] (1) NULL,
[VERURSYS] [nvarchar] (10) NULL,
[CM_IDENT] [nvarchar] (12) NULL,
[CM_SEQUENCE] [nvarchar] (4) NULL,
[EXT_FREIGHT_ORD] [nvarchar] (20) NULL,
[EXT_TM_SYS] [nvarchar] (60) NULL,
[_BEV1_RPFAR1] [nvarchar] (10) NULL,
[_BEV1_RPFAR2] [nvarchar] (10) NULL,
[_BEV1_RPMOWA] [nvarchar] (18) NULL,
[_BEV1_RPANHAE] [nvarchar] (18) NULL,
[_BEV1_RPFLGNR] [nvarchar] (5) NULL,
[_VSO_R_STATUS] [nvarchar] (1) NULL
)
GO
ALTER TABLE [psa].[ics_stg_SAP_GBR_VTTK] ADD CONSTRAINT [AK_psa_ics_stg_SAP_GBR_VTTK_EtlRecordId] UNIQUE CLUSTERED  ([EtlRecordId])
GO