CREATE TABLE [tsa].[ics_land_SAP_GBR_KNVV]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_GBR_KNVV_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_SAP_GBR_KNVV_IsDuplicate] DEFAULT ((0)),
[MANDT] [nvarchar] (3) NULL,
[KUNNR] [nvarchar] (10) NULL,
[VKORG] [nvarchar] (4) NULL,
[VTWEG] [nvarchar] (2) NULL,
[SPART] [nvarchar] (2) NULL,
[ERNAM] [nvarchar] (12) NULL,
[ERDAT] [datetime] NULL,
[BEGRU] [nvarchar] (4) NULL,
[LOEVM] [nvarchar] (1) NULL,
[VERSG] [nvarchar] (1) NULL,
[AUFSD] [nvarchar] (2) NULL,
[KALKS] [nvarchar] (1) NULL,
[KDGRP] [nvarchar] (2) NULL,
[BZIRK] [nvarchar] (6) NULL,
[KONDA] [nvarchar] (2) NULL,
[PLTYP] [nvarchar] (2) NULL,
[AWAHR] [nvarchar] (3) NULL,
[INCO1] [nvarchar] (3) NULL,
[INCO2] [nvarchar] (28) NULL,
[LIFSD] [nvarchar] (2) NULL,
[AUTLF] [nvarchar] (1) NULL,
[ANTLF] [decimal] (1, 0) NULL,
[KZTLF] [nvarchar] (1) NULL,
[KZAZU] [nvarchar] (1) NULL,
[CHSPL] [nvarchar] (1) NULL,
[LPRIO] [nvarchar] (2) NULL,
[EIKTO] [nvarchar] (12) NULL,
[VSBED] [nvarchar] (2) NULL,
[FAKSD] [nvarchar] (2) NULL,
[MRNKZ] [nvarchar] (1) NULL,
[PERFK] [nvarchar] (2) NULL,
[PERRL] [nvarchar] (2) NULL,
[KVAKZ] [nvarchar] (1) NULL,
[KVAWT] [decimal] (13, 2) NULL,
[WAERS] [nvarchar] (5) NULL,
[KLABC] [nvarchar] (2) NULL,
[KTGRD] [nvarchar] (2) NULL,
[ZTERM] [nvarchar] (4) NULL,
[VWERK] [nvarchar] (4) NULL,
[VKGRP] [nvarchar] (3) NULL,
[VKBUR] [nvarchar] (4) NULL,
[VSORT] [nvarchar] (10) NULL,
[KVGR1] [nvarchar] (3) NULL,
[KVGR2] [nvarchar] (3) NULL,
[KVGR3] [nvarchar] (3) NULL,
[KVGR4] [nvarchar] (3) NULL,
[KVGR5] [nvarchar] (3) NULL,
[BOKRE] [nvarchar] (1) NULL,
[BOIDT] [datetime] NULL,
[KURST] [nvarchar] (4) NULL,
[PRFRE] [nvarchar] (1) NULL,
[PRAT1] [nvarchar] (1) NULL,
[PRAT2] [nvarchar] (1) NULL,
[PRAT3] [nvarchar] (1) NULL,
[PRAT4] [nvarchar] (1) NULL,
[PRAT5] [nvarchar] (1) NULL,
[PRAT6] [nvarchar] (1) NULL,
[PRAT7] [nvarchar] (1) NULL,
[PRAT8] [nvarchar] (1) NULL,
[PRAT9] [nvarchar] (1) NULL,
[PRATA] [nvarchar] (1) NULL,
[KABSS] [nvarchar] (4) NULL,
[KKBER] [nvarchar] (4) NULL,
[CASSD] [nvarchar] (2) NULL,
[RDOFF] [nvarchar] (1) NULL,
[AGREL] [nvarchar] (1) NULL,
[MEGRU] [nvarchar] (4) NULL,
[UEBTO] [decimal] (3, 1) NULL,
[UNTTO] [decimal] (3, 1) NULL,
[UEBTK] [nvarchar] (1) NULL,
[PVKSM] [nvarchar] (2) NULL,
[PODKZ] [nvarchar] (1) NULL,
[PODTG] [decimal] (11, 0) NULL,
[BLIND] [nvarchar] (1) NULL,
[CARRIER_NOTIF] [nvarchar] (1) NULL,
[_BEV1_EMLGPFAND] [nvarchar] (1) NULL,
[_BEV1_EMLGFORTS] [nvarchar] (1) NULL
)
GO
