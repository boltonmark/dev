CREATE TABLE [tsa].[ics_land_SAP_GBR_MARA]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_GBR_MARA_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_GBR_MARA_IsDuplicate] DEFAULT ((0)),
[MANDT] [nvarchar] (3) NULL,
[MATNR] [nvarchar] (18) NULL,
[ERSDA] [datetime] NULL,
[ERNAM] [nvarchar] (12) NULL,
[LAEDA] [datetime] NULL,
[AENAM] [nvarchar] (12) NULL,
[VPSTA] [nvarchar] (15) NULL,
[PSTAT] [nvarchar] (15) NULL,
[LVORM] [nvarchar] (1) NULL,
[MTART] [nvarchar] (4) NULL,
[MBRSH] [nvarchar] (1) NULL,
[MATKL] [nvarchar] (9) NULL,
[BISMT] [nvarchar] (18) NULL,
[MEINS] [nvarchar] (3) NULL,
[BSTME] [nvarchar] (3) NULL,
[ZEINR] [nvarchar] (22) NULL,
[ZEIAR] [nvarchar] (3) NULL,
[ZEIVR] [nvarchar] (2) NULL,
[ZEIFO] [nvarchar] (4) NULL,
[AESZN] [nvarchar] (6) NULL,
[BLATT] [nvarchar] (3) NULL,
[BLANZ] [nvarchar] (3) NULL,
[FERTH] [nvarchar] (18) NULL,
[FORMT] [nvarchar] (4) NULL,
[GROES] [nvarchar] (32) NULL,
[WRKST] [nvarchar] (48) NULL,
[NORMT] [nvarchar] (18) NULL,
[LABOR] [nvarchar] (3) NULL,
[EKWSL] [nvarchar] (4) NULL,
[BRGEW] [decimal] (13, 3) NULL,
[NTGEW] [decimal] (13, 3) NULL,
[GEWEI] [nvarchar] (3) NULL,
[VOLUM] [decimal] (13, 3) NULL,
[VOLEH] [nvarchar] (3) NULL,
[BEHVO] [nvarchar] (2) NULL,
[RAUBE] [nvarchar] (2) NULL,
[TEMPB] [nvarchar] (2) NULL,
[DISST] [nvarchar] (3) NULL,
[TRAGR] [nvarchar] (4) NULL,
[STOFF] [nvarchar] (18) NULL,
[SPART] [nvarchar] (2) NULL,
[KUNNR] [nvarchar] (10) NULL,
[EANNR] [nvarchar] (13) NULL,
[WESCH] [decimal] (13, 3) NULL,
[BWVOR] [nvarchar] (1) NULL,
[BWSCL] [nvarchar] (1) NULL,
[SAISO] [nvarchar] (4) NULL,
[ETIAR] [nvarchar] (2) NULL,
[ETIFO] [nvarchar] (2) NULL,
[ENTAR] [nvarchar] (1) NULL,
[EAN11] [nvarchar] (18) NULL,
[NUMTP] [nvarchar] (2) NULL,
[LAENG] [decimal] (13, 3) NULL,
[BREIT] [decimal] (13, 3) NULL,
[HOEHE] [decimal] (13, 3) NULL,
[MEABM] [nvarchar] (3) NULL,
[PRDHA] [nvarchar] (18) NULL,
[AEKLK] [nvarchar] (1) NULL,
[CADKZ] [nvarchar] (1) NULL,
[QMPUR] [nvarchar] (1) NULL,
[ERGEW] [decimal] (13, 3) NULL,
[ERGEI] [nvarchar] (3) NULL,
[ERVOL] [decimal] (13, 3) NULL,
[ERVOE] [nvarchar] (3) NULL,
[GEWTO] [decimal] (3, 1) NULL,
[VOLTO] [decimal] (3, 1) NULL,
[VABME] [nvarchar] (1) NULL,
[KZREV] [nvarchar] (1) NULL,
[KZKFG] [nvarchar] (1) NULL,
[XCHPF] [nvarchar] (1) NULL,
[VHART] [nvarchar] (4) NULL,
[FUELG] [decimal] (3, 0) NULL,
[STFAK] [int] NULL,
[MAGRV] [nvarchar] (4) NULL,
[BEGRU] [nvarchar] (4) NULL,
[DATAB] [datetime] NULL,
[LIQDT] [datetime] NULL,
[SAISJ] [nvarchar] (4) NULL,
[PLGTP] [nvarchar] (2) NULL,
[MLGUT] [nvarchar] (1) NULL,
[EXTWG] [nvarchar] (18) NULL,
[SATNR] [nvarchar] (18) NULL,
[ATTYP] [nvarchar] (2) NULL,
[KZKUP] [nvarchar] (1) NULL,
[KZNFM] [nvarchar] (1) NULL,
[PMATA] [nvarchar] (18) NULL,
[MSTAE] [nvarchar] (2) NULL,
[MSTAV] [nvarchar] (2) NULL,
[MSTDE] [datetime] NULL,
[MSTDV] [datetime] NULL,
[TAKLV] [nvarchar] (1) NULL,
[RBNRM] [nvarchar] (9) NULL,
[MHDRZ] [decimal] (4, 0) NULL,
[MHDHB] [decimal] (4, 0) NULL,
[MHDLP] [decimal] (3, 0) NULL,
[INHME] [nvarchar] (3) NULL,
[INHAL] [decimal] (13, 3) NULL,
[VPREH] [decimal] (5, 0) NULL,
[ETIAG] [nvarchar] (18) NULL,
[INHBR] [decimal] (13, 3) NULL,
[CMETH] [nvarchar] (1) NULL,
[CUOBF] [nvarchar] (18) NULL,
[KZUMW] [nvarchar] (1) NULL,
[KOSCH] [nvarchar] (18) NULL,
[SPROF] [nvarchar] (1) NULL,
[NRFHG] [nvarchar] (1) NULL,
[MFRPN] [nvarchar] (40) NULL,
[MFRNR] [nvarchar] (10) NULL,
[BMATN] [nvarchar] (18) NULL,
[MPROF] [nvarchar] (4) NULL,
[KZWSM] [nvarchar] (1) NULL,
[SAITY] [nvarchar] (2) NULL,
[PROFL] [nvarchar] (3) NULL,
[IHIVI] [nvarchar] (1) NULL,
[ILOOS] [nvarchar] (1) NULL,
[SERLV] [nvarchar] (1) NULL,
[KZGVH] [nvarchar] (1) NULL,
[XGCHP] [nvarchar] (1) NULL,
[KZEFF] [nvarchar] (1) NULL,
[COMPL] [nvarchar] (2) NULL,
[IPRKZ] [nvarchar] (1) NULL,
[RDMHD] [nvarchar] (1) NULL,
[PRZUS] [nvarchar] (1) NULL,
[MTPOS_MARA] [nvarchar] (4) NULL,
[BFLME] [nvarchar] (1) NULL,
[MATFI] [nvarchar] (1) NULL,
[CMREL] [nvarchar] (1) NULL,
[BBTYP] [nvarchar] (1) NULL,
[SLED_BBD] [nvarchar] (1) NULL,
[GTIN_VARIANT] [nvarchar] (2) NULL,
[GENNR] [nvarchar] (18) NULL,
[RMATP] [nvarchar] (18) NULL,
[GDS_RELEVANT] [nvarchar] (1) NULL,
[WEORA] [nvarchar] (1) NULL,
[HUTYP_DFLT] [nvarchar] (4) NULL,
[PILFERABLE] [nvarchar] (1) NULL,
[WHSTC] [nvarchar] (2) NULL,
[WHMATGR] [nvarchar] (4) NULL,
[HNDLCODE] [nvarchar] (4) NULL,
[HAZMAT] [nvarchar] (1) NULL,
[HUTYP] [nvarchar] (4) NULL,
[TARE_VAR] [nvarchar] (1) NULL,
[MAXC] [decimal] (15, 3) NULL,
[MAXC_TOL] [decimal] (3, 1) NULL,
[MAXL] [decimal] (15, 3) NULL,
[MAXB] [decimal] (15, 3) NULL,
[MAXH] [decimal] (15, 3) NULL,
[MAXDIM_UOM] [nvarchar] (3) NULL,
[HERKL] [nvarchar] (3) NULL,
[MFRGR] [nvarchar] (8) NULL,
[QQTIME] [decimal] (3, 0) NULL,
[QQTIMEUOM] [nvarchar] (3) NULL,
[QGRP] [nvarchar] (4) NULL,
[SERIAL] [nvarchar] (4) NULL,
[PS_SMARTFORM] [nvarchar] (30) NULL,
[LOGUNIT] [nvarchar] (3) NULL,
[CWQREL] [nvarchar] (1) NULL,
[CWQPROC] [nvarchar] (2) NULL,
[CWQTOLGR] [nvarchar] (9) NULL,
[ADPROF] [nvarchar] (3) NULL,
[IPMIPPRODUCT] [nvarchar] (40) NULL,
[ALLOW_PMAT_IGNO] [nvarchar] (1) NULL,
[MEDIUM] [nvarchar] (6) NULL,
[ANIMAL_ORIGIN] [nvarchar] (1) NULL,
[TEXTILE_COMP_IND] [nvarchar] (1) NULL,
[ANP] [nvarchar] (9) NULL,
[_BEV1_LULEINH] [nvarchar] (8) NULL,
[_BEV1_LULDEGRP] [nvarchar] (3) NULL,
[_BEV1_NESTRUCCAT] [nvarchar] (1) NULL,
[_DSD_SL_TOLTYP] [nvarchar] (4) NULL,
[_DSD_SV_CNT_GRP] [nvarchar] (10) NULL,
[_DSD_VC_GROUP] [nvarchar] (6) NULL,
[_VSO_R_TILT_IND] [nvarchar] (1) NULL,
[_VSO_R_STACK_IND] [nvarchar] (1) NULL,
[_VSO_R_BOT_IND] [nvarchar] (1) NULL,
[_VSO_R_TOP_IND] [nvarchar] (1) NULL,
[_VSO_R_STACK_NO] [nvarchar] (3) NULL,
[_VSO_R_PAL_IND] [nvarchar] (1) NULL,
[_VSO_R_PAL_OVR_D] [decimal] (13, 3) NULL,
[_VSO_R_PAL_OVR_W] [decimal] (13, 3) NULL,
[_VSO_R_PAL_B_HT] [decimal] (13, 3) NULL,
[_VSO_R_PAL_MIN_H] [decimal] (13, 3) NULL,
[_VSO_R_TOL_B_HT] [decimal] (13, 3) NULL,
[_VSO_R_NO_P_GVH] [nvarchar] (2) NULL,
[_VSO_R_QUAN_UNIT] [nvarchar] (3) NULL,
[_VSO_R_KZGVH_IND] [nvarchar] (1) NULL,
[PACKCODE] [nvarchar] (10) NULL,
[DG_PACK_STATUS] [nvarchar] (10) NULL,
[MCOND] [nvarchar] (1) NULL,
[RETDELC] [nvarchar] (1) NULL,
[LOGLEV_RETO] [nvarchar] (1) NULL,
[NSNID] [nvarchar] (9) NULL,
[IMATN] [nvarchar] (18) NULL,
[PICNUM] [nvarchar] (18) NULL,
[BSTAT] [nvarchar] (2) NULL,
[COLOR_ATINN] [nvarchar] (10) NULL,
[SIZE1_ATINN] [nvarchar] (10) NULL,
[SIZE2_ATINN] [nvarchar] (10) NULL,
[COLOR] [nvarchar] (18) NULL,
[SIZE1] [nvarchar] (18) NULL,
[SIZE2] [nvarchar] (18) NULL,
[FREE_CHAR] [nvarchar] (18) NULL,
[CARE_CODE] [nvarchar] (16) NULL,
[BRAND_ID] [nvarchar] (4) NULL,
[FIBER_CODE1] [nvarchar] (3) NULL,
[FIBER_PART1] [nvarchar] (3) NULL,
[FIBER_CODE2] [nvarchar] (3) NULL,
[FIBER_PART2] [nvarchar] (3) NULL,
[FIBER_CODE3] [nvarchar] (3) NULL,
[FIBER_PART3] [nvarchar] (3) NULL,
[FIBER_CODE4] [nvarchar] (3) NULL,
[FIBER_PART4] [nvarchar] (3) NULL,
[FIBER_CODE5] [nvarchar] (3) NULL,
[FIBER_PART5] [nvarchar] (3) NULL,
[FASHGRD] [nvarchar] (4) NULL
)
GO
