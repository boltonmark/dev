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
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_iScala_HUN_PC033700] ON [tsa].[ics_land_iScala_HUN_PC033700] ([PC03001], [PC03002], [PC03003])
GO
