CREATE TABLE [tsa].[ics_land_ibs_est_procure_SROGRT]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_ibs_est_procure_SROGRT_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_ibs_est_procure_SROGRT_IsDuplicate] DEFAULT ((0)),
[GRSTAT] [nvarchar] (1) NULL,
[GRGRKY] [decimal] (15, 0) NULL,
[GRORNO] [decimal] (12, 0) NULL,
[GRLINE] [decimal] (5, 0) NULL,
[GRORDT] [nvarchar] (2) NULL,
[GROREF] [nvarchar] (15) NULL,
[GRSUNO] [nvarchar] (11) NULL,
[GRTOPC] [nvarchar] (3) NULL,
[GRTOPT] [nvarchar] (30) NULL,
[GRSROM] [nvarchar] (3) NULL,
[GRPRDC] [nvarchar] (35) NULL,
[GRDESC] [nvarchar] (50) NULL,
[GRUNIT] [nvarchar] (5) NULL,
[GRPLNO] [decimal] (12, 0) NULL,
[GRPLLI] [decimal] (5, 0) NULL,
[GROQTY] [decimal] (15, 3) NULL,
[GRRDAT] [decimal] (8, 0) NULL,
[GRCQTY] [decimal] (15, 3) NULL,
[GRQQTY] [decimal] (15, 3) NULL,
[GRBALC] [nvarchar] (1) NULL,
[GRDECC] [decimal] (1, 0) NULL,
[GRPURP] [decimal] (17, 4) NULL,
[GRDCPR] [decimal] (4, 2) NULL,
[GRDCAM] [decimal] (17, 4) NULL,
[GRNETP] [decimal] (17, 4) NULL,
[GRCONO] [decimal] (8, 0) NULL,
[GRHAND] [nvarchar] (10) NULL,
[GRQQTR] [decimal] (15, 3) NULL,
[GREQTY] [decimal] (15, 3) NULL,
[GRFQTY] [decimal] (15, 3) NULL,
[GRCONF] [nvarchar] (1) NULL,
[GRCONV] [decimal] (15, 9) NULL,
[GRAMSY] [decimal] (17, 3) NULL,
[GRAMTR] [decimal] (17, 3) NULL,
[GRREMA] [decimal] (17, 4) NULL,
[GRREMS] [decimal] (17, 4) NULL,
[GRVAHC] [nvarchar] (4) NULL,
[GRITYP] [decimal] (3, 0) NULL,
[GRPCUR] [nvarchar] (4) NULL,
[GRODIS] [decimal] (4, 2) NULL,
[GROVDC] [nvarchar] (1) NULL,
[GWVAHC] [nvarchar] (4) NULL,
[GWUNIT] [nvarchar] (5) NULL,
[GWINVQ] [decimal] (15, 3) NULL,
[GWPURP] [decimal] (17, 4) NULL,
[GWDCPR] [decimal] (4, 2) NULL,
[GWODIS] [decimal] (4, 2) NULL,
[GWDCAM] [decimal] (17, 4) NULL,
[GWHQTY] [decimal] (15, 3) NULL,
[GWREFX] [decimal] (15, 0) NULL,
[GWFLAG] [nvarchar] (1) NULL,
[GWPROD] [nvarchar] (1) NULL,
[GWDIS2] [decimal] (4, 2) NULL,
[GWDIS3] [decimal] (4, 2) NULL,
[GWDIS4] [decimal] (4, 2) NULL,
[GWDIS5] [decimal] (4, 2) NULL,
[GWDIS6] [decimal] (4, 2) NULL,
[GWDIS7] [decimal] (4, 2) NULL,
[GWDIS8] [decimal] (4, 2) NULL,
[GWDIS9] [decimal] (4, 2) NULL,
[GWTAXF] [nvarchar] (1) NULL,
[GWUPBA] [decimal] (9, 5) NULL,
[GWVATI] [nvarchar] (1) NULL,
[GWTAXC] [nvarchar] (1) NULL,
[GRDIS2] [decimal] (4, 2) NULL,
[GRDIS3] [decimal] (4, 2) NULL,
[GRDIS4] [decimal] (4, 2) NULL,
[GRDIS5] [decimal] (4, 2) NULL,
[GRDIS6] [decimal] (4, 2) NULL,
[GRDIS7] [decimal] (4, 2) NULL,
[GRDIS8] [decimal] (4, 2) NULL,
[GRDIS9] [decimal] (4, 2) NULL,
[GRTAXF] [nvarchar] (1) NULL,
[GRUPBA] [decimal] (9, 5) NULL,
[GRVATI] [nvarchar] (1) NULL,
[GRTAXC] [nvarchar] (1) NULL,
[GRNCCN] [decimal] (12, 0) NULL,
[GRSPRC] [nvarchar] (35) NULL,
[GRTRNN] [nvarchar] (15) NULL,
[GRDLDT] [decimal] (8, 0) NULL,
[GRCSTS] [nvarchar] (7) NULL,
[GRDIVN] [nvarchar] (8) NULL,
[GRSPNO] [decimal] (12, 0) NULL,
[GRPHINQT] [decimal] (15, 3) NULL
)
GO
