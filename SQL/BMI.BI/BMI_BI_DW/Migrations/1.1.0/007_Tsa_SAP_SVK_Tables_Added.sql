﻿-- <Migration ID="ffb9b2d0-3f2e-405f-8bb0-fe5fa112a54e" />
go

if object_id('tsa.ics_land_SAP_SVK_ADRC','U') is not null
drop table tsa.ics_land_SAP_SVK_ADRC
go
if object_id('tsa.ics_land_SAP_SVK_EKPO','U') is not null
drop table tsa.ics_land_SAP_SVK_EKPO
go
if object_id('tsa.ics_land_SAP_SVK_MAKT','U') is not null
drop table tsa.ics_land_SAP_SVK_MAKT
go
if object_id('tsa.ics_land_SAP_SVK_T052U','U') is not null
drop table tsa.ics_land_SAP_SVK_T052U
go
if object_id('tsa.ics_land_SAP_SVK_EKBE','U') is not null
drop table tsa.ics_land_SAP_SVK_EKBE
go
if object_id('tsa.ics_land_SAP_SVK_EKBZ','U') is not null
drop table tsa.ics_land_SAP_SVK_EKBZ
go
if object_id('tsa.ics_land_SAP_SVK_TCURR','U') is not null
drop table tsa.ics_land_SAP_SVK_TCURR
go
if object_id('tsa.ics_land_SAP_SVK_EKET','U') is not null
drop table tsa.ics_land_SAP_SVK_EKET
go
if object_id('tsa.ics_land_SAP_SVK_LFB1','U') is not null
drop table tsa.ics_land_SAP_SVK_LFB1
go
if object_id('tsa.ics_land_SAP_SVK_EKKO','U') is not null
drop table tsa.ics_land_SAP_SVK_EKKO
go
if object_id('tsa.ics_land_SAP_SVK_LFA1','U') is not null
drop table tsa.ics_land_SAP_SVK_LFA1
go
if object_id('tsa.ics_land_SAP_SVK_LFM1','U') is not null
drop table tsa.ics_land_SAP_SVK_LFM1
go
if object_id('tsa.ics_land_SAP_SVK_MARM','U') is not null
drop table tsa.ics_land_SAP_SVK_MARM
go
if object_id('tsa.ics_land_SAP_SVK_MARA','U') is not null
drop table tsa.ics_land_SAP_SVK_MARA
go
if object_id('tsa.ics_land_SAP_SVK_T001W','U') is not null
drop table tsa.ics_land_SAP_SVK_T001W
go

PRINT N'Creating [tsa].[ics_land_SAP_SVK_EKBZ]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_EKBZ]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKBZ_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKBZ_IsDuplicate] DEFAULT ((0)),
[AREWB] [decimal] (13, 2) NULL,
[AREWR] [decimal] (13, 2) NULL,
[AREWW] [decimal] (13, 2) NULL,
[BELNR] [nvarchar] (10) NULL,
[BEWTP] [nvarchar] (1) NULL,
[BPMNG] [decimal] (13, 3) NULL,
[BUDAT] [nvarchar] (8) NULL,
[BUZEI] [nvarchar] (4) NULL,
[BWTAR] [nvarchar] (10) NULL,
[CPUDT] [nvarchar] (8) NULL,
[CPUTM] [nvarchar] (6) NULL,
[DMBTR] [decimal] (13, 2) NULL,
[EBELN] [nvarchar] (10) NULL,
[EBELP] [nvarchar] (5) NULL,
[ERNAM] [nvarchar] (12) NULL,
[FRBNR] [nvarchar] (16) NULL,
[GJAHR] [nvarchar] (4) NULL,
[HSWAE] [nvarchar] (5) NULL,
[KSCHL] [nvarchar] (4) NULL,
[LIFNR] [nvarchar] (10) NULL,
[MANDT] [nvarchar] (3) NULL,
[MENGE] [decimal] (13, 3) NULL,
[REEWR] [decimal] (13, 2) NULL,
[REFWR] [decimal] (13, 2) NULL,
[REWRB] [decimal] (13, 2) NULL,
[SAPRL] [nvarchar] (4) NULL,
[SHKKO] [nvarchar] (1) NULL,
[SHKZG] [nvarchar] (1) NULL,
[STUNR] [nvarchar] (3) NULL,
[VGABE] [nvarchar] (1) NULL,
[VNETW] [decimal] (13, 2) NULL,
[WAERS] [nvarchar] (5) NULL,
[WRBTR] [decimal] (13, 2) NULL,
[XBLNR] [nvarchar] (16) NULL,
[ZAEHK] [nvarchar] (2) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_EKET]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_EKET]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKET_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKET_IsDuplicate] DEFAULT ((0)),
[ABART] [nvarchar] (1) NULL,
[ALTDT] [nvarchar] (8) NULL,
[AMENG] [decimal] (13, 3) NULL,
[AULWE] [nvarchar] (10) NULL,
[BANFN] [nvarchar] (10) NULL,
[BEDAT] [nvarchar] (8) NULL,
[BNFPO] [nvarchar] (5) NULL,
[CCI] [nvarchar] (1) NULL,
[CHARG] [nvarchar] (10) NULL,
[CHKOM] [nvarchar] (1) NULL,
[DABMG] [decimal] (13, 3) NULL,
[DAT01] [nvarchar] (8) NULL,
[DNO] [nvarchar] (12) NULL,
[EBELN] [nvarchar] (10) NULL,
[EBELP] [nvarchar] (5) NULL,
[ECC] [nvarchar] (7) NULL,
[EINDT] [nvarchar] (8) NULL,
[ESTKZ] [nvarchar] (1) NULL,
[ETENR] [nvarchar] (4) NULL,
[FIXKZ] [nvarchar] (1) NULL,
[GLMNG] [decimal] (13, 3) NULL,
[LDDAT] [nvarchar] (8) NULL,
[LDUHR] [nvarchar] (6) NULL,
[LICHA] [nvarchar] (15) NULL,
[LPEIN] [nvarchar] (1) NULL,
[MAHNZ] [decimal] (3, 0) NULL,
[MANDT] [nvarchar] (3) NULL,
[MBDAT] [nvarchar] (8) NULL,
[MBUHR] [nvarchar] (6) NULL,
[MENGE] [decimal] (13, 3) NULL,
[MNG02] [decimal] (13, 3) NULL,
[PCCI] [nvarchar] (1) NULL,
[PLC] [nvarchar] (1) NULL,
[PSEL] [nvarchar] (1) NULL,
[PSEN] [nvarchar] (6) NULL,
[QUNUM] [nvarchar] (10) NULL,
[QUPOS] [nvarchar] (3) NULL,
[RSNUM] [nvarchar] (10) NULL,
[SEL] [nvarchar] (1) NULL,
[SEN] [nvarchar] (6) NULL,
[SERNR] [nvarchar] (8) NULL,
[SHM] [nvarchar] (3) NULL,
[SLFDT] [nvarchar] (8) NULL,
[SMB] [nvarchar] (6) NULL,
[TDDAT] [nvarchar] (8) NULL,
[TDUHR] [nvarchar] (6) NULL,
[UZEIT] [nvarchar] (6) NULL,
[VERID] [nvarchar] (4) NULL,
[WADAT] [nvarchar] (8) NULL,
[WAMNG] [decimal] (13, 3) NULL,
[WAUHR] [nvarchar] (6) NULL,
[WEMNG] [decimal] (13, 3) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_LFB1]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_LFB1]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_LFB1_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_LFB1_IsDuplicate] DEFAULT ((0)),
[AKONT] [nvarchar] (10) NULL,
[ALTKN] [nvarchar] (10) NULL,
[BEGRU] [nvarchar] (4) NULL,
[BLNKZ] [nvarchar] (2) NULL,
[BUKRS] [nvarchar] (4) NULL,
[BUSAB] [nvarchar] (2) NULL,
[CERDT] [nvarchar] (8) NULL,
[CONFS] [nvarchar] (1) NULL,
[DATLZ] [nvarchar] (8) NULL,
[EIKTO] [nvarchar] (12) NULL,
[ERDAT] [nvarchar] (8) NULL,
[ERNAM] [nvarchar] (12) NULL,
[FDGRV] [nvarchar] (10) NULL,
[FRGRP] [nvarchar] (4) NULL,
[GMVKZK] [nvarchar] (1) NULL,
[GRICD] [nvarchar] (2) NULL,
[GRIDT] [nvarchar] (2) NULL,
[GUZTE] [nvarchar] (4) NULL,
[HBKID] [nvarchar] (5) NULL,
[INTAD] [nvarchar] (130) NULL,
[KULTG] [decimal] (3, 0) NULL,
[KVERM] [nvarchar] (30) NULL,
[LIFNR] [nvarchar] (10) NULL,
[LNRZB] [nvarchar] (10) NULL,
[LNRZE] [nvarchar] (10) NULL,
[LOEVM] [nvarchar] (1) NULL,
[MANDT] [nvarchar] (3) NULL,
[MGRUP] [nvarchar] (2) NULL,
[MINDK] [nvarchar] (3) NULL,
[NODEL] [nvarchar] (1) NULL,
[PERNR] [nvarchar] (8) NULL,
[QLAND] [nvarchar] (3) NULL,
[QSBGR] [nvarchar] (1) NULL,
[QSREC] [nvarchar] (2) NULL,
[QSSKZ] [nvarchar] (2) NULL,
[QSZDT] [nvarchar] (8) NULL,
[QSZNR] [nvarchar] (10) NULL,
[REPRF] [nvarchar] (1) NULL,
[SPERR] [nvarchar] (1) NULL,
[TLFNS] [nvarchar] (30) NULL,
[TLFXS] [nvarchar] (31) NULL,
[TOGRR] [nvarchar] (4) NULL,
[TOGRU] [nvarchar] (4) NULL,
[UPDAT] [nvarchar] (8) NULL,
[UPTIM] [nvarchar] (6) NULL,
[UZAWE] [nvarchar] (2) NULL,
[VZSKZ] [nvarchar] (2) NULL,
[WEBTR] [decimal] (13, 2) NULL,
[XAUSZ] [nvarchar] (1) NULL,
[XDEZV] [nvarchar] (1) NULL,
[XEDIP] [nvarchar] (1) NULL,
[XLFZB] [nvarchar] (1) NULL,
[XPORE] [nvarchar] (1) NULL,
[XVERR] [nvarchar] (1) NULL,
[ZAHLS] [nvarchar] (1) NULL,
[ZGRUP] [nvarchar] (2) NULL,
[ZINDT] [nvarchar] (8) NULL,
[ZINRT] [nvarchar] (2) NULL,
[ZSABE] [nvarchar] (15) NULL,
[ZTERM] [nvarchar] (4) NULL,
[ZUAWA] [nvarchar] (3) NULL,
[ZWELS] [nvarchar] (10) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_EKKO]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_EKKO]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKKO_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKKO_IsDuplicate] DEFAULT ((0)),
[ABGRU] [nvarchar] (2) NULL,
[ABSGR] [nvarchar] (2) NULL,
[ADDNR] [nvarchar] (10) NULL,
[ADRNR] [nvarchar] (10) NULL,
[AEDAT] [nvarchar] (8) NULL,
[AMN] [nvarchar] (3) NULL,
[ANGDT] [nvarchar] (8) NULL,
[ANGNR] [nvarchar] (10) NULL,
[AUSNR] [nvarchar] (10) NULL,
[AUTLF] [nvarchar] (1) NULL,
[BEDAT] [nvarchar] (8) NULL,
[BNDDT] [nvarchar] (8) NULL,
[BSAKZ] [nvarchar] (1) NULL,
[BSART] [nvarchar] (4) NULL,
[BSTYP] [nvarchar] (1) NULL,
[BUKRS] [nvarchar] (4) NULL,
[BWBDT] [nvarchar] (8) NULL,
[CUR] [nvarchar] (3) NULL,
[DNO] [nvarchar] (12) NULL,
[DPT] [nvarchar] (15) NULL,
[EBELN] [nvarchar] (10) NULL,
[ECC] [nvarchar] (7) NULL,
[ECO] [nvarchar] (13) NULL,
[EKGRP] [nvarchar] (3) NULL,
[EKORG] [nvarchar] (4) NULL,
[ERNAM] [nvarchar] (12) NULL,
[EXNUM] [nvarchar] (10) NULL,
[FRGGR] [nvarchar] (2) NULL,
[FRGKE] [nvarchar] (1) NULL,
[FRGRL] [nvarchar] (1) NULL,
[FRGSX] [nvarchar] (2) NULL,
[FRGZU] [nvarchar] (8) NULL,
[GWLDT] [nvarchar] (8) NULL,
[IHRAN] [nvarchar] (8) NULL,
[IHREZ] [nvarchar] (12) NULL,
[INCO1] [nvarchar] (3) NULL,
[INCO2] [nvarchar] (28) NULL,
[IPP] [nvarchar] (9) NULL,
[KALSM] [nvarchar] (6) NULL,
[KDATB] [nvarchar] (8) NULL,
[KDATE] [nvarchar] (8) NULL,
[KNUMV] [nvarchar] (10) NULL,
[KONNR] [nvarchar] (10) NULL,
[KORNR] [nvarchar] (1) NULL,
[KTWRT] [decimal] (15, 2) NULL,
[KUFIX] [nvarchar] (1) NULL,
[KUNNR] [nvarchar] (10) NULL,
[LANDS] [nvarchar] (3) NULL,
[LBLIF] [nvarchar] (10) NULL,
[LIFNR] [nvarchar] (10) NULL,
[LIFRE] [nvarchar] (10) NULL,
[LLIEF] [nvarchar] (10) NULL,
[LOEKZ] [nvarchar] (1) NULL,
[LOGSY] [nvarchar] (10) NULL,
[LPHIS] [nvarchar] (1) NULL,
[LPONR] [nvarchar] (5) NULL,
[MANDT] [nvarchar] (3) NULL,
[MEMORY] [nvarchar] (1) NULL,
[PBN] [nvarchar] (14) NULL,
[PCD] [nvarchar] (2) NULL,
[PCN] [nvarchar] (16) NULL,
[PCO] [nvarchar] (3) NULL,
[PCY] [nvarchar] (3) NULL,
[PINCR] [nvarchar] (5) NULL,
[PLC] [nvarchar] (1) NULL,
[POSTAT] [nvarchar] (1) NULL,
[PROCSTAT] [nvarchar] (2) NULL,
[RESWK] [nvarchar] (4) NULL,
[REVNO] [nvarchar] (8) NULL,
[RLWRT] [decimal] (15, 2) NULL,
[SMB] [nvarchar] (6) NULL,
[SPRAS] [nvarchar] (1) NULL,
[STAFO] [nvarchar] (6) NULL,
[STAKO] [nvarchar] (1) NULL,
[STATU] [nvarchar] (1) NULL,
[STCEG] [nvarchar] (20) NULL,
[STCEG_L] [nvarchar] (3) NULL,
[SUBMI] [nvarchar] (10) NULL,
[SUS] [nvarchar] (5) NULL,
[TELF1] [nvarchar] (16) NULL,
[TOP] [nvarchar] (2) NULL,
[TRU] [nvarchar] (20) NULL,
[UNSEZ] [nvarchar] (12) NULL,
[UPINC] [nvarchar] (5) NULL,
[VERKF] [nvarchar] (30) NULL,
[WAERS] [nvarchar] (5) NULL,
[WEAKT] [nvarchar] (1) NULL,
[WKURS] [decimal] (9, 5) NULL,
[ZBD1P] [decimal] (5, 3) NULL,
[ZBD1T] [decimal] (3, 0) NULL,
[ZBD2P] [decimal] (5, 3) NULL,
[ZBD2T] [decimal] (3, 0) NULL,
[ZBD3T] [decimal] (3, 0) NULL,
[ZTERM] [nvarchar] (4) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_LFA1]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_LFA1]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_LFA1_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_LFA1_IsDuplicate] DEFAULT ((0)),
[ACTSS] [nvarchar] (3) NULL,
[ADRNR] [nvarchar] (10) NULL,
[ANRED] [nvarchar] (15) NULL,
[BAHNS] [nvarchar] (25) NULL,
[BBBNR] [nvarchar] (7) NULL,
[BBSNR] [nvarchar] (5) NULL,
[BEGRU] [nvarchar] (4) NULL,
[BORGR_DATUN] [nvarchar] (8) NULL,
[BORGR_YEAUN] [nvarchar] (1) NULL,
[BRSCH] [nvarchar] (4) NULL,
[BUBKZ] [nvarchar] (1) NULL,
[CONFS] [nvarchar] (1) NULL,
[DATLT] [nvarchar] (14) NULL,
[DLGRP] [nvarchar] (4) NULL,
[DTAMS] [nvarchar] (1) NULL,
[DTAWS] [nvarchar] (2) NULL,
[DUEFL] [nvarchar] (1) NULL,
[DUNSP4] [nvarchar] (4) NULL,
[EMNFR] [nvarchar] (10) NULL,
[ERDAT] [nvarchar] (8) NULL,
[ERNAM] [nvarchar] (12) NULL,
[ESRNR] [nvarchar] (11) NULL,
[FISKN] [nvarchar] (10) NULL,
[FISKU] [nvarchar] (10) NULL,
[FITYP] [nvarchar] (2) NULL,
[GBDAT] [nvarchar] (8) NULL,
[GBORT] [nvarchar] (25) NULL,
[IPISP] [nvarchar] (1) NULL,
[J_1KFREPRE] [nvarchar] (10) NULL,
[J_1KFTBUS] [nvarchar] (30) NULL,
[J_1KFTIND] [nvarchar] (30) NULL,
[KONZS] [nvarchar] (10) NULL,
[KRAUS] [nvarchar] (11) NULL,
[KTOCK] [nvarchar] (4) NULL,
[KTOKK] [nvarchar] (4) NULL,
[KUNNR] [nvarchar] (10) NULL,
[LAND1] [nvarchar] (3) NULL,
[LFURL] [nvarchar] (132) NULL,
[LIFNR] [nvarchar] (10) NULL,
[LNRZA] [nvarchar] (10) NULL,
[LOEVM] [nvarchar] (1) NULL,
[LTSNA] [nvarchar] (1) NULL,
[LZONE] [nvarchar] (10) NULL,
[MANDT] [nvarchar] (3) NULL,
[MCOD1] [nvarchar] (25) NULL,
[MCOD2] [nvarchar] (25) NULL,
[MCOD3] [nvarchar] (25) NULL,
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
[QSSYSDAT] [nvarchar] (8) NULL,
[REGIO] [nvarchar] (3) NULL,
[REGSS] [nvarchar] (1) NULL,
[REVDB] [nvarchar] (8) NULL,
[SCACD] [nvarchar] (4) NULL,
[SEXKZ] [nvarchar] (1) NULL,
[SFRGR] [nvarchar] (4) NULL,
[SORTL] [nvarchar] (10) NULL,
[SPERM] [nvarchar] (1) NULL,
[SPERQ] [nvarchar] (2) NULL,
[SPERR] [nvarchar] (1) NULL,
[SPERZ] [nvarchar] (1) NULL,
[SPRAS] [nvarchar] (1) NULL,
[STCD1] [nvarchar] (16) NULL,
[STCD2] [nvarchar] (11) NULL,
[STCD3] [nvarchar] (18) NULL,
[STCD4] [nvarchar] (18) NULL,
[STCDT] [nvarchar] (2) NULL,
[STCEG] [nvarchar] (20) NULL,
[STENR] [nvarchar] (18) NULL,
[STGDL] [nvarchar] (2) NULL,
[STKZA] [nvarchar] (1) NULL,
[STKZN] [nvarchar] (1) NULL,
[STKZU] [nvarchar] (1) NULL,
[STRAS] [nvarchar] (35) NULL,
[TAXBS] [nvarchar] (1) NULL,
[TELBX] [nvarchar] (15) NULL,
[TELF1] [nvarchar] (16) NULL,
[TELF2] [nvarchar] (16) NULL,
[TELFX] [nvarchar] (31) NULL,
[TELTX] [nvarchar] (30) NULL,
[TELX1] [nvarchar] (30) NULL,
[TXJCD] [nvarchar] (15) NULL,
[UPDAT] [nvarchar] (8) NULL,
[UPTIM] [nvarchar] (6) NULL,
[VBUND] [nvarchar] (6) NULL,
[WERKR] [nvarchar] (1) NULL,
[WERKS] [nvarchar] (4) NULL,
[XCPDK] [nvarchar] (1) NULL,
[XLFZA] [nvarchar] (1) NULL,
[XZEMP] [nvarchar] (1) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_MARA]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_MARA]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_MARA_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_MARA_IsDuplicate] DEFAULT ((0)),
[_SAPMP_ABMEIN] [nvarchar] (3) NULL,
[_SAPMP_AHO] [nvarchar] (3) NULL,
[_SAPMP_BRAD] [decimal] (4, 0) NULL,
[_SAPMP_FBAK] [nvarchar] (1) NULL,
[_SAPMP_FBDK] [decimal] (7, 2) NULL,
[_SAPMP_FBHK] [decimal] (7, 2) NULL,
[_SAPMP_KADP] [decimal] (5, 2) NULL,
[_SAPMP_KADU] [decimal] (7, 2) NULL,
[_SAPMP_KEDU] [decimal] (7, 2) NULL,
[_SAPMP_MIFRR] [decimal] (7, 2) NULL,
[_SAPMP_RILI] [nvarchar] (1) NULL,
[_SAPMP_SPBI] [decimal] (7, 2) NULL,
[_SAPMP_SPTR] [decimal] (13, 3) NULL,
[_SAPMP_TRAD] [decimal] (7, 2) NULL,
[ADSPC_SPC] [nvarchar] (1) NULL,
[AEKLK] [nvarchar] (1) NULL,
[AENAM] [nvarchar] (12) NULL,
[AESZN] [nvarchar] (6) NULL,
[ATTYP] [nvarchar] (2) NULL,
[BBTYP] [nvarchar] (1) NULL,
[BEGRU] [nvarchar] (4) NULL,
[BEHVO] [nvarchar] (2) NULL,
[BFLME] [nvarchar] (1) NULL,
[BISMT] [nvarchar] (18) NULL,
[BLANZ] [nvarchar] (3) NULL,
[BLATT] [nvarchar] (3) NULL,
[BMATN] [nvarchar] (18) NULL,
[BREIT] [decimal] (13, 3) NULL,
[BRGEW] [decimal] (13, 3) NULL,
[BSTME] [nvarchar] (3) NULL,
[BWSCL] [nvarchar] (1) NULL,
[BWVOR] [nvarchar] (1) NULL,
[CADKZ] [nvarchar] (1) NULL,
[CMETH] [nvarchar] (1) NULL,
[CMREL] [nvarchar] (1) NULL,
[COMPL] [nvarchar] (2) NULL,
[CUOBF] [nvarchar] (18) NULL,
[DATAB] [nvarchar] (8) NULL,
[DISST] [nvarchar] (3) NULL,
[DPCBT] [nvarchar] (1) NULL,
[DVERS] [nvarchar] (18) NULL,
[EAN11] [nvarchar] (18) NULL,
[EANNR] [nvarchar] (13) NULL,
[EKWSL] [nvarchar] (4) NULL,
[ENTAR] [nvarchar] (1) NULL,
[ERGEI] [nvarchar] (3) NULL,
[ERGEW] [decimal] (13, 3) NULL,
[ERNAM] [nvarchar] (12) NULL,
[ERSDA] [nvarchar] (8) NULL,
[ERVOE] [nvarchar] (3) NULL,
[ERVOL] [decimal] (13, 3) NULL,
[ETIAG] [nvarchar] (18) NULL,
[ETIAR] [nvarchar] (2) NULL,
[ETIFO] [nvarchar] (2) NULL,
[EVVAL] [nvarchar] (1) NULL,
[EXTWG] [nvarchar] (18) NULL,
[FERTH] [nvarchar] (18) NULL,
[FORMT] [nvarchar] (4) NULL,
[FUELG] [decimal] (3, 0) NULL,
[GDS_RELEVANT] [nvarchar] (1) NULL,
[GENNR] [nvarchar] (18) NULL,
[GEWEI] [nvarchar] (3) NULL,
[GEWTO] [decimal] (3, 1) NULL,
[GROES] [nvarchar] (32) NULL,
[GTIN_VARIANT] [nvarchar] (2) NULL,
[HOEHE] [decimal] (13, 3) NULL,
[IHIVI] [nvarchar] (1) NULL,
[ILOOS] [nvarchar] (1) NULL,
[IMATN] [nvarchar] (18) NULL,
[INHAL] [decimal] (13, 3) NULL,
[INHBR] [decimal] (13, 3) NULL,
[INHME] [nvarchar] (3) NULL,
[IPRKZ] [nvarchar] (1) NULL,
[KOSCH] [nvarchar] (18) NULL,
[KUNNR] [nvarchar] (10) NULL,
[KZEFF] [nvarchar] (1) NULL,
[KZGVH] [nvarchar] (1) NULL,
[KZKFG] [nvarchar] (1) NULL,
[KZKUP] [nvarchar] (1) NULL,
[KZNFM] [nvarchar] (1) NULL,
[KZREV] [nvarchar] (1) NULL,
[KZUMW] [nvarchar] (1) NULL,
[KZWSM] [nvarchar] (1) NULL,
[LABOR] [nvarchar] (3) NULL,
[LAEDA] [nvarchar] (8) NULL,
[LAENG] [decimal] (13, 3) NULL,
[LIQDT] [nvarchar] (8) NULL,
[LVORM] [nvarchar] (1) NULL,
[MAGRV] [nvarchar] (4) NULL,
[MANDT] [nvarchar] (3) NULL,
[MATFI] [nvarchar] (1) NULL,
[MATKL] [nvarchar] (9) NULL,
[MATNR] [nvarchar] (18) NULL,
[MBRSH] [nvarchar] (1) NULL,
[MEABM] [nvarchar] (3) NULL,
[MEINS] [nvarchar] (3) NULL,
[MFRNR] [nvarchar] (10) NULL,
[MFRPN] [nvarchar] (40) NULL,
[MHDHB] [decimal] (4, 0) NULL,
[MHDLP] [decimal] (3, 0) NULL,
[MHDRZ] [decimal] (4, 0) NULL,
[MLGUT] [nvarchar] (1) NULL,
[MPROF] [nvarchar] (4) NULL,
[MSBOOKPARTNO] [nvarchar] (18) NULL,
[MSTAE] [nvarchar] (2) NULL,
[MSTAV] [nvarchar] (2) NULL,
[MSTDE] [nvarchar] (8) NULL,
[MSTDV] [nvarchar] (8) NULL,
[MTART] [nvarchar] (4) NULL,
[MTPOS_MARA] [nvarchar] (4) NULL,
[NORMT] [nvarchar] (18) NULL,
[NRFHG] [nvarchar] (1) NULL,
[NTGEW] [decimal] (13, 3) NULL,
[NUMTP] [nvarchar] (2) NULL,
[OVLPN] [nvarchar] (32) NULL,
[PICNUM] [nvarchar] (18) NULL,
[PLGTP] [nvarchar] (2) NULL,
[PMATA] [nvarchar] (18) NULL,
[PRDHA] [nvarchar] (18) NULL,
[PROFL] [nvarchar] (3) NULL,
[PRZUS] [nvarchar] (1) NULL,
[PSTAT] [nvarchar] (15) NULL,
[QMPUR] [nvarchar] (1) NULL,
[RAUBE] [nvarchar] (2) NULL,
[RBNRM] [nvarchar] (9) NULL,
[RDMHD] [nvarchar] (1) NULL,
[RMATP] [nvarchar] (18) NULL,
[SAISJ] [nvarchar] (4) NULL,
[SAISO] [nvarchar] (4) NULL,
[SAITY] [nvarchar] (2) NULL,
[SATNR] [nvarchar] (18) NULL,
[SERLV] [nvarchar] (1) NULL,
[SLED_BBD] [nvarchar] (1) NULL,
[SPART] [nvarchar] (2) NULL,
[SPROF] [nvarchar] (1) NULL,
[STFAK] [decimal] (5, 0) NULL,
[STOFF] [nvarchar] (18) NULL,
[TAKLV] [nvarchar] (1) NULL,
[TEMPB] [nvarchar] (2) NULL,
[TRAGR] [nvarchar] (4) NULL,
[VABME] [nvarchar] (1) NULL,
[VARID] [binary] (1) NULL,
[VCHNR] [nvarchar] (12) NULL,
[VHART] [nvarchar] (4) NULL,
[VOLEH] [nvarchar] (3) NULL,
[VOLTO] [decimal] (3, 1) NULL,
[VOLUM] [decimal] (13, 3) NULL,
[VPREH] [decimal] (5, 0) NULL,
[VPSTA] [nvarchar] (15) NULL,
[VTYPE] [nvarchar] (10) NULL,
[WESCH] [decimal] (13, 3) NULL,
[WRKST] [nvarchar] (48) NULL,
[XCHPF] [nvarchar] (1) NULL,
[XGCHP] [nvarchar] (1) NULL,
[XGRDT] [nvarchar] (1) NULL,
[ZEIAR] [nvarchar] (3) NULL,
[ZEIFO] [nvarchar] (4) NULL,
[ZEINR] [nvarchar] (22) NULL,
[ZEIVR] [nvarchar] (2) NULL,
[ZZMATKL1] [nvarchar] (10) NULL,
[ZZMATKL2] [nvarchar] (5) NULL,
[ZZPOVOD] [nvarchar] (20) NULL,
[ZZPRPOV] [nvarchar] (1) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_MARM]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_MARM]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_MARM_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_MARM_IsDuplicate] DEFAULT ((0)),
[ATINN] [nvarchar] (10) NULL,
[BFLME_MARM] [nvarchar] (1) NULL,
[BREIT] [decimal] (13, 3) NULL,
[BRGEW] [decimal] (13, 3) NULL,
[EAN11] [nvarchar] (18) NULL,
[EANNR] [nvarchar] (13) NULL,
[GEWEI] [nvarchar] (3) NULL,
[GTIN_VARIANT] [nvarchar] (2) NULL,
[HOEHE] [decimal] (13, 3) NULL,
[KZWSO] [nvarchar] (1) NULL,
[LAENG] [decimal] (13, 3) NULL,
[MANDT] [nvarchar] (3) NULL,
[MATNR] [nvarchar] (18) NULL,
[MEABM] [nvarchar] (3) NULL,
[MEINH] [nvarchar] (3) NULL,
[MESRT] [nvarchar] (2) NULL,
[MESUB] [nvarchar] (3) NULL,
[MSEHI] [nvarchar] (3) NULL,
[NUMTP] [nvarchar] (2) NULL,
[PCBUT] [nvarchar] (1) NULL,
[UMREN] [decimal] (5, 0) NULL,
[UMREZ] [decimal] (5, 0) NULL,
[VOLEH] [nvarchar] (3) NULL,
[VOLUM] [decimal] (13, 3) NULL,
[XBEWW] [nvarchar] (1) NULL,
[XFHDW] [nvarchar] (1) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_T001W]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_T001W]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_T001W_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_T001W_IsDuplicate] DEFAULT ((0)),
[ACHVM] [nvarchar] (1) NULL,
[ADRNR] [nvarchar] (10) NULL,
[AWSLS] [nvarchar] (6) NULL,
[BEDPL] [nvarchar] (1) NULL,
[BETOL] [nvarchar] (3) NULL,
[BWKEY] [nvarchar] (4) NULL,
[BZIRK] [nvarchar] (6) NULL,
[BZQHL] [nvarchar] (1) NULL,
[CHAZV] [nvarchar] (1) NULL,
[CHAZV_OLD] [nvarchar] (1) NULL,
[CITYC] [nvarchar] (4) NULL,
[COUNC] [nvarchar] (3) NULL,
[DVSART] [nvarchar] (1) NULL,
[EKORG] [nvarchar] (4) NULL,
[FABKL] [nvarchar] (2) NULL,
[FPRFW] [nvarchar] (3) NULL,
[IWERK] [nvarchar] (4) NULL,
[J_1BBRANCH] [nvarchar] (4) NULL,
[KKOWK] [nvarchar] (1) NULL,
[KORDB] [nvarchar] (1) NULL,
[KUNNR] [nvarchar] (10) NULL,
[LAND1] [nvarchar] (3) NULL,
[LET01] [decimal] (3, 0) NULL,
[LET02] [decimal] (3, 0) NULL,
[LET03] [decimal] (3, 0) NULL,
[LIFNR] [nvarchar] (10) NULL,
[MANDT] [nvarchar] (3) NULL,
[MGVLAUPD] [nvarchar] (1) NULL,
[MGVUPD] [nvarchar] (1) NULL,
[MISCH] [nvarchar] (1) NULL,
[NAME1] [nvarchar] (30) NULL,
[NAME2] [nvarchar] (30) NULL,
[NODETYPE] [nvarchar] (3) NULL,
[NSCHEMA] [nvarchar] (4) NULL,
[ORT01] [nvarchar] (25) NULL,
[PFACH] [nvarchar] (10) NULL,
[PKOSA] [nvarchar] (1) NULL,
[PSTLZ] [nvarchar] (10) NULL,
[REGIO] [nvarchar] (3) NULL,
[SOURCING] [nvarchar] (1) NULL,
[SPART] [nvarchar] (2) NULL,
[SPRAS] [nvarchar] (1) NULL,
[STRAS] [nvarchar] (30) NULL,
[TAXIW] [nvarchar] (1) NULL,
[TXJCD] [nvarchar] (15) NULL,
[TXNAM_MA1] [nvarchar] (16) NULL,
[TXNAM_MA2] [nvarchar] (16) NULL,
[TXNAM_MA3] [nvarchar] (16) NULL,
[VKORG] [nvarchar] (4) NULL,
[VLFKZ] [nvarchar] (1) NULL,
[VSTEL] [nvarchar] (4) NULL,
[VTBFI] [nvarchar] (2) NULL,
[VTWEG] [nvarchar] (2) NULL,
[WERKS] [nvarchar] (4) NULL,
[WKSOP] [nvarchar] (1) NULL,
[ZONE1] [nvarchar] (10) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_ADRC]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_ADRC]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_ADRC_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_ADRC_IsDuplicate] DEFAULT ((0)),
[ADDR_GROUP] [nvarchar] (4) NULL,
[ADDRESS_ID] [nvarchar] (10) NULL,
[ADDRNUMBER] [nvarchar] (10) NULL,
[ADDRORIGIN] [nvarchar] (4) NULL,
[BUILDING] [nvarchar] (20) NULL,
[CHCKSTATUS] [nvarchar] (1) NULL,
[CITY_CODE] [nvarchar] (12) NULL,
[CITY_CODE2] [nvarchar] (12) NULL,
[CITY1] [nvarchar] (40) NULL,
[CITY2] [nvarchar] (40) NULL,
[CITYH_CODE] [nvarchar] (12) NULL,
[CITYP_CODE] [nvarchar] (8) NULL,
[CLIENT] [nvarchar] (3) NULL,
[COUNTRY] [nvarchar] (3) NULL,
[DATE_FROM] [nvarchar] (8) NULL,
[DATE_TO] [nvarchar] (8) NULL,
[DEFLT_COMM] [nvarchar] (3) NULL,
[DONT_USE_P] [nvarchar] (4) NULL,
[DONT_USE_S] [nvarchar] (4) NULL,
[DUNS] [nvarchar] (9) NULL,
[DUNSP4] [nvarchar] (4) NULL,
[EXTENSION1] [nvarchar] (40) NULL,
[EXTENSION2] [nvarchar] (40) NULL,
[FAX_EXTENS] [nvarchar] (10) NULL,
[FAX_NUMBER] [nvarchar] (30) NULL,
[FLAGCOMM10] [nvarchar] (1) NULL,
[FLAGCOMM11] [nvarchar] (1) NULL,
[FLAGCOMM12] [nvarchar] (1) NULL,
[FLAGCOMM13] [nvarchar] (1) NULL,
[FLAGCOMM2] [nvarchar] (1) NULL,
[FLAGCOMM3] [nvarchar] (1) NULL,
[FLAGCOMM4] [nvarchar] (1) NULL,
[FLAGCOMM5] [nvarchar] (1) NULL,
[FLAGCOMM6] [nvarchar] (1) NULL,
[FLAGCOMM7] [nvarchar] (1) NULL,
[FLAGCOMM8] [nvarchar] (1) NULL,
[FLAGCOMM9] [nvarchar] (1) NULL,
[FLAGGROUPS] [nvarchar] (1) NULL,
[FLOOR] [nvarchar] (10) NULL,
[HOME_CITY] [nvarchar] (40) NULL,
[HOUSE_NUM1] [nvarchar] (10) NULL,
[HOUSE_NUM2] [nvarchar] (10) NULL,
[HOUSE_NUM3] [nvarchar] (10) NULL,
[LANGU] [nvarchar] (1) NULL,
[LANGU_CREA] [nvarchar] (1) NULL,
[LOCATION] [nvarchar] (40) NULL,
[MC_CITY1] [nvarchar] (25) NULL,
[MC_NAME1] [nvarchar] (25) NULL,
[MC_STREET] [nvarchar] (25) NULL,
[NAME_CO] [nvarchar] (40) NULL,
[NAME_TEXT] [nvarchar] (50) NULL,
[NAME1] [nvarchar] (40) NULL,
[NAME2] [nvarchar] (40) NULL,
[NAME3] [nvarchar] (40) NULL,
[NAME4] [nvarchar] (40) NULL,
[NATION] [nvarchar] (1) NULL,
[PCODE1_EXT] [nvarchar] (10) NULL,
[PCODE2_EXT] [nvarchar] (10) NULL,
[PCODE3_EXT] [nvarchar] (10) NULL,
[PERS_ADDR] [nvarchar] (1) NULL,
[PO_BOX] [nvarchar] (10) NULL,
[PO_BOX_CTY] [nvarchar] (3) NULL,
[PO_BOX_LOC] [nvarchar] (40) NULL,
[PO_BOX_NUM] [nvarchar] (1) NULL,
[PO_BOX_REG] [nvarchar] (3) NULL,
[POST_CODE1] [nvarchar] (10) NULL,
[POST_CODE2] [nvarchar] (10) NULL,
[POST_CODE3] [nvarchar] (10) NULL,
[POSTALAREA] [nvarchar] (15) NULL,
[REGIOGROUP] [nvarchar] (8) NULL,
[REGION] [nvarchar] (3) NULL,
[ROOMNUMBER] [nvarchar] (10) NULL,
[SORT_PHN] [nvarchar] (20) NULL,
[SORT1] [nvarchar] (20) NULL,
[SORT2] [nvarchar] (20) NULL,
[STR_SUPPL1] [nvarchar] (40) NULL,
[STR_SUPPL2] [nvarchar] (40) NULL,
[STR_SUPPL3] [nvarchar] (40) NULL,
[STREET] [nvarchar] (60) NULL,
[STREETABBR] [nvarchar] (2) NULL,
[STREETCODE] [nvarchar] (12) NULL,
[TAXJURCODE] [nvarchar] (15) NULL,
[TEL_EXTENS] [nvarchar] (10) NULL,
[TEL_NUMBER] [nvarchar] (30) NULL,
[TIME_ZONE] [nvarchar] (6) NULL,
[TITLE] [nvarchar] (4) NULL,
[TRANSPZONE] [nvarchar] (10) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_EKPO]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_EKPO]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKPO_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKPO_IsDuplicate] DEFAULT ((0)),
[_SAPMP_GPOSE] [nvarchar] (5) NULL,
[ABDAT] [nvarchar] (8) NULL,
[ABELN] [nvarchar] (10) NULL,
[ABELP] [nvarchar] (5) NULL,
[ABFTZ] [decimal] (13, 3) NULL,
[ABMNG] [decimal] (13, 3) NULL,
[ABSKZ] [nvarchar] (1) NULL,
[ABUEB] [nvarchar] (4) NULL,
[ADACN] [nvarchar] (5) NULL,
[ADDRNUM] [nvarchar] (10) NULL,
[ADMOI] [nvarchar] (4) NULL,
[ADPRI] [nvarchar] (3) NULL,
[ADRN2] [nvarchar] (10) NULL,
[ADRNR] [nvarchar] (10) NULL,
[AEDAT] [nvarchar] (8) NULL,
[AFNAM] [nvarchar] (12) NULL,
[AFPNR] [nvarchar] (6) NULL,
[AGDAT] [nvarchar] (8) NULL,
[AGMEM] [nvarchar] (3) NULL,
[AKTNR] [nvarchar] (10) NULL,
[ANFNR] [nvarchar] (10) NULL,
[ANFPS] [nvarchar] (5) NULL,
[ANGNR] [nvarchar] (20) NULL,
[ANGPN] [nvarchar] (6) NULL,
[ANZPU] [decimal] (13, 3) NULL,
[ANZSN] [decimal] (10, 0) NULL,
[APOMS] [nvarchar] (1) NULL,
[ARSNR] [nvarchar] (10) NULL,
[ARSPS] [nvarchar] (4) NULL,
[ATTYP] [nvarchar] (2) NULL,
[AUDAT] [nvarchar] (8) NULL,
[AUREL] [nvarchar] (1) NULL,
[BANFN] [nvarchar] (10) NULL,
[BEDNR] [nvarchar] (10) NULL,
[BERID] [nvarchar] (10) NULL,
[BNFPO] [nvarchar] (5) NULL,
[BONBA] [decimal] (13, 2) NULL,
[BONUS] [nvarchar] (2) NULL,
[BORGR_MISS] [nvarchar] (1) NULL,
[BPRME] [nvarchar] (3) NULL,
[BPUMN] [decimal] (5, 0) NULL,
[BPUMZ] [decimal] (5, 0) NULL,
[BRGEW] [decimal] (13, 3) NULL,
[BRTWR] [decimal] (13, 2) NULL,
[BSARK] [nvarchar] (4) NULL,
[BSGRU] [nvarchar] (3) NULL,
[BSTAE] [nvarchar] (4) NULL,
[BSTYP] [nvarchar] (1) NULL,
[BUKRS] [nvarchar] (4) NULL,
[BWTAR] [nvarchar] (10) NULL,
[BWTTY] [nvarchar] (1) NULL,
[CCOMP] [nvarchar] (1) NULL,
[CHG_FPLNR] [nvarchar] (1) NULL,
[CHG_SRV] [nvarchar] (1) NULL,
[CONSNUM] [nvarchar] (3) NULL,
[CUOBJ] [nvarchar] (18) NULL,
[DISUB_KUNNR] [nvarchar] (10) NULL,
[DISUB_OWNER] [nvarchar] (10) NULL,
[DISUB_POSNR] [nvarchar] (6) NULL,
[DISUB_PSPNR] [nvarchar] (8) NULL,
[DISUB_SOBKZ] [nvarchar] (1) NULL,
[DISUB_VBELN] [nvarchar] (10) NULL,
[DRDAT] [nvarchar] (8) NULL,
[DRUHR] [nvarchar] (6) NULL,
[DRUNR] [nvarchar] (4) NULL,
[EAN11] [nvarchar] (18) NULL,
[EBELN] [nvarchar] (10) NULL,
[EBELP] [nvarchar] (5) NULL,
[EBON2] [nvarchar] (2) NULL,
[EBON3] [nvarchar] (2) NULL,
[EBONF] [nvarchar] (1) NULL,
[EFFWR] [decimal] (13, 2) NULL,
[EGLKZ] [nvarchar] (1) NULL,
[EILDT] [nvarchar] (8) NULL,
[EKKOL] [nvarchar] (4) NULL,
[ELIKZ] [nvarchar] (1) NULL,
[EMATN] [nvarchar] (18) NULL,
[EMLIF] [nvarchar] (10) NULL,
[EMNFR] [nvarchar] (10) NULL,
[EREKZ] [nvarchar] (1) NULL,
[ETDRK] [nvarchar] (1) NULL,
[ETFZ1] [decimal] (3, 0) NULL,
[ETFZ2] [decimal] (3, 0) NULL,
[EVERS] [nvarchar] (2) NULL,
[EXCPE] [nvarchar] (2) NULL,
[FABKZ] [nvarchar] (1) NULL,
[FFZHI] [decimal] (15, 3) NULL,
[FIPOS] [nvarchar] (14) NULL,
[FISTL] [nvarchar] (16) NULL,
[FKBER] [nvarchar] (16) NULL,
[FPLNR] [nvarchar] (10) NULL,
[GEBER] [nvarchar] (10) NULL,
[GEWEI] [nvarchar] (3) NULL,
[GNETWR] [decimal] (13, 2) NULL,
[GRANT_NBR] [nvarchar] (20) NULL,
[IDNLF] [nvarchar] (35) NULL,
[INCO1] [nvarchar] (3) NULL,
[INCO2] [nvarchar] (28) NULL,
[INFNR] [nvarchar] (10) NULL,
[INSMK] [nvarchar] (1) NULL,
[INSNC] [nvarchar] (1) NULL,
[IPRKZ] [nvarchar] (1) NULL,
[J_1AIDATEP] [nvarchar] (8) NULL,
[J_1AINDXP] [nvarchar] (5) NULL,
[J_1BINDUST] [nvarchar] (2) NULL,
[J_1BMATORG] [nvarchar] (1) NULL,
[J_1BMATUSE] [nvarchar] (1) NULL,
[J_1BNBM] [nvarchar] (16) NULL,
[J_1BOWNPRO] [nvarchar] (1) NULL,
[KANBA] [nvarchar] (1) NULL,
[KNTTP] [nvarchar] (1) NULL,
[KO_GSBER] [nvarchar] (4) NULL,
[KO_PARGB] [nvarchar] (4) NULL,
[KO_PPRCTR] [nvarchar] (10) NULL,
[KO_PRCTR] [nvarchar] (10) NULL,
[KOLIF] [nvarchar] (10) NULL,
[KONNR] [nvarchar] (10) NULL,
[KTMNG] [decimal] (13, 3) NULL,
[KTPNR] [nvarchar] (5) NULL,
[KUNNR] [nvarchar] (10) NULL,
[KZABS] [nvarchar] (1) NULL,
[KZBWS] [nvarchar] (1) NULL,
[KZFME] [nvarchar] (1) NULL,
[KZKFG] [nvarchar] (1) NULL,
[KZSTU] [nvarchar] (1) NULL,
[KZTLF] [nvarchar] (1) NULL,
[KZVBR] [nvarchar] (1) NULL,
[KZWI1] [decimal] (13, 2) NULL,
[KZWI2] [decimal] (13, 2) NULL,
[KZWI3] [decimal] (13, 2) NULL,
[KZWI4] [decimal] (13, 2) NULL,
[KZWI5] [decimal] (13, 2) NULL,
[KZWI6] [decimal] (13, 2) NULL,
[LABNR] [nvarchar] (20) NULL,
[LBLKZ] [nvarchar] (1) NULL,
[LEBRE] [nvarchar] (1) NULL,
[LEWED] [nvarchar] (8) NULL,
[LFRET] [nvarchar] (4) NULL,
[LGBZO] [nvarchar] (10) NULL,
[LGBZO_B] [nvarchar] (10) NULL,
[LGORT] [nvarchar] (4) NULL,
[LMEIN] [nvarchar] (3) NULL,
[LOEKZ] [nvarchar] (1) NULL,
[LPRIO] [nvarchar] (2) NULL,
[LTSNR] [nvarchar] (6) NULL,
[MAHN1] [decimal] (3, 0) NULL,
[MAHN2] [decimal] (3, 0) NULL,
[MAHN3] [decimal] (3, 0) NULL,
[MAHNZ] [decimal] (3, 0) NULL,
[MANDT] [nvarchar] (3) NULL,
[MATKL] [nvarchar] (9) NULL,
[MATNR] [nvarchar] (18) NULL,
[MEINS] [nvarchar] (3) NULL,
[MENGE] [decimal] (13, 3) NULL,
[MEPRF] [nvarchar] (1) NULL,
[MFRGR] [nvarchar] (8) NULL,
[MFRNR] [nvarchar] (10) NULL,
[MFRPN] [nvarchar] (40) NULL,
[MFZHI] [decimal] (15, 3) NULL,
[MHDRZ] [decimal] (4, 0) NULL,
[MLMAA] [nvarchar] (1) NULL,
[MPROF] [nvarchar] (4) NULL,
[MTART] [nvarchar] (4) NULL,
[MWSKZ] [nvarchar] (2) NULL,
[NAVNW] [decimal] (13, 2) NULL,
[NETPR] [decimal] (11, 2) NULL,
[NETWR] [decimal] (13, 2) NULL,
[NFABD] [nvarchar] (8) NULL,
[NLABD] [nvarchar] (8) NULL,
[NOTKZ] [nvarchar] (1) NULL,
[NOVET] [nvarchar] (1) NULL,
[NRFHG] [nvarchar] (1) NULL,
[NTGEW] [decimal] (13, 3) NULL,
[PACKNO] [nvarchar] (10) NULL,
[PEINH] [decimal] (5, 0) NULL,
[PLIFZ] [decimal] (3, 0) NULL,
[PNSTAT] [nvarchar] (1) NULL,
[PRDAT] [nvarchar] (8) NULL,
[PRSDR] [nvarchar] (1) NULL,
[PSTYP] [nvarchar] (1) NULL,
[PUNEI] [nvarchar] (3) NULL,
[RDPRF] [nvarchar] (4) NULL,
[REFSITE] [nvarchar] (4) NULL,
[REPOS] [nvarchar] (1) NULL,
[RESLO] [nvarchar] (4) NULL,
[RETPO] [nvarchar] (1) NULL,
[REVLV] [nvarchar] (2) NULL,
[SAISJ] [nvarchar] (4) NULL,
[SAISO] [nvarchar] (4) NULL,
[SATNR] [nvarchar] (18) NULL,
[SCHPR] [nvarchar] (1) NULL,
[SERNP] [nvarchar] (4) NULL,
[SERRU] [nvarchar] (1) NULL,
[SIKGR] [nvarchar] (3) NULL,
[SKTOF] [nvarchar] (1) NULL,
[SOBKZ] [nvarchar] (1) NULL,
[SPINF] [nvarchar] (1) NULL,
[SSQSS] [nvarchar] (8) NULL,
[STAFO] [nvarchar] (6) NULL,
[STAPO] [nvarchar] (1) NULL,
[STATU] [nvarchar] (1) NULL,
[STATUS] [nvarchar] (1) NULL,
[STPAC] [nvarchar] (1) NULL,
[TECHS] [nvarchar] (12) NULL,
[TWRKZ] [nvarchar] (1) NULL,
[TXJCD] [nvarchar] (15) NULL,
[TXZ01] [nvarchar] (40) NULL,
[TZONRC] [nvarchar] (6) NULL,
[UEBPO] [nvarchar] (5) NULL,
[UEBTK] [nvarchar] (1) NULL,
[UEBTO] [decimal] (3, 1) NULL,
[UMREN] [decimal] (5, 0) NULL,
[UMREZ] [decimal] (5, 0) NULL,
[UMSOK] [nvarchar] (1) NULL,
[UNTTO] [decimal] (3, 1) NULL,
[UPTYP] [nvarchar] (1) NULL,
[UPVOR] [nvarchar] (1) NULL,
[USEQU] [nvarchar] (1) NULL,
[VOLEH] [nvarchar] (3) NULL,
[VOLUM] [decimal] (13, 3) NULL,
[VORAB] [nvarchar] (1) NULL,
[VRTKZ] [nvarchar] (1) NULL,
[WEBAZ] [decimal] (3, 0) NULL,
[WEBRE] [nvarchar] (1) NULL,
[WEPOS] [nvarchar] (1) NULL,
[WERKS] [nvarchar] (4) NULL,
[WEUNB] [nvarchar] (1) NULL,
[XCONDITIONS] [nvarchar] (1) NULL,
[XERSY] [nvarchar] (1) NULL,
[XOBLR] [nvarchar] (1) NULL,
[ZGTYP] [nvarchar] (4) NULL,
[ZWERT] [decimal] (13, 2) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_MAKT]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_MAKT]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_MAKT_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_MAKT_IsDuplicate] DEFAULT ((0)),
[MAKTG] [nvarchar] (40) NULL,
[MAKTX] [nvarchar] (40) NULL,
[MANDT] [nvarchar] (3) NULL,
[MATNR] [nvarchar] (18) NULL,
[SPRAS] [nvarchar] (1) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_TCURR]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_TCURR]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_TCURR_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_TCURR_IsDuplicate] DEFAULT ((0)),
[FCURR] [nvarchar] (5) NULL,
[FFACT] [decimal] (9, 0) NULL,
[GDATU] [nvarchar] (8) NULL,
[KURST] [nvarchar] (4) NULL,
[MANDT] [nvarchar] (3) NULL,
[TCURR] [nvarchar] (5) NULL,
[TFACT] [decimal] (9, 0) NULL,
[UKURS] [decimal] (9, 5) NULL
)
GO
PRINT N'Creating [tsa].[ics_land_SAP_SVK_EKBE]'
GO
CREATE TABLE [tsa].[ics_land_SAP_SVK_EKBE]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKBE_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_SVK_EKBE_IsDuplicate] DEFAULT ((0)),
[AREWB] [decimal] (13, 2) NULL,
[AREWR] [decimal] (13, 2) NULL,
[AREWW] [decimal] (13, 2) NULL,
[BAMNG] [decimal] (13, 3) NULL,
[BEKKN] [nvarchar] (2) NULL,
[BELNR] [nvarchar] (10) NULL,
[BEWTP] [nvarchar] (1) NULL,
[BLDAT] [nvarchar] (8) NULL,
[BPMNG] [decimal] (13, 3) NULL,
[BPWES] [decimal] (13, 3) NULL,
[BUDAT] [nvarchar] (8) NULL,
[BUZEI] [nvarchar] (4) NULL,
[BWART] [nvarchar] (3) NULL,
[BWTAR] [nvarchar] (10) NULL,
[CHARG] [nvarchar] (10) NULL,
[CPUDT] [nvarchar] (8) NULL,
[CPUTM] [nvarchar] (6) NULL,
[DMBTR] [decimal] (13, 2) NULL,
[EBELN] [nvarchar] (10) NULL,
[EBELP] [nvarchar] (5) NULL,
[ELIKZ] [nvarchar] (1) NULL,
[EMATN] [nvarchar] (18) NULL,
[ERNAM] [nvarchar] (12) NULL,
[ET_UPD] [nvarchar] (1) NULL,
[ETENS] [nvarchar] (4) NULL,
[EVERE] [nvarchar] (2) NULL,
[GJAHR] [nvarchar] (4) NULL,
[GRUND] [nvarchar] (4) NULL,
[HSWAE] [nvarchar] (5) NULL,
[INTROW] [nvarchar] (10) NULL,
[KNUMV] [nvarchar] (10) NULL,
[LEMIN] [nvarchar] (1) NULL,
[LFBNR] [nvarchar] (10) NULL,
[LFGJA] [nvarchar] (4) NULL,
[LFPOS] [nvarchar] (4) NULL,
[LSMEH] [nvarchar] (3) NULL,
[LSMNG] [decimal] (13, 3) NULL,
[MANDT] [nvarchar] (3) NULL,
[MATNR] [nvarchar] (18) NULL,
[MENGE] [decimal] (13, 3) NULL,
[MWSKZ] [nvarchar] (2) NULL,
[PACKNO] [nvarchar] (10) NULL,
[QTY_DIFF] [decimal] (13, 3) NULL,
[REEWR] [decimal] (13, 2) NULL,
[REFWR] [decimal] (13, 2) NULL,
[REWRB] [decimal] (13, 2) NULL,
[SAPRL] [nvarchar] (4) NULL,
[SHKZG] [nvarchar] (1) NULL,
[SRVPOS] [nvarchar] (18) NULL,
[VGABE] [nvarchar] (1) NULL,
[WAERS] [nvarchar] (5) NULL,
[WERKS] [nvarchar] (4) NULL,
[WESBS] [decimal] (13, 3) NULL,
[WRBTR] [decimal] (13, 2) NULL,
[XBLNR] [nvarchar] (16) NULL,
[XUNPL] [nvarchar] (1) NULL,
[XWOFF] [nvarchar] (1) NULL,
[XWSBR] [nvarchar] (1) NULL,
[ZEKKN] [nvarchar] (2) NULL
)
GO
