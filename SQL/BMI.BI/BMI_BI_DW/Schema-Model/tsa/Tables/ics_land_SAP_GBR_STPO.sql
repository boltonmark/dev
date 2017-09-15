CREATE TABLE [tsa].[ics_land_SAP_GBR_STPO]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_GBR_STPO_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_GBR_STPO_IsDuplicate] DEFAULT ((0)),
[MANDT] [nvarchar] (3) NULL,
[STLTY] [nvarchar] (1) NULL,
[STLNR] [nvarchar] (8) NULL,
[STLKN] [nvarchar] (8) NULL,
[STPOZ] [nvarchar] (8) NULL,
[DATUV] [datetime] NULL,
[TECHV] [nvarchar] (12) NULL,
[AENNR] [nvarchar] (12) NULL,
[LKENZ] [nvarchar] (1) NULL,
[VGKNT] [nvarchar] (8) NULL,
[VGPZL] [nvarchar] (8) NULL,
[ANDAT] [datetime] NULL,
[ANNAM] [nvarchar] (12) NULL,
[AEDAT] [datetime] NULL,
[AENAM] [nvarchar] (12) NULL,
[IDNRK] [nvarchar] (18) NULL,
[PSWRK] [nvarchar] (4) NULL,
[POSTP] [nvarchar] (1) NULL,
[POSNR] [nvarchar] (4) NULL,
[SORTF] [nvarchar] (10) NULL,
[MEINS] [nvarchar] (3) NULL,
[MENGE] [decimal] (13, 3) NULL,
[FMENG] [nvarchar] (1) NULL,
[AUSCH] [decimal] (5, 2) NULL,
[AVOAU] [decimal] (5, 2) NULL,
[NETAU] [nvarchar] (1) NULL,
[SCHGT] [nvarchar] (1) NULL,
[BEIKZ] [nvarchar] (1) NULL,
[ERSKZ] [nvarchar] (1) NULL,
[RVREL] [nvarchar] (1) NULL,
[SANFE] [nvarchar] (1) NULL,
[SANIN] [nvarchar] (1) NULL,
[SANKA] [nvarchar] (1) NULL,
[SANKO] [nvarchar] (1) NULL,
[SANVS] [nvarchar] (1) NULL,
[STKKZ] [nvarchar] (1) NULL,
[REKRI] [nvarchar] (1) NULL,
[REKRS] [nvarchar] (1) NULL,
[CADPO] [nvarchar] (1) NULL,
[NFMAT] [nvarchar] (18) NULL,
[NLFZT] [decimal] (3, 0) NULL,
[VERTI] [nvarchar] (4) NULL,
[ALPOS] [nvarchar] (1) NULL,
[EWAHR] [decimal] (3, 0) NULL,
[EKGRP] [nvarchar] (3) NULL,
[LIFZT] [decimal] (3, 0) NULL,
[LIFNR] [nvarchar] (10) NULL,
[PREIS] [decimal] (11, 2) NULL,
[PEINH] [decimal] (5, 0) NULL,
[WAERS] [nvarchar] (5) NULL,
[SAKTO] [nvarchar] (10) NULL,
[ROANZ] [decimal] (13, 3) NULL,
[ROMS1] [decimal] (13, 3) NULL,
[ROMS2] [decimal] (13, 3) NULL,
[ROMS3] [decimal] (13, 3) NULL,
[ROMEI] [nvarchar] (3) NULL,
[ROMEN] [decimal] (13, 3) NULL,
[RFORM] [nvarchar] (2) NULL,
[UPSKZ] [nvarchar] (1) NULL,
[VALKZ] [nvarchar] (1) NULL,
[LTXSP] [nvarchar] (1) NULL,
[POTX1] [nvarchar] (40) NULL,
[POTX2] [nvarchar] (40) NULL,
[OBJTY] [nvarchar] (1) NULL,
[MATKL] [nvarchar] (9) NULL,
[WEBAZ] [decimal] (3, 0) NULL,
[DOKAR] [nvarchar] (3) NULL,
[DOKNR] [nvarchar] (25) NULL,
[DOKVR] [nvarchar] (2) NULL,
[DOKTL] [nvarchar] (3) NULL,
[CSSTR] [decimal] (5, 2) NULL,
[CLASS] [nvarchar] (18) NULL,
[KLART] [nvarchar] (3) NULL,
[POTPR] [nvarchar] (1) NULL,
[AWAKZ] [nvarchar] (1) NULL,
[INSKZ] [nvarchar] (1) NULL,
[VCEKZ] [nvarchar] (1) NULL,
[VSTKZ] [nvarchar] (1) NULL,
[VACKZ] [nvarchar] (1) NULL,
[EKORG] [nvarchar] (4) NULL,
[CLOBK] [nvarchar] (1) NULL,
[CLMUL] [nvarchar] (1) NULL,
[CLALT] [nvarchar] (1) NULL,
[CVIEW] [nvarchar] (10) NULL,
[KNOBJ] [nvarchar] (18) NULL,
[LGORT] [nvarchar] (4) NULL,
[KZKUP] [nvarchar] (1) NULL,
[INTRM] [nvarchar] (18) NULL,
[TPEKZ] [nvarchar] (1) NULL,
[STVKN] [nvarchar] (8) NULL,
[DVDAT] [datetime] NULL,
[DVNAM] [nvarchar] (12) NULL,
[DSPST] [nvarchar] (2) NULL,
[ALPST] [nvarchar] (1) NULL,
[ALPRF] [nvarchar] (2) NULL,
[ALPGR] [nvarchar] (2) NULL,
[KZNFP] [nvarchar] (1) NULL,
[NFGRP] [nvarchar] (2) NULL,
[NFEAG] [nvarchar] (2) NULL,
[KNDVB] [nvarchar] (1) NULL,
[KNDBZ] [nvarchar] (1) NULL,
[KSTTY] [nvarchar] (1) NULL,
[KSTNR] [nvarchar] (8) NULL,
[KSTKN] [nvarchar] (8) NULL,
[KSTPZ] [nvarchar] (8) NULL,
[CLSZU] [nvarchar] (8) NULL,
[KZCLB] [nvarchar] (1) NULL,
[AEHLP] [nvarchar] (2) NULL,
[PRVBE] [nvarchar] (10) NULL,
[NLFZV] [decimal] (3, 0) NULL,
[NLFMV] [nvarchar] (3) NULL,
[IDPOS] [nvarchar] (20) NULL,
[IDHIS] [nvarchar] (5) NULL,
[IDVAR] [nvarchar] (5) NULL,
[ALEKZ] [nvarchar] (1) NULL,
[ITMID] [nvarchar] (8) NULL,
[GUID] [nvarchar] (22) NULL,
[ITSOB] [nvarchar] (2) NULL,
[RFPNT] [nvarchar] (20) NULL,
[GUIDX] [binary] (16) NULL,
[CUFACTOR] [nvarchar] (6) NULL,
[FUNCID] [nvarchar] (40) NULL
)
GO