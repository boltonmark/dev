CREATE TABLE [tsa].[ics_land_aspect4_VEANTBL]
(
[EtlBatchRunId] [int] NULL,
[EtlThreadRunId] [int] NULL,
[DataSourceKey] [int] NULL,
[EtlSourceTable] [varchar] (200) NULL,
[EtlStepRunId] [int] NULL,
[EtlCreatedOn] [datetime] NULL,
[EtlCreatedBy] [varchar] (200) NULL,
[ExcludeFromMerge] [bit] NULL,
[IsDuplicate] [bit] NULL,
[VEAN_RECSTS] [decimal] (1, 0) NULL,
[VEAN_RECID] [nvarchar] (2) NULL,
[VEAN_NUMMER] [nvarchar] (14) NULL,
[VEAN_KONCRN] [decimal] (3, 0) NULL,
[VEAN_FIRMA] [decimal] (3, 0) NULL,
[VEAN_VARENR] [nvarchar] (16) NULL,
[VEAN_UDF1] [nvarchar] (5) NULL,
[VEAN_UDF2] [nvarchar] (5) NULL,
[VEAN_UDF3] [nvarchar] (5) NULL,
[VEAN_UDF4] [nvarchar] (5) NULL,
[VEAN_UDF5] [nvarchar] (5) NULL,
[VEAN_AENDDT] [decimal] (8, 0) NULL,
[VEAN_AENDAF] [nvarchar] (10) NULL,
[VEAN_OPRDT] [decimal] (8, 0) NULL,
[VEAN_OPRAF] [nvarchar] (10) NULL,
[VEAN_ENHED] [nvarchar] (5) NULL,
[VEAN_TS] [decimal] (8, 0) NULL
)
GO