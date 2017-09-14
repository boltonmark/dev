CREATE TABLE [tsa].[ics_land_M3V10ved_POL_OCUSMA]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF__ics_land___Exclu__40064DAA] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF__ics_land___IsDup__40FA71E3] DEFAULT ((0)),
[OKAACB] [nchar] (12) NULL,
[OKACEI] [numeric] (18, 0) NULL,
[OKACGR] [nchar] (10) NULL,
[OKACHK] [numeric] (18, 0) NULL,
[OKACLB] [nchar] (4) NULL,
[OKACRF] [nchar] (8) NULL,
[OKADBO] [numeric] (18, 0) NULL,
[OKADCA] [nchar] (3) NULL,
[OKADID] [nchar] (6) NULL,
[OKADTG] [numeric] (18, 0) NULL,
[OKADVI] [nchar] (6) NULL,
[OKAGAC] [nchar] (12) NULL,
[OKAGBG] [numeric] (18, 0) NULL,
[OKAGBP] [nchar] (16) NULL,
[OKAGCA] [numeric] (18, 0) NULL,
[OKAGCH] [numeric] (18, 0) NULL,
[OKAGCP] [nchar] (5) NULL,
[OKAGCT] [numeric] (18, 0) NULL,
[OKAGN2] [nchar] (10) NULL,
[OKAGN3] [nchar] (10) NULL,
[OKAGN4] [nchar] (10) NULL,
[OKAGN5] [nchar] (10) NULL,
[OKAGN6] [nchar] (10) NULL,
[OKAGN7] [nchar] (10) NULL,
[OKAGNT] [nchar] (10) NULL,
[OKAGPA] [numeric] (18, 0) NULL,
[OKAGPG] [numeric] (18, 0) NULL,
[OKAGPN] [nchar] (12) NULL,
[OKAGPY] [nvarchar] (18) NULL,
[OKAGTD] [numeric] (18, 0) NULL,
[OKAGTN] [numeric] (18, 0) NULL,
[OKAICD] [numeric] (18, 0) NULL,
[OKALCU] [nchar] (10) NULL,
[OKALWT] [numeric] (18, 0) NULL,
[OKATPR] [nchar] (1) NULL,
[OKAUGI] [numeric] (18, 0) NULL,
[OKBCKO] [numeric] (18, 0) NULL,
[OKBGRP] [nchar] (2) NULL,
[OKBLAC] [numeric] (18, 0) NULL,
[OKBLCD] [numeric] (18, 0) NULL,
[OKBLII] [numeric] (18, 0) NULL,
[OKBLPR] [numeric] (18, 0) NULL,
[OKBOCD] [numeric] (18, 0) NULL,
[OKBPCD] [numeric] (18, 0) NULL,
[OKBPEX] [numeric] (18, 0) NULL,
[OKBREC] [nchar] (10) NULL,
[OKBUSE] [numeric] (18, 0) NULL,
[OKCCUS] [nchar] (10) NULL,
[OKCDRC] [nchar] (3) NULL,
[OKCESA] [nvarchar] (32) NULL,
[OKCFC0] [nchar] (1) NULL,
[OKCFC1] [nchar] (10) NULL,
[OKCFC2] [numeric] (18, 0) NULL,
[OKCFC3] [nchar] (3) NULL,
[OKCFC4] [nchar] (5) NULL,
[OKCFC5] [nchar] (1) NULL,
[OKCFC6] [nchar] (10) NULL,
[OKCFC7] [numeric] (18, 0) NULL,
[OKCFC8] [nchar] (3) NULL,
[OKCFC9] [nchar] (5) NULL,
[OKCHCL] [numeric] (18, 0) NULL,
[OKCHID] [nchar] (10) NULL,
[OKCHNO] [numeric] (18, 0) NULL,
[OKCHSY] [nchar] (10) NULL,
[OKCLCD] [numeric] (18, 0) NULL,
[OKCONO] [numeric] (18, 0) NULL,
[OKCOR2] [nchar] (11) NULL,
[OKCORG] [nchar] (11) NULL,
[OKCRL2] [numeric] (18, 0) NULL,
[OKCRL3] [numeric] (18, 0) NULL,
[OKCRLM] [numeric] (18, 0) NULL,
[OKCRTP] [numeric] (18, 0) NULL,
[OKCSCD] [nchar] (3) NULL,
[OKCUA1] [nvarchar] (36) NULL,
[OKCUA2] [nvarchar] (36) NULL,
[OKCUA3] [nvarchar] (36) NULL,
[OKCUA4] [nvarchar] (36) NULL,
[OKCUCD] [nchar] (3) NULL,
[OKCUCL] [nchar] (3) NULL,
[OKCUIC] [nchar] (10) NULL,
[OKCUNM] [nvarchar] (36) NULL,
[OKCUNO] [nchar] (10) NULL,
[OKCUST] [nchar] (10) NULL,
[OKCUSU] [nchar] (10) NULL,
[OKCUTP] [numeric] (18, 0) NULL,
[OKDESV] [nchar] (2) NULL,
[OKDIGC] [nchar] (2) NULL,
[OKDIPC] [numeric] (18, 0) NULL,
[OKDIST] [numeric] (18, 0) NULL,
[OKDISY] [nchar] (10) NULL,
[OKDIVI] [nchar] (3) NULL,
[OKDMSO] [nchar] (10) NULL,
[OKDOGR] [nchar] (3) NULL,
[OKDTE1] [numeric] (18, 0) NULL,
[OKDTE2] [numeric] (18, 0) NULL,
[OKDTE3] [numeric] (18, 0) NULL,
[OKDTFM] [nchar] (3) NULL,
[OKDTID] [numeric] (18, 0) NULL,
[OKDTL1] [numeric] (18, 0) NULL,
[OKDTL2] [numeric] (18, 0) NULL,
[OKDUCD] [numeric] (18, 0) NULL,
[OKEALO] [numeric] (18, 0) NULL,
[OKECAR] [nchar] (2) NULL,
[OKECF1] [nchar] (5) NULL,
[OKECF2] [nchar] (5) NULL,
[OKECF3] [nchar] (5) NULL,
[OKECF4] [nchar] (5) NULL,
[OKECF5] [nchar] (5) NULL,
[OKECLC] [nchar] (2) NULL,
[OKEDES] [nchar] (10) NULL,
[OKEDIP] [numeric] (18, 0) NULL,
[OKEDIT] [nchar] (1) NULL,
[OKENHD] [numeric] (18, 0) NULL,
[OKESAL] [numeric] (18, 0) NULL,
[OKEURI] [numeric] (18, 0) NULL,
[OKEXCD] [nchar] (2) NULL,
[OKEXPT] [numeric] (18, 0) NULL,
[OKFACI] [nchar] (3) NULL,
[OKFRE1] [nchar] (5) NULL,
[OKFRE2] [nchar] (5) NULL,
[OKGEOC] [numeric] (18, 0) NULL,
[OKGRPY] [numeric] (18, 0) NULL,
[OKHAFE] [nchar] (6) NULL,
[OKIICT] [nchar] (3) NULL,
[OKINCO] [nchar] (10) NULL,
[OKININ] [numeric] (18, 0) NULL,
[OKINLI] [numeric] (18, 0) NULL,
[OKINRC] [nchar] (10) NULL,
[OKINSN] [nvarchar] (20) NULL,
[OKINSS] [numeric] (18, 0) NULL,
[OKINSU] [nchar] (10) NULL,
[OKIVGP] [nchar] (3) NULL,
[OKLHCD] [nchar] (2) NULL,
[OKLIDT] [numeric] (18, 0) NULL,
[OKLMDT] [numeric] (18, 0) NULL,
[OKLMTS] [numeric] (18, 0) NULL,
[OKLSAD] [nchar] (8) NULL,
[OKLSID] [nchar] (8) NULL,
[OKLSOI] [numeric] (18, 0) NULL,
[OKLZON] [numeric] (18, 0) NULL,
[OKMAIL] [numeric] (18, 0) NULL,
[OKMCON] [numeric] (18, 0) NULL,
[OKMCOS] [numeric] (18, 0) NULL,
[OKMEAL] [nchar] (10) NULL,
[OKMODL] [nchar] (3) NULL,
[OKMTIC] [numeric] (18, 0) NULL,
[OKNALI] [numeric] (18, 0) NULL,
[OKODTG] [numeric] (18, 0) NULL,
[OKODUD] [numeric] (18, 0) NULL,
[OKODUE] [numeric] (18, 0) NULL,
[OKOREF] [nvarchar] (30) NULL,
[OKORTP] [nchar] (3) NULL,
[OKOT75] [numeric] (18, 0) NULL,
[OKOT89] [numeric] (18, 0) NULL,
[OKPADL] [numeric] (18, 0) NULL,
[OKPHN2] [nchar] (16) NULL,
[OKPHNO] [nchar] (16) NULL,
[OKPLTB] [nchar] (10) NULL,
[OKPONO] [nchar] (10) NULL,
[OKPOPN] [nvarchar] (30) NULL,
[OKPRDL] [numeric] (18, 0) NULL,
[OKPRIC] [numeric] (18, 0) NULL,
[OKPRIO] [numeric] (18, 0) NULL,
[OKPRS1] [nchar] (2) NULL,
[OKPRS2] [nchar] (2) NULL,
[OKPRS3] [nchar] (2) NULL,
[OKPRS4] [nchar] (2) NULL,
[OKPRS5] [nchar] (2) NULL,
[OKPRVG] [nchar] (2) NULL,
[OKPWMT] [nchar] (10) NULL,
[OKPYCD] [nchar] (3) NULL,
[OKPYDI] [nchar] (3) NULL,
[OKPYNO] [nchar] (10) NULL,
[OKPYOP] [numeric] (18, 0) NULL,
[OKQUCK] [numeric] (18, 0) NULL,
[OKRAN1] [numeric] (18, 0) NULL,
[OKRAN2] [numeric] (18, 0) NULL,
[OKRAN3] [numeric] (18, 0) NULL,
[OKRAN4] [numeric] (18, 0) NULL,
[OKRESP] [nchar] (10) NULL,
[OKRGDT] [numeric] (18, 0) NULL,
[OKRGTM] [numeric] (18, 0) NULL,
[OKRMCT] [nchar] (3) NULL,
[OKRODN] [numeric] (18, 0) NULL,
[OKRONO] [nchar] (3) NULL,
[OKROUT] [nchar] (6) NULL,
[OKSCED] [numeric] (18, 0) NULL,
[OKSDST] [nchar] (3) NULL,
[OKSERC] [numeric] (18, 0) NULL,
[OKSMCD] [nchar] (4) NULL,
[OKSOOP] [numeric] (18, 0) NULL,
[OKSOTP] [nchar] (3) NULL,
[OKSPLM] [nchar] (8) NULL,
[OKSRES] [nchar] (4) NULL,
[OKSTAT] [nchar] (2) NULL,
[OKSTMR] [nchar] (3) NULL,
[OKSTMS] [numeric] (18, 0) NULL,
[OKTAXC] [nchar] (3) NULL,
[OKTBLG] [numeric] (18, 0) NULL,
[OKTCEX] [numeric] (18, 0) NULL,
[OKTDIN] [numeric] (18, 0) NULL,
[OKTECD] [nchar] (3) NULL,
[OKTECH] [nchar] (4) NULL,
[OKTECN] [nvarchar] (20) NULL,
[OKTEDL] [nchar] (3) NULL,
[OKTEEC] [numeric] (18, 0) NULL,
[OKTEPA] [nchar] (3) NULL,
[OKTEPY] [nchar] (3) NULL,
[OKTFNO] [nchar] (16) NULL,
[OKTINC] [numeric] (18, 0) NULL,
[OKTOIN] [numeric] (18, 0) NULL,
[OKTOWN] [nvarchar] (20) NULL,
[OKTRTI] [numeric] (18, 0) NULL,
[OKTVCD] [nchar] (2) NULL,
[OKTXAP] [numeric] (18, 0) NULL,
[OKTXID] [numeric] (18, 0) NULL,
[OKULZO] [nchar] (5) NULL,
[OKUSL1] [nchar] (10) NULL,
[OKUSL2] [nchar] (10) NULL,
[OKUSR1] [nchar] (10) NULL,
[OKUSR2] [nchar] (10) NULL,
[OKUSR3] [nchar] (10) NULL,
[OKVDLA] [numeric] (18, 0) NULL,
[OKVRCD] [nchar] (2) NULL,
[OKVRNO] [nchar] (16) NULL,
[OKVTCD] [numeric] (18, 0) NULL,
[OKWAYB] [numeric] (18, 0) NULL,
[OKWHLO] [nchar] (3) NULL,
[OKYRE2] [nvarchar] (30) NULL,
[OKYREF] [nvarchar] (30) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10ved_POL_OCUSMA_1] ON [tsa].[ics_land_M3V10ved_POL_OCUSMA] ([OKCONO], [OKCUNO])
GO
