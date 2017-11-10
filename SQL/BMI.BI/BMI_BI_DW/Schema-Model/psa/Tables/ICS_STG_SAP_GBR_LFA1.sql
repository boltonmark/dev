CREATE TABLE [psa].[ics_stg_SAP_GBR_LFA1]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_stg_SAP_GBR_LFA1_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_stg_SAP_GBR_LFA1_IsIncomplete] DEFAULT ('N'),
[ACTSS] [nvarchar] (3) NULL,
[ADRNR] [nvarchar] (10) NULL,
[ALC] [nvarchar] (8) NULL,
[ANRED] [nvarchar] (15) NULL,
[BAHNS] [nvarchar] (25) NULL,
[BBBNR] [nvarchar] (7) NULL,
[BBSNR] [nvarchar] (5) NULL,
[BEGRU] [nvarchar] (4) NULL,
[BRSCH] [nvarchar] (4) NULL,
[BUBKZ] [nvarchar] (1) NULL,
[CARRIER_CONF] [nvarchar] (1) NULL,
[CNAE] [nvarchar] (7) NULL,
[COMSIZE] [nvarchar] (2) NULL,
[CONFS] [nvarchar] (1) NULL,
[CRC_NUM] [nvarchar] (25) NULL,
[CRTN] [nvarchar] (1) NULL,
[DATLT] [nvarchar] (14) NULL,
[DECREGPC] [nvarchar] (2) NULL,
[DLGRP] [nvarchar] (4) NULL,
[DTAMS] [nvarchar] (1) NULL,
[DTAWS] [nvarchar] (2) NULL,
[DUEFL] [nvarchar] (1) NULL,
[EMNFR] [nvarchar] (10) NULL,
[ERDAT] [datetime] NULL,
[ERNAM] [nvarchar] (12) NULL,
[ESRNR] [nvarchar] (11) NULL,
[EXP] [nvarchar] (3) NULL,
[FISKN] [nvarchar] (10) NULL,
[FISKU] [nvarchar] (10) NULL,
[FITYP] [nvarchar] (2) NULL,
[GBDAT] [datetime] NULL,
[GBORT] [nvarchar] (25) NULL,
[ICMSTAXPAY] [nvarchar] (2) NULL,
[INDTYP] [nvarchar] (2) NULL,
[IPISP] [nvarchar] (1) NULL,
[J_1KFREPRE] [nvarchar] (10) NULL,
[J_1KFTBUS] [nvarchar] (30) NULL,
[J_1KFTIND] [nvarchar] (30) NULL,
[J_SC_CAPITAL] [decimal] (18, 0) NULL,
[J_SC_CURRENCY] [nvarchar] (5) NULL,
[KONZS] [nvarchar] (10) NULL,
[KRAUS] [nvarchar] (11) NULL,
[KTOCK] [nvarchar] (4) NULL,
[KTOKK] [nvarchar] (4) NULL,
[KUNNR] [nvarchar] (10) NULL,
[LAND1] [nvarchar] (3) NULL,
[LEGALNAT] [nvarchar] (4) NULL,
[LFURL] [nvarchar] (132) NULL,
[LIFNR] [nvarchar] (10) NOT NULL,
[LNRZA] [nvarchar] (10) NULL,
[LOEVM] [nvarchar] (1) NULL,
[LTSNA] [nvarchar] (1) NULL,
[LZONE] [nvarchar] (10) NULL,
[MANDT] [nvarchar] (3) NULL,
[MCOD1] [nvarchar] (25) NULL,
[MCOD2] [nvarchar] (25) NULL,
[MCOD3] [nvarchar] (25) NULL,
[MIN_COMP] [nvarchar] (1) NULL,
[NAME1] [nvarchar] (35) NULL,
[NAME2] [nvarchar] (35) NULL,
[NAME3] [nvarchar] (35) NULL,
[NAME4] [nvarchar] (35) NULL,
[NODEL] [nvarchar] (1) NULL,
[ORT01] [nvarchar] (35) NULL,
[ORT02] [nvarchar] (35) NULL,
[PFACH] [nvarchar] (10) NULL,
[PFORT] [nvarchar] (35) NULL,
[PLKAL] [nvarchar] (2) NULL,
[PMT_OFFICE] [nvarchar] (5) NULL,
[PODKZB] [nvarchar] (1) NULL,
[PROFS] [nvarchar] (30) NULL,
[PSOFG] [nvarchar] (10) NULL,
[PSOHS] [nvarchar] (6) NULL,
[PSOIS] [nvarchar] (20) NULL,
[PSON1] [nvarchar] (35) NULL,
[PSON2] [nvarchar] (35) NULL,
[PSON3] [nvarchar] (35) NULL,
[PSOST] [nvarchar] (28) NULL,
[PSOTL] [nvarchar] (20) NULL,
[PSOVN] [nvarchar] (35) NULL,
[PSTL2] [nvarchar] (10) NULL,
[PSTLZ] [nvarchar] (10) NULL,
[QSSYS] [nvarchar] (4) NULL,
[QSSYSDAT] [datetime] NULL,
[REGIO] [nvarchar] (3) NULL,
[REGSS] [nvarchar] (1) NULL,
[REVDB] [datetime] NULL,
[RG] [nvarchar] (11) NULL,
[RGDATE] [datetime] NULL,
[RIC] [nvarchar] (11) NULL,
[RNE] [nvarchar] (10) NULL,
[RNEDATE] [datetime] NULL,
[SCACD] [nvarchar] (4) NULL,
[SCHEDULING_TYPE] [nvarchar] (1) NULL,
[SEXKZ] [nvarchar] (1) NULL,
[SFRGR] [nvarchar] (4) NULL,
[SORTL] [nvarchar] (10) NULL,
[SPERM] [nvarchar] (1) NULL,
[SPERQ] [nvarchar] (2) NULL,
[SPERR] [nvarchar] (1) NULL,
[SPERZ] [nvarchar] (1) NULL,
[SPRAS] [nvarchar] (1) NULL,
[STAGING_TIME] [decimal] (18, 0) NULL,
[STCD1] [nvarchar] (16) NULL,
[STCD2] [nvarchar] (11) NULL,
[STCD3] [nvarchar] (18) NULL,
[STCD4] [nvarchar] (18) NULL,
[STCD5] [nvarchar] (60) NULL,
[STCDT] [nvarchar] (2) NULL,
[STCEG] [nvarchar] (20) NULL,
[STENR] [nvarchar] (18) NULL,
[STGDL] [nvarchar] (2) NULL,
[STKZA] [nvarchar] (1) NULL,
[STKZN] [nvarchar] (1) NULL,
[STKZU] [nvarchar] (1) NULL,
[STRAS] [nvarchar] (35) NULL,
[SUBMI_RELEVANT] [nvarchar] (1) NULL,
[TAXBS] [nvarchar] (1) NULL,
[TDT] [nvarchar] (2) NULL,
[TELBX] [nvarchar] (15) NULL,
[TELF1] [nvarchar] (16) NULL,
[TELF2] [nvarchar] (16) NULL,
[TELFX] [nvarchar] (31) NULL,
[TELTX] [nvarchar] (30) NULL,
[TELX1] [nvarchar] (30) NULL,
[TERM_LI] [nvarchar] (1) NULL,
[TRANSPORT_CHAIN] [nvarchar] (10) NULL,
[TXJCD] [nvarchar] (15) NULL,
[UF] [nvarchar] (2) NULL,
[UPDAT] [datetime] NULL,
[UPTIM] [datetime] NULL,
[VBUND] [nvarchar] (6) NULL,
[WERKR] [nvarchar] (1) NULL,
[WERKS] [nvarchar] (4) NULL,
[XCPDK] [nvarchar] (1) NULL,
[XLFZA] [nvarchar] (1) NULL,
[XZEMP] [nvarchar] (1) NULL
)
GO
ALTER TABLE [psa].[ics_stg_SAP_GBR_LFA1] ADD CONSTRAINT [psa_ics_stg_SAP_GBR_LFA1_PK] PRIMARY KEY CLUSTERED  ([LIFNR])
GO
