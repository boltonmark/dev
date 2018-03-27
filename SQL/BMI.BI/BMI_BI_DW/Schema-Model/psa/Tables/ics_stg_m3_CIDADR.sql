CREATE TABLE [psa].[ics_stg_m3_CIDADR]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_stg_m3_CIDADR_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_stg_m3_CIDADR_IsIncomplete] DEFAULT ('N'),
[SACONO] [decimal] (3, 0) NULL,
[SASUNO] [nvarchar] (255) NOT NULL,
[SAADTE] [decimal] (2, 0) NOT NULL,
[SAADID] [nvarchar] (255) NOT NULL,
[SASTDT] [decimal] (8, 0) NOT NULL,
[SASUNM] [nvarchar] (255) NULL,
[SAPRIA] [decimal] (1, 0) NULL,
[SAADR1] [nvarchar] (255) NULL,
[SAADR2] [nvarchar] (255) NULL,
[SAADR3] [nvarchar] (255) NULL,
[SAADR4] [nvarchar] (255) NULL,
[SACSCD] [nvarchar] (255) NULL,
[SAPONO] [nvarchar] (255) NULL,
[SAADVI] [nvarchar] (255) NULL,
[SAEDES] [nvarchar] (255) NULL,
[SAGEOC] [decimal] (9, 0) NULL,
[SATAXC] [nvarchar] (255) NULL,
[SAECAR] [nvarchar] (255) NULL,
[SATOWN] [nvarchar] (255) NULL,
[SAPNOD] [nvarchar] (255) NULL,
[SATXID] [decimal] (13, 0) NULL,
[SARGDT] [decimal] (8, 0) NULL,
[SARGTM] [decimal] (6, 0) NULL,
[SALMDT] [decimal] (8, 0) NULL,
[SACHNO] [decimal] (3, 0) NULL,
[SACHID] [nvarchar] (255) NULL,
[SALMTS] [decimal] (18, 0) NULL
)
GO
ALTER TABLE [psa].[ics_stg_m3_CIDADR] ADD CONSTRAINT [psa_ics_stg_m3_CIDADR_PK] PRIMARY KEY CLUSTERED  ([SASUNO], [SAADTE], [SAADID], [SASTDT])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_m3_CIDADR', NULL, NULL
GO
