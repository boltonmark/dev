CREATE TABLE [psa].[ics_stg_SAP_GBR_EKBE]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_stg_SAP_GBR_EKBE_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_stg_SAP_GBR_EKBE_IsIncomplete] DEFAULT ('N'),
[MANDT] [nvarchar] (3) NOT NULL,
[EBELN] [nvarchar] (10) NOT NULL,
[EBELP] [nvarchar] (5) NOT NULL,
[ZEKKN] [nvarchar] (2) NOT NULL,
[VGABE] [nvarchar] (1) NOT NULL,
[GJAHR] [nvarchar] (4) NOT NULL,
[BELNR] [nvarchar] (10) NOT NULL,
[BUZEI] [nvarchar] (4) NOT NULL,
[BEWTP] [nvarchar] (1) NULL,
[BWART] [nvarchar] (3) NULL,
[BUDAT] [datetime] NULL,
[MENGE] [decimal] (13, 3) NULL,
[BPMNG] [decimal] (13, 3) NULL,
[DMBTR] [decimal] (13, 2) NULL,
[WRBTR] [decimal] (13, 2) NULL,
[WAERS] [nvarchar] (5) NULL,
[AREWR] [decimal] (13, 2) NULL,
[WESBS] [decimal] (13, 3) NULL,
[BPWES] [decimal] (13, 3) NULL,
[SHKZG] [nvarchar] (1) NULL,
[BWTAR] [nvarchar] (10) NULL,
[ELIKZ] [nvarchar] (1) NULL,
[XBLNR] [nvarchar] (16) NULL,
[LFGJA] [nvarchar] (4) NULL,
[LFBNR] [nvarchar] (10) NULL,
[LFPOS] [nvarchar] (4) NULL,
[GRUND] [nvarchar] (4) NULL,
[CPUDT] [datetime] NULL,
[CPUTM] [datetime] NULL,
[REEWR] [decimal] (13, 2) NULL,
[EVERE] [nvarchar] (2) NULL,
[REFWR] [decimal] (13, 2) NULL,
[MATNR] [nvarchar] (18) NULL,
[WERKS] [nvarchar] (4) NULL,
[XWSBR] [nvarchar] (1) NULL,
[ETENS] [nvarchar] (4) NULL,
[KNUMV] [nvarchar] (10) NULL,
[MWSKZ] [nvarchar] (2) NULL,
[LSMNG] [decimal] (13, 3) NULL,
[LSMEH] [nvarchar] (3) NULL,
[EMATN] [nvarchar] (18) NULL,
[AREWW] [decimal] (13, 2) NULL,
[HSWAE] [nvarchar] (5) NULL,
[BAMNG] [decimal] (13, 3) NULL,
[CHARG] [nvarchar] (10) NULL,
[BLDAT] [datetime] NULL,
[XWOFF] [nvarchar] (1) NULL,
[XUNPL] [nvarchar] (1) NULL,
[ERNAM] [nvarchar] (12) NULL,
[SRVPOS] [nvarchar] (18) NULL,
[PACKNO] [nvarchar] (10) NULL,
[INTROW] [nvarchar] (10) NULL,
[BEKKN] [nvarchar] (2) NULL,
[LEMIN] [nvarchar] (1) NULL,
[AREWB] [decimal] (13, 2) NULL,
[REWRB] [decimal] (13, 2) NULL,
[SAPRL] [nvarchar] (4) NULL,
[MENGE_POP] [decimal] (13, 3) NULL,
[BPMNG_POP] [decimal] (13, 3) NULL,
[DMBTR_POP] [decimal] (13, 2) NULL,
[WRBTR_POP] [decimal] (13, 2) NULL,
[WESBB] [decimal] (13, 3) NULL,
[BPWEB] [decimal] (13, 3) NULL,
[WEORA] [nvarchar] (1) NULL,
[AREWR_POP] [decimal] (13, 2) NULL,
[KUDIF] [decimal] (13, 2) NULL,
[RETAMT_FC] [decimal] (13, 2) NULL,
[RETAMT_LC] [decimal] (13, 2) NULL,
[RETAMTP_FC] [decimal] (13, 2) NULL,
[RETAMTP_LC] [decimal] (13, 2) NULL,
[XMACC] [nvarchar] (1) NULL,
[WKURS] [decimal] (9, 5) NULL,
[VBELN_ST] [nvarchar] (10) NULL,
[VBELP_ST] [nvarchar] (6) NULL,
[ET_UPD] [nvarchar] (1) NULL,
[J_SC_DIE_COMP_F] [nvarchar] (1) NULL
)
GO
ALTER TABLE [psa].[ics_stg_SAP_GBR_EKBE] ADD CONSTRAINT [psa_ics_stg_SAP_GBR_EKBE_PK] PRIMARY KEY CLUSTERED  ([BELNR], [EBELN], [MANDT], [EBELP], [BUZEI], [GJAHR], [VGABE], [ZEKKN])
GO
