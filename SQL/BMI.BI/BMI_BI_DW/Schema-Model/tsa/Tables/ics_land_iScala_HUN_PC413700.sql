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
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC413700] ON [tsa].[ics_land_iScala_HUN_PC413700] ([PC41001], [PC41066])
GO
