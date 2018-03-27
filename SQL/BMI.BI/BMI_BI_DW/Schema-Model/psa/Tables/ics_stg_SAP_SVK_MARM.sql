CREATE TABLE [psa].[ics_stg_SAP_SVK_MARM]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_SAP_SVK_MARM_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_SAP_SVK_MARM_IsIncomplete] DEFAULT ('N'),
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
[MATNR] [nvarchar] (18) NOT NULL,
[MEABM] [nvarchar] (3) NULL,
[MEINH] [nvarchar] (3) NOT NULL,
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
ALTER TABLE [psa].[ics_stg_SAP_SVK_MARM] ADD CONSTRAINT [PK_psa_ics_stg_SAP_SVK_MARM] PRIMARY KEY CLUSTERED  ([MEINH], [MATNR])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_SAP_SVK_MARM', NULL, NULL
GO
