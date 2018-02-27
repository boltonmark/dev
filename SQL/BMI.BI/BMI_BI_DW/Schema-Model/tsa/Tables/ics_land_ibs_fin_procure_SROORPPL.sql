CREATE TABLE [tsa].[ics_land_ibs_fin_procure_SROORPPL]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_ibs_fin_procure_SROORPPL_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_ibs_fin_procure_SROORPPL_IsDuplicate] DEFAULT ((0)),
[OLSTAT] [nvarchar] (1) NULL,
[OLTYPE] [nvarchar] (1) NULL,
[OLORNO] [decimal] (12, 0) NULL,
[OLLINE] [decimal] (5, 0) NULL,
[OLSUNO] [nvarchar] (11) NULL,
[OLSROM] [nvarchar] (3) NULL,
[OLORDT] [nvarchar] (2) NULL,
[OLBALC] [nvarchar] (1) NULL,
[OLFOST] [decimal] (2, 0) NULL,
[OLPRDC] [nvarchar] (35) NULL,
[OLOQTY] [decimal] (15, 3) NULL,
[OLDTIM] [decimal] (5, 0) NULL,
[OLDCPR] [decimal] (4, 2) NULL,
[OLDCAM] [decimal] (17, 4) NULL,
[OLPURP] [decimal] (17, 4) NULL,
[OLQUCC] [nvarchar] (1) NULL,
[OLSHPM] [nvarchar] (30) NULL,
[OLDESC] [nvarchar] (50) NULL,
[OLUNIT] [nvarchar] (5) NULL,
[OLTRPT] [decimal] (3, 0) NULL,
[OLBTCC] [nvarchar] (1) NULL,
[OLSTAC] [nvarchar] (1) NULL,
[OLSCPR] [decimal] (17, 4) NULL,
[OLQQTY] [decimal] (15, 3) NULL,
[OLCONV] [decimal] (15, 9) NULL,
[OLAMOU] [decimal] (17, 4) NULL,
[OLFICC] [nvarchar] (1) NULL,
[OLTIXC] [nvarchar] (1) NULL,
[OLDECC] [decimal] (1, 0) NULL,
[OLCONO] [decimal] (8, 0) NULL,
[OLDELT] [decimal] (8, 0) NULL,
[OLPQTY] [decimal] (15, 3) NULL,
[OLCQTY] [decimal] (15, 3) NULL,
[OLCNFD] [decimal] (8, 0) NULL,
[OLCTIM] [decimal] (5, 0) NULL,
[OLCONF] [nvarchar] (1) NULL,
[OLRQTY] [decimal] (15, 3) NULL,
[OLRTIM] [decimal] (5, 0) NULL,
[OLRDAT] [decimal] (8, 0) NULL,
[OLROCO] [nvarchar] (1) NULL,
[OLROLI] [decimal] (5, 0) NULL,
[OLORLI] [decimal] (5, 0) NULL,
[OLPLNO] [decimal] (12, 0) NULL,
[OLPLLI] [decimal] (5, 0) NULL,
[OLORDS] [decimal] (2, 0) NULL,
[OLWQTY] [nvarchar] (11) NULL,
[OLWBTC] [nvarchar] (13) NULL,
[OLWBAL] [nvarchar] (1) NULL,
[OLWIDA] [decimal] (8, 0) NULL,
[OLWPRC] [nvarchar] (35) NULL,
[OLWBIN] [nvarchar] (7) NULL,
[OLRDTI] [decimal] (5, 0) NULL,
[OLRDDT] [decimal] (8, 0) NULL,
[OLTDCD] [nvarchar] (1) NULL,
[OLDDCD] [nvarchar] (1) NULL,
[OLSORN] [decimal] (12, 0) NULL,
[OLSLIN] [decimal] (5, 0) NULL,
[OLPCOD] [nvarchar] (3) NULL,
[OLXQTY] [decimal] (15, 3) NULL,
[OLOVDC] [nvarchar] (1) NULL,
[OLEDCR] [nvarchar] (1) NULL,
[OLNOTR] [nvarchar] (3) NULL,
[OLPOVA] [nvarchar] (4) NULL,
[OLOCOU] [nvarchar] (4) NULL,
[OLCSNO] [nvarchar] (18) NULL,
[OLDPRT] [decimal] (8, 0) NULL,
[OLPTIM] [decimal] (5, 0) NULL,
[OLECHG] [nvarchar] (1) NULL,
[OLPDAT] [decimal] (8, 0) NULL,
[OLTIME] [decimal] (6, 0) NULL,
[OLEDPC] [nvarchar] (1) NULL,
[OLPSIZ] [decimal] (6, 0) NULL,
[OLLTQT] [decimal] (15, 3) NULL,
[OLSENC] [nvarchar] (1) NULL,
[OLCISL] [decimal] (5, 0) NULL,
[OLCISO] [decimal] (12, 0) NULL,
[OLIORD] [nvarchar] (1) NULL,
[OLPROD] [nvarchar] (1) NULL,
[OLPPYC] [decimal] (1, 0) NULL,
[OLQCWQ] [decimal] (9, 3) NULL,
[OLQCPQ] [decimal] (9, 3) NULL,
[OLOWQY] [decimal] (15, 3) NULL,
[OLRWQY] [decimal] (15, 3) NULL,
[OLQWQY] [decimal] (15, 3) NULL,
[OLDIS2] [decimal] (4, 2) NULL,
[OLDIS3] [decimal] (4, 2) NULL,
[OLDIS4] [decimal] (4, 2) NULL,
[OLDIS5] [decimal] (4, 2) NULL,
[OLDIS6] [decimal] (4, 2) NULL,
[OLDIS7] [decimal] (4, 2) NULL,
[OLDIS8] [decimal] (4, 2) NULL,
[OLDIS9] [decimal] (4, 2) NULL,
[OLITET] [decimal] (17, 3) NULL,
[OLITIT] [decimal] (17, 3) NULL,
[OLITT] [decimal] (17, 3) NULL,
[OLTAXF] [nvarchar] (1) NULL,
[OLUPBA] [decimal] (9, 5) NULL,
[OLVAHC] [nvarchar] (4) NULL,
[OLVATI] [nvarchar] (1) NULL,
[OLLAOC] [decimal] (17, 4) NULL,
[OLVAOC] [decimal] (17, 4) NULL,
[OLTAXC] [nvarchar] (1) NULL,
[OLCCOD] [nvarchar] (3) NULL,
[OLHCOD] [nvarchar] (5) NULL,
[OLLBCD] [nvarchar] (3) NULL,
[OLNCCN] [decimal] (12, 0) NULL,
[OLSIGN] [nvarchar] (10) NULL,
[OLPCKT] [nvarchar] (10) NULL,
[OLREAS] [nvarchar] (3) NULL,
[OLIVTP] [nvarchar] (4) NULL,
[OLCIPR] [nvarchar] (1) NULL,
[OLHHPR] [nvarchar] (1) NULL,
[OLPLPR] [nvarchar] (1) NULL,
[OLSPRC] [nvarchar] (35) NULL,
[OLPRRT] [decimal] (8, 0) NULL,
[OLPRRD] [decimal] (5, 0) NULL,
[OLCDND] [nvarchar] (1) NULL,
[OLREQN] [decimal] (12, 0) NULL,
[OLREQL] [decimal] (5, 0) NULL,
[OLFOCC] [nvarchar] (1) NULL,
[OLTRNP] [nvarchar] (1) NULL,
[OLMOTC] [nvarchar] (3) NULL,
[OLDADV] [nvarchar] (1) NULL,
[OLTRNN] [nvarchar] (15) NULL,
[OLDLDT] [decimal] (8, 0) NULL,
[OLSETP] [decimal] (17, 4) NULL,
[OLPVER] [decimal] (3, 0) NULL,
[OLSPDE] [nvarchar] (50) NULL,
[OLTXKY] [decimal] (15, 0) NULL,
[OLMDCC] [nvarchar] (1) NULL,
[OLFCMP] [nvarchar] (2) NULL,
[OLMSON] [decimal] (12, 0) NULL,
[OLMSLI] [decimal] (5, 0) NULL,
[OLWHSU] [nvarchar] (3) NULL,
[OLCIDI] [nvarchar] (1) NULL,
[OLPCSC] [nvarchar] (1) NULL,
[OLGRPG] [nvarchar] (10) NULL,
[OLGWGT] [decimal] (11, 5) NULL,
[OLNWGT] [decimal] (11, 5) NULL,
[OLGVOL] [decimal] (11, 5) NULL,
[OLNVOL] [decimal] (11, 5) NULL,
[OLQSTU] [decimal] (15, 3) NULL,
[OLSHPA] [nvarchar] (11) NULL,
[OLLCRE] [nvarchar] (1) NULL,
[OLQCSC] [decimal] (15, 3) NULL,
[OLODAT] [decimal] (8, 0) NULL,
[OLOTME] [decimal] (6, 0) NULL,
[OLAVCI] [decimal] (17, 4) NULL,
[OLAVCW] [decimal] (17, 4) NULL,
[OLSDDT] [decimal] (8, 0) NULL,
[OLSDTM] [decimal] (5, 0) NULL,
[OLINUM] [decimal] (12, 0) NULL,
[OLINLN] [decimal] (5, 0) NULL,
[OLSUFR] [nvarchar] (3) NULL,
[OLSDII] [nvarchar] (35) NULL,
[OLPHINQT] [decimal] (15, 3) NULL,
[OLRCXR] [decimal] (13, 7) NULL
)
GO
