CREATE TABLE [tsa].[ics_land_aspect4_VAOFTBL]
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
[VAOF_RECSTS] [decimal] (1, 0) NULL,
[VAOF_RECID] [nvarchar] (2) NULL,
[VAOF_VARENR] [nvarchar] (16) NULL,
[VAOF_ENHED] [nvarchar] (5) NULL,
[VAOF_FRADT] [decimal] (8, 0) NULL,
[VAOF_KONCRN] [decimal] (3, 0) NULL,
[VAOF_FIRMA] [decimal] (3, 0) NULL,
[VAOF_OMRFAK] [decimal] (9, 4) NULL,
[VAOF_OMRKOD] [nvarchar] (1) NULL,
[VAOF_AENDDT] [decimal] (8, 0) NULL,
[VAOF_AENDAF] [nvarchar] (10) NULL,
[VAOF_OPRDT] [decimal] (8, 0) NULL,
[VAOF_OPRAF] [nvarchar] (10) NULL,
[VAOF_TS] [decimal] (8, 0) NULL,
[VAOF_LGD] [decimal] (13, 5) NULL,
[VAOF_BRD] [decimal] (13, 5) NULL,
[VAOF_HQJ] [decimal] (13, 5) NULL,
[VAOF_VGT] [decimal] (13, 5) NULL,
[VAOF_TYPE] [nvarchar] (1) NULL,
[VAOF_SVGT] [decimal] (13, 5) NULL
)
GO