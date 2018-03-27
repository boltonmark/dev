CREATE TABLE [psa].[ics_stg_iScala_HUN_PC463700]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_iScala_HUN_PC463700_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_iScala_HUN_PC463700_IsIncomplete] DEFAULT ('N'),
[PC46001] [nchar] (10) NOT NULL,
[PC46002] [nchar] (6) NOT NULL,
[PC46003] [nchar] (6) NOT NULL,
[PC46004] [nchar] (6) NOT NULL,
[PC46005] [int] NOT NULL,
[PC46006] [int] NOT NULL,
[PC46007] [nchar] (10) NULL,
[PC46008] [int] NULL,
[PC46009] [nchar] (10) NULL,
[PC46010] [numeric] (26, 8) NULL,
[PC46011] [datetime] NULL,
[PC46012] [datetime] NULL,
[PC46013] [nvarchar] (25) NOT NULL,
[PC46014] [nchar] (4) NULL,
[PC46015] [nvarchar] (35) NULL,
[PC46016] [nchar] (1) NULL,
[PC46017] [nchar] (4) NULL,
[PC46018] [nchar] (6) NULL,
[PC46019] [int] NULL,
[PC46020] [datetime] NULL,
[PC46021] [datetime] NULL
)
GO
ALTER TABLE [psa].[ics_stg_iScala_HUN_PC463700] ADD CONSTRAINT [PK_psa_ics_stg_iScala_HUN_PC463700] PRIMARY KEY CLUSTERED  ([PC46001], [PC46013], [PC46002], [PC46003], [PC46004], [PC46005], [PC46006])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_iScala_HUN_PC463700', NULL, NULL
GO
