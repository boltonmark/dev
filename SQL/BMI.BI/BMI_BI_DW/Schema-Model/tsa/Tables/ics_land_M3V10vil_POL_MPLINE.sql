CREATE TABLE [tsa].[ics_land_M3V10vil_POL_MPLINE]
(
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[ExcludeFromMerge] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_vil_MPLINE_ExcludeFromMerge] DEFAULT ((0)),
[IsDuplicate] [bit] NOT NULL CONSTRAINT [DF_tsa_ics_land_vil_MPLINE_IsDuplicate] DEFAULT ((0)),
[IBACLI] [numeric] (1, 0) NULL,
[IBACRF] [nchar] (8) NULL,
[IBADQA] [numeric] (15, 6) NULL,
[IBAGNB] [nchar] (7) NULL,
[IBATDT] [numeric] (8, 0) NULL,
[IBATNR] [numeric] (17, 0) NULL,
[IBATPR] [nchar] (1) NULL,
[IBBAOR] [nchar] (10) NULL,
[IBBUYE] [nchar] (10) NULL,
[IBCAQA] [numeric] (15, 6) NULL,
[IBCFD1] [numeric] (5, 2) NULL,
[IBCFD2] [numeric] (5, 2) NULL,
[IBCFD3] [numeric] (5, 2) NULL,
[IBCFIN] [numeric] (10, 0) NULL,
[IBCFMB] [numeric] (15, 9) NULL,
[IBCFPB] [numeric] (15, 9) NULL,
[IBCFQA] [numeric] (15, 6) NULL,
[IBCHID] [nchar] (10) NULL,
[IBCHNO] [numeric] (3, 0) NULL,
[IBCLAN] [nchar] (7) NULL,
[IBCLLI] [numeric] (1, 0) NULL,
[IBCLLN] [numeric] (3, 0) NULL,
[IBCOCE] [nchar] (8) NULL,
[IBCODT] [numeric] (8, 0) NULL,
[IBCONO] [numeric] (3, 0) NULL,
[IBCPPR] [numeric] (17, 6) NULL,
[IBCPRI] [nchar] (5) NULL,
[IBCPUC] [numeric] (5, 0) NULL,
[IBCSNO] [nchar] (16) NULL,
[IBDT4T] [numeric] (1, 0) NULL,
[IBDTID] [numeric] (13, 0) NULL,
[IBDWCP] [numeric] (1, 0) NULL,
[IBDWDT] [numeric] (8, 0) NULL,
[IBECDD] [numeric] (8, 0) NULL,
[IBECF1] [nchar] (5) NULL,
[IBECF2] [nchar] (5) NULL,
[IBECF3] [nchar] (5) NULL,
[IBECF4] [nchar] (5) NULL,
[IBECF5] [nchar] (5) NULL,
[IBECLC] [nchar] (2) NULL,
[IBECVE] [nchar] (4) NULL,
[IBECVS] [numeric] (3, 0) NULL,
[IBELNO] [nchar] (8) NULL,
[IBETRF] [nchar] (3) NULL,
[IBEXAT] [numeric] (1, 0) NULL,
[IBEXAV] [numeric] (1, 0) NULL,
[IBEXEP] [numeric] (15, 2) NULL,
[IBFACI] [nchar] (3) NULL,
[IBFATP] [nchar] (5) NULL,
[IBFUSC] [nchar] (3) NULL,
[IBGRMT] [nchar] (3) NULL,
[IBHAFE] [nchar] (6) NULL,
[IBHDPR] [nchar] (15) NULL,
[IBIDAG] [numeric] (1, 0) NULL,
[IBIDAT] [numeric] (8, 0) NULL,
[IBINEP] [numeric] (15, 2) NULL,
[IBIRCV] [nvarchar] (20) NULL,
[IBITNO] [nchar] (15) NULL,
[IBIVQA] [numeric] (15, 6) NULL,
[IBLICC] [nchar] (1) NULL,
[IBLMDT] [numeric] (8, 0) NULL,
[IBLMTS] [numeric] (18, 0) NULL,
[IBLNAM] [numeric] (15, 2) NULL,
[IBLPUD] [numeric] (8, 0) NULL,
[IBLTPP] [nchar] (1) NULL,
[IBMODL] [nchar] (3) NULL,
[IBMSTN] [numeric] (10, 0) NULL,
[IBNOED] [numeric] (1, 0) NULL,
[IBNPDE] [numeric] (3, 0) NULL,
[IBODI1] [numeric] (5, 2) NULL,
[IBODI2] [numeric] (5, 2) NULL,
[IBODI3] [numeric] (5, 2) NULL,
[IBOEND] [numeric] (1, 0) NULL,
[IBOPTX] [nchar] (15) NULL,
[IBOPTY] [nchar] (15) NULL,
[IBOPTZ] [nchar] (15) NULL,
[IBORCO] [nchar] (3) NULL,
[IBORQA] [numeric] (15, 6) NULL,
[IBORTY] [nchar] (3) NULL,
[IBOTOD] [numeric] (1, 0) NULL,
[IBOURR] [nchar] (10) NULL,
[IBOURT] [nchar] (1) NULL,
[IBPACT] [nchar] (6) NULL,
[IBPDDT] [numeric] (8, 0) NULL,
[IBPGRN] [numeric] (7, 0) NULL,
[IBPITD] [nvarchar] (30) NULL,
[IBPITT] [nvarchar] (60) NULL,
[IBPLDT] [numeric] (8, 0) NULL,
[IBPLPN] [numeric] (7, 0) NULL,
[IBPLPS] [numeric] (3, 0) NULL,
[IBPNLI] [numeric] (3, 0) NULL,
[IBPNLS] [numeric] (3, 0) NULL,
[IBPOTC] [nchar] (2) NULL,
[IBPPUN] [nchar] (3) NULL,
[IBPRCS] [nchar] (3) NULL,
[IBPRIP] [nchar] (1) NULL,
[IBPROD] [nchar] (10) NULL,
[IBPROJ] [nchar] (7) NULL,
[IBPTCD] [numeric] (1, 0) NULL,
[IBPUCD] [numeric] (5, 0) NULL,
[IBPUNO] [nchar] (7) NULL,
[IBPUPR] [numeric] (17, 6) NULL,
[IBPURC] [nchar] (10) NULL,
[IBPUSL] [nchar] (2) NULL,
[IBPUST] [nchar] (2) NULL,
[IBPUUN] [nchar] (3) NULL,
[IBRCDT] [numeric] (8, 0) NULL,
[IBRE20] [nvarchar] (20) NULL,
[IBREPP] [numeric] (1, 0) NULL,
[IBRESF] [nchar] (10) NULL,
[IBREVN] [nchar] (2) NULL,
[IBRGDT] [numeric] (8, 0) NULL,
[IBRGTM] [numeric] (6, 0) NULL,
[IBRJQA] [numeric] (15, 6) NULL,
[IBRORC] [numeric] (1, 0) NULL,
[IBRORL] [numeric] (6, 0) NULL,
[IBRORN] [nchar] (10) NULL,
[IBRORX] [numeric] (3, 0) NULL,
[IBRRQA] [numeric] (15, 6) NULL,
[IBRVQA] [numeric] (15, 6) NULL,
[IBSDQA] [numeric] (15, 6) NULL,
[IBSEBI] [nchar] (1) NULL,
[IBSEQN] [numeric] (7, 0) NULL,
[IBSITE] [nvarchar] (30) NULL,
[IBSORN] [nvarchar] (20) NULL,
[IBSUAG] [nchar] (10) NULL,
[IBSUDO] [nvarchar] (20) NULL,
[IBSUFI] [nvarchar] (20) NULL,
[IBSUNO] [nchar] (10) NULL,
[IBTAXC] [nchar] (3) NULL,
[IBTEDL] [nchar] (3) NULL,
[IBTEL1] [nvarchar] (36) NULL,
[IBTERE] [nchar] (10) NULL,
[IBTIHM] [numeric] (4, 0) NULL,
[IBTNQA] [numeric] (15, 6) NULL,
[IBTXID] [numeric] (13, 0) NULL,
[IBULEX] [numeric] (1, 0) NULL,
[IBUPAV] [numeric] (1, 0) NULL,
[IBUPCK] [numeric] (1, 0) NULL,
[IBUPIV] [numeric] (1, 0) NULL,
[IBVDDT] [numeric] (8, 0) NULL,
[IBVRCD] [nchar] (2) NULL,
[IBVTCD] [numeric] (2, 0) NULL,
[IBWHLO] [nchar] (3) NULL
)
GO
CREATE CLUSTERED INDEX [IndClust_tsa_ics_land_M3V10vil_POL_MPLINE_1] ON [tsa].[ics_land_M3V10vil_POL_MPLINE] ([IBCONO], [IBPNLI], [IBPNLS], [IBPUNO])
GO
