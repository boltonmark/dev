CREATE TABLE [psa].[ics_stg_iScala_HUN_PC3L3700]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_iScala_HUN_PC3L3700_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_iScala_HUN_PC3L3700_IsIncomplete] DEFAULT ('N'),
[PC3L001] [nchar] (10) NOT NULL,
[PC3L002] [nchar] (10) NOT NULL,
[PC3L003] [nchar] (6) NOT NULL,
[PC3L004] [nchar] (6) NOT NULL,
[PC3L005] [int] NOT NULL,
[PC3L006] [int] NOT NULL,
[PC3L007] [nchar] (10) NULL,
[PC3L008] [int] NULL,
[PC3L009] [nchar] (10) NULL,
[PC3L010] [numeric] (26, 8) NULL,
[PC3L011] [datetime] NULL,
[PC3L012] [datetime] NULL,
[PC3L013] [nchar] (25) NULL,
[PC3L014] [nchar] (4) NULL,
[PC3L015] [nvarchar] (35) NULL,
[PC3L016] [nchar] (1) NULL,
[PC3L017] [nchar] (4) NULL,
[PC3L018] [nchar] (6) NULL,
[PC3L019] [int] NULL,
[PC3L020] [datetime] NULL,
[PC3L021] [datetime] NULL
)
GO
ALTER TABLE [psa].[ics_stg_iScala_HUN_PC3L3700] ADD CONSTRAINT [PK_psa_ics_stg_iScala_HUN_PC3L3700] PRIMARY KEY CLUSTERED  ([PC3L001], [PC3L002], [PC3L003], [PC3L004], [PC3L005], [PC3L006])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_iScala_HUN_PC3L3700', NULL, NULL
GO
