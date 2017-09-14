CREATE TABLE [tsa].[ics_land_M3V10vil_POL_MITVEN]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF__ics_land___Exclu__3F672F2C] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF__ics_land___IsDup__405B5365] DEFAULT ((0)),
[IFAPDT] [numeric] (18, 0) NULL,
[IFCHID] [nchar] (10) NULL,
[IFCHNO] [numeric] (18, 0) NULL,
[IFCMCO] [nchar] (2) NULL,
[IFCONO] [numeric] (18, 0) NULL,
[IFCRTP] [numeric] (18, 0) NULL,
[IFCUCD] [nchar] (3) NULL,
[IFDTID] [numeric] (18, 0) NULL,
[IFFACI] [nchar] (3) NULL,
[IFFVD1] [numeric] (18, 0) NULL,
[IFFVDT] [numeric] (18, 0) NULL,
[IFGRMT] [nchar] (3) NULL,
[IFISRS] [nchar] (2) NULL,
[IFITNO] [nchar] (15) NULL,
[IFLEA1] [numeric] (18, 0) NULL,
[IFLEA5] [numeric] (18, 0) NULL,
[IFLMDT] [numeric] (18, 0) NULL,
[IFLMTS] [numeric] (18, 0) NULL,
[IFLOQT] [numeric] (18, 0) NULL,
[IFLPCD] [numeric] (18, 0) NULL,
[IFMCPR] [numeric] (18, 0) NULL,
[IFMEDC] [nchar] (10) NULL,
[IFMPSH] [numeric] (18, 0) NULL,
[IFORCO] [nchar] (3) NULL,
[IFORTY] [nchar] (3) NULL,
[IFPAAM] [numeric] (18, 0) NULL,
[IFPACT] [nchar] (6) NULL,
[IFPCCP] [numeric] (18, 0) NULL,
[IFPPUN] [nchar] (3) NULL,
[IFPRCS] [nchar] (3) NULL,
[IFPUCD] [numeric] (18, 0) NULL,
[IFPUP1] [numeric] (18, 0) NULL,
[IFPUPR] [numeric] (18, 0) NULL,
[IFPUQT] [numeric] (18, 0) NULL,
[IFPUUN] [nchar] (3) NULL,
[IFQCUD] [numeric] (18, 0) NULL,
[IFQUCL] [nchar] (2) NULL,
[IFRCDT] [numeric] (18, 0) NULL,
[IFRESP] [nchar] (10) NULL,
[IFRFID] [nchar] (10) NULL,
[IFRGDT] [numeric] (18, 0) NULL,
[IFRGTM] [numeric] (18, 0) NULL,
[IFRTYP] [nchar] (1) NULL,
[IFSITD] [nvarchar] (30) NULL,
[IFSITE] [nvarchar] (30) NULL,
[IFSITT] [nvarchar] (60) NULL,
[IFSMSQ] [numeric] (18, 0) NULL,
[IFSTAP] [nchar] (1) NULL,
[IFSUFI] [nvarchar] (20) NULL,
[IFSUNO] [nchar] (10) NULL,
[IFSUP1] [numeric] (18, 0) NULL,
[IFSUPR] [numeric] (18, 0) NULL,
[IFTXID] [numeric] (18, 0) NULL,
[IFUNMU] [numeric] (18, 0) NULL,
[IFUVD1] [numeric] (18, 0) NULL,
[IFUVDT] [numeric] (18, 0) NULL,
[IFWHLO] [nchar] (3) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10vil_POL_MITVEN_1] ON [tsa].[ics_land_M3V10vil_POL_MITVEN] ([IFCONO], [IFITNO], [IFPRCS], [IFSUFI], [IFSUNO])
GO
