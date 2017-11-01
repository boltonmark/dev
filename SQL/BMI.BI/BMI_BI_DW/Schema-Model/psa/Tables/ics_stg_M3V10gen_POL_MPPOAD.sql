CREATE TABLE [psa].[ics_stg_M3V10gen_POL_MPPOAD]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_gen_MPPOAD_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_gen_MPPOAD_IsIncomplete] DEFAULT ('N'),
[ADADID] [nchar] (6) NULL,
[ADADK2] [nchar] (3) NULL,
[ADADK3] [nchar] (3) NULL,
[ADADR1] [nvarchar] (36) NULL,
[ADADR2] [nvarchar] (36) NULL,
[ADADR3] [nvarchar] (36) NULL,
[ADADR4] [nvarchar] (36) NULL,
[ADCHID] [nchar] (10) NULL,
[ADCHNO] [numeric] (3, 0) NULL,
[ADCONM] [nvarchar] (36) NULL,
[ADCONO] [numeric] (18, 0) NOT NULL,
[ADCSCD] [nchar] (3) NULL,
[ADECAR] [nchar] (2) NULL,
[ADFACI] [nchar] (3) NULL,
[ADLMDT] [numeric] (8, 0) NULL,
[ADPNLI] [numeric] (18, 0) NOT NULL,
[ADPOAD] [numeric] (18, 0) NOT NULL,
[ADPONO] [nchar] (10) NULL,
[ADPRIA] [numeric] (1, 0) NULL,
[ADPUNO] [nchar] (7) NOT NULL,
[ADRGDT] [numeric] (8, 0) NULL,
[ADRGTM] [numeric] (6, 0) NULL,
[ADTOWN] [nvarchar] (20) NULL,
[ADTXID] [numeric] (13, 0) NULL,
[ADWHLO] [nchar] (3) NULL
)
GO
ALTER TABLE [psa].[ics_stg_M3V10gen_POL_MPPOAD] ADD CONSTRAINT [PK_psa_ics_stg_M3V10gen_POL_MPPOAD] PRIMARY KEY CLUSTERED  ([ADCONO], [ADPNLI], [ADPOAD], [ADPUNO])
GO
