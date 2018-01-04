﻿-- <Migration ID="8a1f45aa-6d44-4b9f-80d0-81ed047e2909" />
GO

DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC013700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC033700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC063700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC103700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC2T3700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC3L3700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC413700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC423700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC433700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC443700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC453700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PC463700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PCB13700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PCB23700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PCB33700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PCB43700];
DROP TABLE IF EXISTS [tsa].[ics_land_iScala_HUN_PCR13700];
GO

PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC2T3700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC2T3700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC2T3700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC2T3700_IsDuplicate] DEFAULT ((0)),
[PC2T001] [nchar] (10) NOT NULL,
[PC2T002] [nchar] (25) NOT NULL,
[PC2T003] [nchar] (10) NOT NULL,
[PC2T004] [nchar] (6) NOT NULL,
[PC2T005] [nvarchar] (20) NOT NULL,
[PC2T006] [int] NOT NULL,
[PC2T007] [nvarchar] (70) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC2T3700] on [tsa].[ics_land_iScala_HUN_PC2T3700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC2T3700] ON [tsa].[ics_land_iScala_HUN_PC2T3700] ([PC2T001], [PC2T002], [PC2T003], [PC2T004], [PC2T005], [PC2T006])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC3L3700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC3L3700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC3L3700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC3L3700_IsDuplicate] DEFAULT ((0)),
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
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC3L3700] on [tsa].[ics_land_iScala_HUN_PC3L3700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC3L3700] ON [tsa].[ics_land_iScala_HUN_PC3L3700] ([PC3L001], [PC3L002], [PC3L003], [PC3L004], [PC3L005], [PC3L006])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC063700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC063700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC063700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC063700_IsDuplicate] DEFAULT ((0)),
[PC06001] [nvarchar] (3) NOT NULL,
[PC06002] [nchar] (2) NOT NULL,
[PC06003] [nvarchar] (74) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC063700] on [tsa].[ics_land_iScala_HUN_PC063700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC063700] ON [tsa].[ics_land_iScala_HUN_PC063700] ([PC06001], [PC06002])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC413700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC413700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC413700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC413700_IsDuplicate] DEFAULT ((0)),
[PC41001] [nchar] (10) NOT NULL,
[PC41002] [int] NULL,
[PC41003] [nvarchar] (10) NULL,
[PC41004] [nvarchar] (10) NULL,
[PC41005] [nvarchar] (25) NULL,
[PC41006] [nvarchar] (25) NULL,
[PC41007] [int] NULL,
[PC41008] [int] NULL,
[PC41009] [int] NULL,
[PC41010] [nchar] (1) NULL,
[PC41011] [nchar] (1) NULL,
[PC41012] [int] NULL,
[PC41013] [int] NULL,
[PC41014] [int] NULL,
[PC41015] [datetime] NULL,
[PC41016] [datetime] NULL,
[PC41017] [nvarchar] (20) NULL,
[PC41018] [nvarchar] (20) NULL,
[PC41019] [numeric] (14, 8) NULL,
[PC41020] [numeric] (28, 8) NULL,
[PC41021] [nvarchar] (3) NULL,
[PC41022] [int] NULL,
[PC41023] [nvarchar] (6) NULL,
[PC41024] [nchar] (1) NULL,
[PC41025] [nvarchar] (1) NULL,
[PC41026] [nvarchar] (1) NULL,
[PC41027] [nvarchar] (1) NULL,
[PC41028] [nvarchar] (1) NULL,
[PC41029] [nvarchar] (1) NULL,
[PC41030] [nchar] (1) NULL,
[PC41031] [numeric] (28, 8) NULL,
[PC41032] [nvarchar] (15) NULL,
[PC41033] [nvarchar] (50) NULL,
[PC41034] [nchar] (1) NULL,
[PC41035] [datetime] NULL,
[PC41036] [datetime] NULL,
[PC41037] [nvarchar] (20) NULL,
[PC41038] [nchar] (1) NULL,
[PC41039] [int] NULL,
[PC41040] [int] NULL,
[PC41041] [nchar] (1) NULL,
[PC41042] [nchar] (1) NULL,
[PC41043] [nchar] (1) NULL,
[PC41044] [nchar] (1) NULL,
[PC41045] [nvarchar] (2) NULL,
[PC41046] [nvarchar] (6) NULL,
[PC41047] [numeric] (18, 8) NULL,
[PC41048] [nchar] (3) NULL,
[PC41049] [nchar] (1) NULL,
[PC41050] [nchar] (3) NULL,
[PC41051] [nvarchar] (30) NULL,
[PC41052] [nchar] (20) NULL,
[PC41053] [int] NULL,
[PC41054] [int] NULL,
[PC41055] [int] NULL,
[PC41056] [nchar] (12) NULL,
[PC41057] [nchar] (25) NULL,
[PC41058] [nchar] (20) NULL,
[PC41059] [nchar] (20) NULL,
[PC41060] [nchar] (30) NULL,
[PC41061] [nchar] (30) NULL,
[PC41062] [nchar] (10) NULL,
[PC41063] [int] NULL,
[PC41064] [int] NULL,
[PC41065] [int] NULL,
[PC41066] [nvarchar] (25) NOT NULL,
[PC41067] [nchar] (10) NULL,
[PC41068] [nchar] (1) NULL,
[PC41069] [nchar] (1) NULL,
[PC41070] [nvarchar] (10) NULL,
[PC41071] [nvarchar] (4) NULL,
[PC41072] [nchar] (10) NULL,
[PC41073] [nvarchar] (8) NULL,
[PC41074] [nchar] (6) NULL,
[PC41075] [nvarchar] (10) NULL,
[PC41076] [nvarchar] (10) NULL,
[PC41077] [nvarchar] (10) NULL,
[PC41078] [nvarchar] (25) NULL,
[PC41079] [datetime] NULL,
[PC41080] [nchar] (1) NULL,
[PC41081] [numeric] (18, 8) NULL,
[PC41082] [numeric] (18, 8) NULL,
[PC41083] [numeric] (18, 8) NULL,
[PC41084] [nvarchar] (15) NULL,
[PC41085] [nvarchar] (15) NULL,
[PC41086] [nvarchar] (15) NULL,
[PC41087] [nvarchar] (10) NULL,
[PC41088] [numeric] (28, 8) NULL,
[PC41089] [numeric] (28, 8) NULL,
[PC41090] [numeric] (28, 8) NULL,
[PC41091] [numeric] (28, 8) NULL,
[PC41092] [numeric] (28, 8) NULL,
[PC41093] [nvarchar] (10) NULL,
[PC41094] [nvarchar] (15) NULL,
[PC41095] [nchar] (6) NULL,
[PC41096] [nchar] (6) NULL,
[PC41097] [nchar] (6) NULL,
[PC41098] [nchar] (6) NULL,
[PC41099] [nchar] (6) NULL,
[PC41100] [int] NULL,
[PC41101] [nvarchar] (200) NULL,
[PC41102] [datetime] NULL,
[PC41103] [nvarchar] (10) NULL,
[PC41104] [nchar] (1) NULL,
[PC41105] [nchar] (1) NULL,
[PC41106] [nvarchar] (20) NULL,
[PC41107] [nvarchar] (20) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC413700] on [tsa].[ics_land_iScala_HUN_PC413700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC413700] ON [tsa].[ics_land_iScala_HUN_PC413700] ([PC41001], [PC41066])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC013700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC013700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC013700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC013700_IsDuplicate] DEFAULT ((0)),
[PC01001] [nchar] (10) NOT NULL,
[PC01002] [int] NULL,
[PC01003] [nvarchar] (10) NULL,
[PC01004] [nvarchar] (10) NULL,
[PC01005] [nvarchar] (25) NULL,
[PC01006] [nvarchar] (25) NULL,
[PC01007] [int] NULL,
[PC01008] [int] NULL,
[PC01009] [int] NULL,
[PC01010] [nchar] (1) NULL,
[PC01011] [nchar] (1) NULL,
[PC01012] [int] NULL,
[PC01013] [int] NULL,
[PC01014] [int] NULL,
[PC01015] [datetime] NULL,
[PC01016] [datetime] NULL,
[PC01017] [nvarchar] (20) NULL,
[PC01018] [nvarchar] (20) NULL,
[PC01019] [numeric] (14, 8) NULL,
[PC01020] [numeric] (28, 8) NULL,
[PC01021] [nvarchar] (3) NULL,
[PC01022] [int] NULL,
[PC01023] [nvarchar] (6) NULL,
[PC01024] [nchar] (1) NULL,
[PC01025] [nvarchar] (1) NULL,
[PC01026] [nvarchar] (1) NULL,
[PC01027] [nvarchar] (1) NULL,
[PC01028] [nvarchar] (1) NULL,
[PC01029] [nvarchar] (1) NULL,
[PC01030] [nchar] (1) NULL,
[PC01031] [numeric] (28, 8) NULL,
[PC01032] [nvarchar] (15) NULL,
[PC01033] [nvarchar] (50) NULL,
[PC01034] [nchar] (1) NULL,
[PC01035] [datetime] NULL,
[PC01036] [datetime] NULL,
[PC01037] [nvarchar] (20) NULL,
[PC01038] [nchar] (1) NULL,
[PC01039] [int] NULL,
[PC01040] [int] NULL,
[PC01041] [nchar] (1) NULL,
[PC01042] [nchar] (1) NULL,
[PC01043] [nchar] (1) NULL,
[PC01044] [nchar] (1) NULL,
[PC01045] [nvarchar] (2) NULL,
[PC01046] [nvarchar] (6) NULL,
[PC01047] [numeric] (18, 8) NULL,
[PC01048] [nchar] (3) NULL,
[PC01049] [nchar] (1) NULL,
[PC01050] [nchar] (3) NULL,
[PC01051] [nvarchar] (30) NULL,
[PC01052] [nchar] (20) NULL,
[PC01053] [int] NULL,
[PC01054] [int] NULL,
[PC01055] [int] NULL,
[PC01056] [nchar] (12) NULL,
[PC01057] [nchar] (25) NULL,
[PC01058] [nchar] (20) NULL,
[PC01059] [nchar] (20) NULL,
[PC01060] [nchar] (30) NULL,
[PC01061] [nchar] (30) NULL,
[PC01062] [nchar] (10) NULL,
[PC01063] [int] NULL,
[PC01064] [int] NULL,
[PC01065] [int] NULL,
[PC01066] [nvarchar] (25) NULL,
[PC01067] [nchar] (10) NULL,
[PC01068] [nchar] (1) NULL,
[PC01069] [nchar] (1) NULL,
[PC01070] [nvarchar] (10) NULL,
[PC01071] [nvarchar] (4) NULL,
[PC01072] [nchar] (10) NULL,
[PC01073] [nvarchar] (8) NULL,
[PC01074] [nchar] (6) NULL,
[PC01075] [nvarchar] (10) NULL,
[PC01076] [nvarchar] (10) NULL,
[PC01077] [nvarchar] (10) NULL,
[PC01078] [nvarchar] (25) NULL,
[PC01079] [datetime] NULL,
[PC01080] [nchar] (1) NULL,
[PC01081] [numeric] (18, 8) NULL,
[PC01082] [numeric] (18, 8) NULL,
[PC01083] [numeric] (18, 8) NULL,
[PC01084] [nvarchar] (15) NULL,
[PC01085] [nvarchar] (15) NULL,
[PC01086] [nvarchar] (15) NULL,
[PC01087] [nvarchar] (10) NULL,
[PC01088] [numeric] (28, 8) NULL,
[PC01089] [numeric] (28, 8) NULL,
[PC01090] [numeric] (28, 8) NULL,
[PC01091] [numeric] (28, 8) NULL,
[PC01092] [numeric] (28, 8) NULL,
[PC01093] [nvarchar] (10) NULL,
[PC01094] [nvarchar] (15) NULL,
[PC01095] [nchar] (6) NULL,
[PC01096] [nchar] (6) NULL,
[PC01097] [nchar] (6) NULL,
[PC01098] [nchar] (6) NULL,
[PC01099] [nchar] (6) NULL,
[PC01100] [int] NULL,
[PC01101] [nvarchar] (200) NULL,
[PC01102] [datetime] NULL,
[PC01103] [nvarchar] (10) NULL,
[PC01104] [nchar] (1) NULL,
[PC01105] [nchar] (1) NULL,
[PC01106] [nvarchar] (20) NULL,
[PC01107] [nvarchar] (20) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC013700] on [tsa].[ics_land_iScala_HUN_PC013700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC013700] ON [tsa].[ics_land_iScala_HUN_PC013700] ([PC01001])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC033700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC033700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC033700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC033700_IsDuplicate] DEFAULT ((0)),
[PC03001] [nchar] (10) NOT NULL,
[PC03002] [nchar] (6) NOT NULL,
[PC03003] [nchar] (6) NOT NULL,
[PC03004] [int] NULL,
[PC03005] [nvarchar] (35) NULL,
[PC03006] [nvarchar] (25) NULL,
[PC03007] [nvarchar] (25) NULL,
[PC03008] [numeric] (28, 8) NULL,
[PC03009] [int] NULL,
[PC03010] [numeric] (20, 8) NULL,
[PC03011] [numeric] (20, 8) NULL,
[PC03012] [numeric] (20, 8) NULL,
[PC03013] [nchar] (2) NULL,
[PC03014] [nchar] (1) NULL,
[PC03015] [numeric] (14, 8) NULL,
[PC03016] [datetime] NULL,
[PC03017] [datetime] NULL,
[PC03018] [numeric] (18, 8) NULL,
[PC03019] [numeric] (18, 8) NULL,
[PC03020] [nvarchar] (25) NULL,
[PC03021] [int] NULL,
[PC03022] [nvarchar] (1) NULL,
[PC03023] [int] NULL,
[PC03024] [datetime] NULL,
[PC03025] [numeric] (28, 8) NULL,
[PC03026] [nvarchar] (1) NULL,
[PC03027] [nchar] (1) NULL,
[PC03028] [nvarchar] (1) NULL,
[PC03029] [nvarchar] (1) NULL,
[PC03030] [datetime] NULL,
[PC03031] [datetime] NULL,
[PC03032] [numeric] (18, 8) NULL,
[PC03033] [numeric] (18, 8) NULL,
[PC03034] [numeric] (18, 8) NULL,
[PC03035] [nvarchar] (6) NULL,
[PC03036] [nvarchar] (50) NULL,
[PC03037] [nvarchar] (12) NULL,
[PC03038] [numeric] (20, 8) NULL,
[PC03039] [nvarchar] (10) NULL,
[PC03040] [nvarchar] (9) NULL,
[PC03041] [nvarchar] (12) NULL,
[PC03042] [numeric] (18, 8) NULL,
[PC03043] [numeric] (20, 8) NULL,
[PC03044] [numeric] (20, 8) NULL,
[PC03045] [nchar] (14) NULL,
[PC03046] [numeric] (20, 8) NULL,
[PC03047] [numeric] (20, 8) NULL,
[PC03048] [nchar] (1) NULL,
[PC03049] [numeric] (20, 8) NULL,
[PC03050] [nchar] (1) NULL,
[PC03051] [nvarchar] (27) NULL,
[PC03052] [nchar] (3) NULL,
[PC03053] [nchar] (3) NULL,
[PC03054] [numeric] (18, 8) NULL,
[PC03055] [nchar] (3) NULL,
[PC03056] [int] NULL,
[PC03057] [nchar] (1) NULL,
[PC03058] [numeric] (14, 8) NULL,
[PC03059] [numeric] (20, 8) NULL,
[PC03060] [nchar] (1) NULL,
[PC03061] [int] NULL,
[PC03062] [numeric] (28, 8) NULL,
[PC03063] [nchar] (20) NULL,
[PC03064] [nchar] (20) NULL,
[PC03065] [nchar] (12) NULL,
[PC03066] [numeric] (20, 8) NULL,
[PC03067] [nvarchar] (25) NULL,
[PC03068] [nvarchar] (1) NULL,
[PC03069] [nvarchar] (1) NULL,
[PC03070] [nvarchar] (1) NULL,
[PC03071] [numeric] (14, 8) NULL,
[PC03072] [nvarchar] (1) NULL,
[PC03073] [nvarchar] (20) NULL,
[PC03074] [numeric] (20, 8) NULL,
[PC03075] [numeric] (20, 8) NULL,
[PC03076] [numeric] (28, 8) NULL,
[PC03077] [numeric] (28, 8) NULL,
[PC03078] [nchar] (38) NULL,
[PC03079] [nchar] (38) NULL,
[PC03080] [nchar] (1) NULL,
[PC03081] [nvarchar] (10) NULL,
[PC03082] [nvarchar] (4) NULL,
[PC03083] [nchar] (10) NULL,
[PC03084] [datetime] NULL,
[PC03085] [int] NULL,
[PC03086] [nchar] (6) NULL,
[PC03087] [datetime] NULL,
[PC03088] [int] NULL,
[PC03089] [nchar] (2) NULL,
[PC03090] [nvarchar] (10) NULL,
[PC03091] [nchar] (6) NULL,
[PC03092] [nchar] (6) NULL,
[PC03093] [datetime] NULL,
[PC03094] [nvarchar] (35) NULL,
[PC03095] [nvarchar] (10) NULL,
[PC03096] [nvarchar] (10) NULL,
[PC03097] [nvarchar] (50) NULL,
[PC03098] [nvarchar] (50) NULL,
[PC03099] [nvarchar] (50) NULL,
[PC03100] [nvarchar] (50) NULL,
[PC03101] [nvarchar] (50) NULL,
[PC03102] [nvarchar] (50) NULL,
[PC03103] [nvarchar] (50) NULL,
[PC03104] [nvarchar] (50) NULL,
[PC03105] [nvarchar] (50) NULL,
[PC03106] [nvarchar] (50) NULL,
[PC03107] [nvarchar] (50) NULL,
[PC03108] [nvarchar] (50) NULL,
[PC03109] [nvarchar] (50) NULL,
[PC03110] [nvarchar] (50) NULL,
[PC03111] [nvarchar] (50) NULL,
[PC03112] [nvarchar] (50) NULL,
[PC03113] [nvarchar] (50) NULL,
[PC03114] [nvarchar] (50) NULL,
[PC03115] [nvarchar] (50) NULL,
[PC03116] [nvarchar] (50) NULL,
[PC03117] [nvarchar] (10) NULL,
[PC03118] [nchar] (4) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC033700] on [tsa].[ics_land_iScala_HUN_PC033700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC033700] ON [tsa].[ics_land_iScala_HUN_PC033700] ([PC03001], [PC03002], [PC03003])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC423700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC423700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC423700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC423700_IsDuplicate] DEFAULT ((0)),
[PC42001] [nchar] (10) NOT NULL,
[PC42002] [nchar] (6) NOT NULL,
[PC42003] [nchar] (6) NOT NULL,
[PC42004] [int] NULL,
[PC42005] [nvarchar] (35) NULL,
[PC42006] [nvarchar] (25) NULL,
[PC42007] [nvarchar] (25) NULL,
[PC42008] [numeric] (28, 8) NULL,
[PC42009] [int] NULL,
[PC42010] [numeric] (20, 8) NULL,
[PC42011] [numeric] (20, 8) NULL,
[PC42012] [numeric] (20, 8) NULL,
[PC42013] [nchar] (2) NULL,
[PC42014] [nchar] (1) NULL,
[PC42015] [numeric] (14, 8) NULL,
[PC42016] [datetime] NULL,
[PC42017] [datetime] NULL,
[PC42018] [numeric] (18, 8) NULL,
[PC42019] [numeric] (18, 8) NULL,
[PC42020] [nvarchar] (25) NULL,
[PC42021] [int] NULL,
[PC42022] [nvarchar] (1) NULL,
[PC42023] [int] NULL,
[PC42024] [datetime] NULL,
[PC42025] [numeric] (28, 8) NULL,
[PC42026] [nvarchar] (1) NULL,
[PC42027] [nchar] (1) NULL,
[PC42028] [nvarchar] (1) NULL,
[PC42029] [nvarchar] (1) NULL,
[PC42030] [datetime] NULL,
[PC42031] [datetime] NULL,
[PC42032] [numeric] (18, 8) NULL,
[PC42033] [numeric] (18, 8) NULL,
[PC42034] [numeric] (18, 8) NULL,
[PC42035] [nvarchar] (6) NULL,
[PC42036] [nvarchar] (50) NULL,
[PC42037] [nvarchar] (12) NULL,
[PC42038] [numeric] (20, 8) NULL,
[PC42039] [nvarchar] (10) NULL,
[PC42040] [nvarchar] (9) NULL,
[PC42041] [nvarchar] (12) NULL,
[PC42042] [numeric] (18, 8) NULL,
[PC42043] [numeric] (20, 8) NULL,
[PC42044] [numeric] (20, 8) NULL,
[PC42045] [nchar] (14) NULL,
[PC42046] [numeric] (20, 8) NULL,
[PC42047] [numeric] (20, 8) NULL,
[PC42048] [nchar] (1) NULL,
[PC42049] [numeric] (20, 8) NULL,
[PC42050] [nchar] (1) NULL,
[PC42051] [nvarchar] (27) NULL,
[PC42052] [nchar] (3) NULL,
[PC42053] [nchar] (3) NULL,
[PC42054] [numeric] (18, 8) NULL,
[PC42055] [nchar] (3) NULL,
[PC42056] [int] NULL,
[PC42057] [nchar] (1) NULL,
[PC42058] [numeric] (14, 8) NULL,
[PC42059] [numeric] (20, 8) NULL,
[PC42060] [nchar] (1) NULL,
[PC42061] [int] NULL,
[PC42062] [numeric] (28, 8) NULL,
[PC42063] [nchar] (20) NULL,
[PC42064] [nchar] (20) NULL,
[PC42065] [nchar] (12) NULL,
[PC42066] [numeric] (20, 8) NULL,
[PC42067] [nvarchar] (25) NOT NULL,
[PC42068] [nvarchar] (1) NULL,
[PC42069] [nvarchar] (1) NULL,
[PC42070] [nvarchar] (1) NULL,
[PC42071] [numeric] (14, 8) NULL,
[PC42072] [nvarchar] (1) NULL,
[PC42073] [nvarchar] (20) NULL,
[PC42074] [numeric] (20, 8) NULL,
[PC42075] [numeric] (20, 8) NULL,
[PC42076] [numeric] (28, 8) NULL,
[PC42077] [numeric] (28, 8) NULL,
[PC42078] [nchar] (38) NULL,
[PC42079] [nchar] (38) NULL,
[PC42080] [nchar] (1) NULL,
[PC42081] [nvarchar] (10) NULL,
[PC42082] [nvarchar] (4) NULL,
[PC42083] [nchar] (10) NULL,
[PC42084] [datetime] NULL,
[PC42085] [int] NULL,
[PC42086] [nchar] (6) NULL,
[PC42087] [datetime] NULL,
[PC42088] [int] NULL,
[PC42089] [nchar] (2) NULL,
[PC42090] [nvarchar] (10) NULL,
[PC42091] [nchar] (6) NULL,
[PC42092] [nchar] (6) NULL,
[PC42093] [datetime] NULL,
[PC42094] [nvarchar] (35) NULL,
[PC42095] [nvarchar] (10) NULL,
[PC42096] [nvarchar] (10) NULL,
[PC42097] [nvarchar] (50) NULL,
[PC42098] [nvarchar] (50) NULL,
[PC42099] [nvarchar] (50) NULL,
[PC42100] [nvarchar] (50) NULL,
[PC42101] [nvarchar] (50) NULL,
[PC42102] [nvarchar] (50) NULL,
[PC42103] [nvarchar] (50) NULL,
[PC42104] [nvarchar] (50) NULL,
[PC42105] [nvarchar] (50) NULL,
[PC42106] [nvarchar] (50) NULL,
[PC42107] [nvarchar] (50) NULL,
[PC42108] [nvarchar] (50) NULL,
[PC42109] [nvarchar] (50) NULL,
[PC42110] [nvarchar] (50) NULL,
[PC42111] [nvarchar] (50) NULL,
[PC42112] [nvarchar] (50) NULL,
[PC42113] [nvarchar] (50) NULL,
[PC42114] [nvarchar] (50) NULL,
[PC42115] [nvarchar] (50) NULL,
[PC42116] [nvarchar] (50) NULL,
[PC42117] [nvarchar] (10) NULL,
[PC42118] [nchar] (4) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC423700] on [tsa].[ics_land_iScala_HUN_PC423700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC423700] ON [tsa].[ics_land_iScala_HUN_PC423700] ([PC42001], [PC42067], [PC42002], [PC42003])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC433700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC433700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC433700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC433700_IsDuplicate] DEFAULT ((0)),
[PC43001] [nchar] (10) NOT NULL,
[PC43002] [nchar] (6) NOT NULL,
[PC43003] [nchar] (6) NOT NULL,
[PC43004] [nchar] (4) NOT NULL,
[PC43005] [nvarchar] (12) NULL,
[PC43006] [numeric] (20, 8) NULL,
[PC43007] [numeric] (20, 8) NULL,
[PC43008] [numeric] (20, 8) NULL,
[PC43009] [datetime] NULL,
[PC43010] [datetime] NULL,
[PC43011] [datetime] NULL,
[PC43012] [nvarchar] (20) NULL,
[PC43013] [numeric] (28, 8) NULL,
[PC43014] [numeric] (28, 8) NULL,
[PC43015] [int] NULL,
[PC43016] [int] NULL,
[PC43017] [int] NULL,
[PC43018] [int] NULL,
[PC43019] [int] NULL,
[PC43020] [int] NULL,
[PC43021] [int] NULL,
[PC43022] [int] NULL,
[PC43023] [int] NULL,
[PC43024] [int] NULL,
[PC43025] [numeric] (18, 8) NULL,
[PC43026] [numeric] (18, 8) NULL,
[PC43027] [numeric] (18, 8) NULL,
[PC43028] [nvarchar] (1) NULL,
[PC43029] [nvarchar] (5) NULL,
[PC43030] [nvarchar] (6) NULL,
[PC43031] [nvarchar] (3) NULL,
[PC43032] [numeric] (14, 8) NULL,
[PC43033] [nvarchar] (6) NULL,
[PC43034] [numeric] (20, 8) NULL,
[PC43035] [numeric] (20, 8) NULL,
[PC43036] [numeric] (20, 8) NULL,
[PC43037] [numeric] (20, 8) NULL,
[PC43038] [numeric] (18, 8) NULL,
[PC43039] [nchar] (3) NULL,
[PC43040] [int] NULL,
[PC43041] [nvarchar] (10) NULL,
[PC43042] [nvarchar] (10) NULL,
[PC43043] [nvarchar] (1) NULL,
[PC43044] [nvarchar] (25) NOT NULL,
[PC43045] [int] NULL,
[PC43046] [numeric] (18, 8) NULL,
[PC43047] [numeric] (18, 8) NULL,
[PC43048] [nchar] (3) NULL,
[PC43049] [numeric] (28, 8) NULL,
[PC43050] [numeric] (28, 8) NULL,
[PC43051] [numeric] (28, 8) NULL,
[PC43052] [nchar] (1) NULL,
[PC43053] [numeric] (20, 8) NULL,
[PC43054] [nvarchar] (4) NULL,
[PC43055] [nvarchar] (12) NULL,
[PC43056] [nvarchar] (12) NULL,
[PC43057] [nvarchar] (12) NULL,
[PC43058] [nvarchar] (12) NULL,
[PC43059] [nvarchar] (12) NULL,
[PC43060] [nvarchar] (12) NULL,
[PC43061] [nvarchar] (12) NULL,
[PC43062] [numeric] (28, 8) NULL,
[PC43063] [nchar] (1) NULL,
[PC43064] [datetime] NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC433700] on [tsa].[ics_land_iScala_HUN_PC433700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC433700] ON [tsa].[ics_land_iScala_HUN_PC433700] ([PC43001], [PC43044], [PC43002], [PC43003], [PC43004])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC103700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC103700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC103700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC103700_IsDuplicate] DEFAULT ((0)),
[PC10001] [nchar] (10) NOT NULL,
[PC10002] [nchar] (6) NOT NULL,
[PC10003] [nchar] (12) NOT NULL,
[PC10004] [nchar] (6) NOT NULL,
[PC10005] [nchar] (6) NOT NULL,
[PC10006] [nchar] (6) NOT NULL,
[PC10007] [nchar] (4) NOT NULL,
[PC10008] [nchar] (35) NOT NULL,
[PC10009] [datetime] NOT NULL,
[PC10010] [numeric] (20, 8) NULL,
[PC10011] [numeric] (20, 8) NULL,
[PC10012] [numeric] (20, 8) NULL,
[PC10013] [int] NULL,
[PC10014] [nchar] (10) NULL,
[PC10015] [nchar] (4) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC103700] on [tsa].[ics_land_iScala_HUN_PC103700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC103700] ON [tsa].[ics_land_iScala_HUN_PC103700] ([PC10001], [PC10002], [PC10003], [PC10004], [PC10005], [PC10006], [PC10007], [PC10008], [PC10009])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC443700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC443700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC443700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC443700_IsDuplicate] DEFAULT ((0)),
[PC44001] [nchar] (10) NOT NULL,
[PC44002] [nchar] (6) NOT NULL,
[PC44003] [nchar] (6) NOT NULL,
[PC44004] [nchar] (6) NOT NULL,
[PC44005] [nvarchar] (70) NULL,
[PC44006] [nvarchar] (70) NULL,
[PC44007] [nvarchar] (1) NULL,
[PC44008] [nvarchar] (1) NULL,
[PC44009] [nvarchar] (1) NULL,
[PC44010] [nvarchar] (1) NULL,
[PC44011] [nvarchar] (1) NULL,
[PC44012] [nvarchar] (1) NULL,
[PC44013] [nvarchar] (1) NULL,
[PC44014] [nvarchar] (1) NULL,
[PC44015] [nvarchar] (1) NULL,
[PC44016] [nvarchar] (1) NULL,
[PC44017] [nvarchar] (1) NULL,
[PC44018] [nvarchar] (1) NULL,
[PC44019] [nvarchar] (1) NULL,
[PC44020] [nvarchar] (1) NULL,
[PC44021] [int] NULL,
[PC44022] [nvarchar] (25) NOT NULL,
[PC44023] [nvarchar] (6) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC443700] on [tsa].[ics_land_iScala_HUN_PC443700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC443700] ON [tsa].[ics_land_iScala_HUN_PC443700] ([PC44001], [PC44022], [PC44002], [PC44003], [PC44004])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC453700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC453700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC453700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC453700_IsDuplicate] DEFAULT ((0)),
[PC45001] [nvarchar] (10) NOT NULL,
[PC45002] [nvarchar] (35) NULL,
[PC45003] [nvarchar] (35) NULL,
[PC45004] [nvarchar] (35) NULL,
[PC45005] [nvarchar] (35) NULL,
[PC45006] [nvarchar] (35) NULL,
[PC45007] [nvarchar] (10) NULL,
[PC45008] [nvarchar] (20) NULL,
[PC45009] [nvarchar] (20) NULL,
[PC45010] [nvarchar] (25) NOT NULL,
[PC45011] [nvarchar] (35) NULL,
[PC45012] [nvarchar] (10) NULL,
[PC45013] [nchar] (3) NULL,
[PC45014] [nvarchar] (10) NULL,
[PC45015] [nvarchar] (10) NULL,
[PC45016] [nvarchar] (10) NULL,
[PC45017] [nvarchar] (35) NULL,
[PC45018] [nvarchar] (35) NULL,
[PC45019] [nvarchar] (35) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC453700] on [tsa].[ics_land_iScala_HUN_PC453700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC453700] ON [tsa].[ics_land_iScala_HUN_PC453700] ([PC45001], [PC45010])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PC463700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PC463700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC463700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PC463700_IsDuplicate] DEFAULT ((0)),
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
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PC463700] on [tsa].[ics_land_iScala_HUN_PC463700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC463700] ON [tsa].[ics_land_iScala_HUN_PC463700] ([PC46001], [PC46013], [PC46002], [PC46003], [PC46004], [PC46005], [PC46006])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PCB13700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PCB13700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCB13700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCB13700_IsDuplicate] DEFAULT ((0)),
[PCB1001] [nchar] (38) NOT NULL,
[PCB1002] [nvarchar] (35) NULL,
[PCB1003] [int] NULL,
[PCB1004] [int] NULL,
[PCB1005] [nchar] (10) NULL,
[PCB1006] [nvarchar] (35) NULL,
[PCB1007] [numeric] (28, 8) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PCB13700] on [tsa].[ics_land_iScala_HUN_PCB13700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PCB13700] ON [tsa].[ics_land_iScala_HUN_PCB13700] ([PCB1001])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PCB23700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PCB23700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCB23700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCB23700_IsDuplicate] DEFAULT ((0)),
[PCB2001] [nchar] (38) NOT NULL,
[PCB2002] [nchar] (3) NOT NULL,
[PCB2003] [nvarchar] (50) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PCB23700] on [tsa].[ics_land_iScala_HUN_PCB23700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PCB23700] ON [tsa].[ics_land_iScala_HUN_PCB23700] ([PCB2001], [PCB2002])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PCB33700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PCB33700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCB33700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCB33700_IsDuplicate] DEFAULT ((0)),
[PCB3001] [nchar] (38) NOT NULL,
[PCB3002] [int] NOT NULL,
[PCB3003] [nchar] (38) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PCB33700] on [tsa].[ics_land_iScala_HUN_PCB33700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PCB33700] ON [tsa].[ics_land_iScala_HUN_PCB33700] ([PCB3001], [PCB3002])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PCR13700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PCR13700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCR13700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCR13700_IsDuplicate] DEFAULT ((0)),
[PCR1001] [nvarchar] (10) NOT NULL,
[PCR1002] [nvarchar] (35) NULL,
[PCR1003] [nvarchar] (6) NULL,
[PCR1004] [datetime] NULL,
[PCR1005] [datetime] NULL,
[PCR1006] [nvarchar] (6) NULL,
[PCR1007] [nvarchar] (1) NULL,
[PCR1008] [nvarchar] (8) NULL,
[PCR1009] [datetime] NULL,
[PCR1010] [datetime] NULL,
[PCR1011] [nvarchar] (1) NULL,
[PCR1012] [nvarchar] (6) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PCR13700] on [tsa].[ics_land_iScala_HUN_PCR13700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PCR13700] ON [tsa].[ics_land_iScala_HUN_PCR13700] ([PCR1001])
GO
PRINT N'Creating [tsa].[ics_land_iScala_HUN_PCB43700]'
GO
CREATE TABLE [tsa].[ics_land_iScala_HUN_PCB43700]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCB43700_ExcludedFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_iScala_HUN_PCB43700_IsDuplicate] DEFAULT ((0)),
[PCB4001] [nchar] (38) NOT NULL,
[PCB4002] [int] NOT NULL,
[PCB4003] [int] NULL,
[PCB4004] [int] NULL,
[PCB4005] [numeric] (28, 8) NULL,
[PCB4006] [int] NULL,
[PCB4007] [int] NULL,
[PCB4008] [nchar] (2) NULL,
[PCB4009] [int] NULL,
[PCB4010] [int] NULL,
[PCB4011] [int] NULL,
[PCB4012] [int] NULL,
[PCB4013] [int] NULL,
[PCB4014] [int] NULL,
[PCB4015] [int] NULL,
[PCB4016] [int] NULL,
[PCB4017] [int] NULL,
[PCB4018] [nchar] (1) NULL,
[PCB4019] [nchar] (1) NULL,
[PCB4020] [nchar] (1) NULL,
[PCB4021] [nchar] (1) NULL,
[PCB4022] [nchar] (1) NULL,
[PCB4023] [nchar] (2) NULL,
[PCB4024] [nchar] (2) NULL,
[PCB4025] [nchar] (2) NULL,
[PCB4026] [nchar] (2) NULL,
[PCB4027] [nchar] (2) NULL,
[PCB4028] [numeric] (26, 8) NULL
)
GO
PRINT N'Creating index [IndClust_tsa_ics_land_iScala_HUN_PCB43700] on [tsa].[ics_land_iScala_HUN_PCB43700]'
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PCB43700] ON [tsa].[ics_land_iScala_HUN_PCB43700] ([PCB4001], [PCB4002])
GO
