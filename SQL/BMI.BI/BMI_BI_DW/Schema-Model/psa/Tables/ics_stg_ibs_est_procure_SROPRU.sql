CREATE TABLE [psa].[ics_stg_ibs_est_procure_SROPRU]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ibs_est_procure_SROPRU_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ibs_est_procure_SROPRU_IsIncomplete] DEFAULT ('N'),
[PJOPNO] [decimal] (2, 0) NULL,
[PJDEID] [nvarchar] (8) NULL,
[PJSTAT] [nvarchar] (1) NULL,
[PJPRDC] [nvarchar] (35) NOT NULL,
[PJUNIT] [nvarchar] (5) NULL,
[PJCONV] [decimal] (15, 9) NULL,
[PJSUNI] [nvarchar] (1) NULL,
[PJPUNI] [nvarchar] (1) NULL,
[PJDECU] [decimal] (1, 0) NULL,
[PJGWGT] [decimal] (11, 5) NULL,
[PJNWGT] [decimal] (11, 5) NULL,
[PJGVOL] [decimal] (11, 5) NULL,
[PJNVOL] [decimal] (11, 5) NULL,
[PJEANP] [nvarchar] (14) NULL,
[PJLBCD] [nvarchar] (3) NULL,
[PJPCKT] [nvarchar] (10) NULL,
[PJLENG] [decimal] (9, 3) NULL,
[PJHIGH] [decimal] (9, 3) NULL,
[PJWIDT] [decimal] (9, 3) NULL,
[PJMUNI] [nvarchar] (1) NULL,
[PJCDAT] [decimal] (8, 0) NULL,
[PJCRTI] [decimal] (6, 0) NULL,
[PJCFCO] [nvarchar] (2) NULL,
[PJPTQT] [decimal] (15, 3) NULL,
[PJDSYN] [nvarchar] (1) NULL,
[PJSUYN] [nvarchar] (1) NULL,
[PJSCYN] [nvarchar] (1) NULL
)
GO
ALTER TABLE [psa].[ics_stg_ibs_est_procure_SROPRU] ADD CONSTRAINT [pk_psa_ics_stg_ibs_est_procure_SROPRU] PRIMARY KEY CLUSTERED  ([PJPRDC])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_ibs_est_procure_SROPRU', NULL, NULL
GO
