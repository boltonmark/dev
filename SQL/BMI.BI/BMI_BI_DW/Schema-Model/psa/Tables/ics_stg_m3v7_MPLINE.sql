CREATE TABLE [psa].[ics_stg_m3v7_MPLINE]
(
[EtlRecordId] [bigint] NOT NULL IDENTITY(1, 1),
[EtlBatchRunId] [int] NOT NULL,
[EtlStepRunId] [int] NOT NULL,
[EtlThreadRunId] [int] NOT NULL,
[DataSourceKey] [int] NOT NULL,
[EtlSourceTable] [varchar] (200) NOT NULL,
[EtlCreatedOn] [datetime] NOT NULL,
[EtlCreatedBy] [varchar] (200) NOT NULL,
[EtlUpdatedOn] [datetime] NOT NULL,
[EtlUpdatedBy] [varchar] (200) NOT NULL,
[EtlDeletedOn] [datetime] NULL,
[EtlDeletedBy] [varchar] (200) NULL,
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_land_m3v7_MPLINE_IsDeleted] DEFAULT ((0)),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_ics_land_m3v7_MPLINE_IsIncomplete] DEFAULT ((0)),
[IBACLI] [decimal] (1, 0) NULL,
[IBACRF] [nvarchar] (255) NULL,
[IBADQA] [decimal] (15, 6) NULL,
[IBAGNB] [nvarchar] (255) NULL,
[IBATDT] [decimal] (8, 0) NULL,
[IBATNR] [decimal] (17, 0) NULL,
[IBATPR] [nvarchar] (255) NULL,
[IBBAOR] [nvarchar] (255) NULL,
[IBBUYE] [nvarchar] (255) NULL,
[IBCAQA] [decimal] (15, 6) NULL,
[IBCFD1] [decimal] (5, 2) NULL,
[IBCFD2] [decimal] (5, 2) NULL,
[IBCFD3] [decimal] (5, 2) NULL,
[IBCFIN] [decimal] (10, 0) NULL,
[IBCFMB] [decimal] (15, 9) NULL,
[IBCFPB] [decimal] (15, 9) NULL,
[IBCFQA] [decimal] (15, 6) NULL,
[IBCHID] [nvarchar] (255) NULL,
[IBCHNO] [decimal] (3, 0) NULL,
[IBCLAN] [nvarchar] (255) NULL,
[IBCLLI] [decimal] (1, 0) NULL,
[IBCLLN] [decimal] (3, 0) NULL,
[IBCOCE] [nvarchar] (255) NULL,
[IBCODT] [decimal] (8, 0) NULL,
[IBCONO] [decimal] (3, 0) NULL,
[IBCPPR] [decimal] (17, 6) NULL,
[IBCPRI] [nvarchar] (255) NULL,
[IBCPUC] [decimal] (5, 0) NULL,
[IBCSNO] [nvarchar] (255) NULL,
[IBDT4T] [decimal] (1, 0) NULL,
[IBDTID] [decimal] (13, 0) NULL,
[IBDWCP] [decimal] (1, 0) NULL,
[IBDWDT] [decimal] (8, 0) NULL,
[IBECDD] [decimal] (8, 0) NULL,
[IBECF1] [nvarchar] (255) NULL,
[IBECF2] [nvarchar] (255) NULL,
[IBECF3] [nvarchar] (255) NULL,
[IBECF4] [nvarchar] (255) NULL,
[IBECF5] [nvarchar] (255) NULL,
[IBECLC] [nvarchar] (255) NULL,
[IBECVE] [nvarchar] (255) NULL,
[IBECVS] [decimal] (3, 0) NULL,
[IBELNO] [nvarchar] (255) NULL,
[IBETRF] [nvarchar] (255) NULL,
[IBEXAT] [decimal] (1, 0) NULL,
[IBEXAV] [decimal] (1, 0) NULL,
[IBEXEP] [decimal] (15, 2) NULL,
[IBFACI] [nvarchar] (255) NULL,
[IBFUSC] [nvarchar] (255) NULL,
[IBGRMT] [nvarchar] (255) NULL,
[IBHAFE] [nvarchar] (255) NULL,
[IBHDPR] [nvarchar] (255) NULL,
[IBIDAG] [decimal] (1, 0) NULL,
[IBIDAT] [decimal] (8, 0) NULL,
[IBINEP] [decimal] (15, 2) NULL,
[IBIRCV] [nvarchar] (255) NULL,
[IBITNO] [nvarchar] (255) NULL,
[IBIVQA] [decimal] (15, 6) NULL,
[IBLICC] [nvarchar] (255) NULL,
[IBLMDT] [decimal] (8, 0) NULL,
[IBLMTS] [decimal] (18, 0) NULL,
[IBLNAM] [decimal] (15, 2) NULL,
[IBLPUD] [decimal] (8, 0) NULL,
[IBLTPP] [nvarchar] (255) NULL,
[IBMSTN] [decimal] (10, 0) NULL,
[IBNOED] [decimal] (1, 0) NULL,
[IBNPDE] [decimal] (3, 0) NULL,
[IBODI1] [decimal] (5, 2) NULL,
[IBODI2] [decimal] (5, 2) NULL,
[IBODI3] [decimal] (5, 2) NULL,
[IBOEND] [decimal] (1, 0) NULL,
[IBOPTX] [nvarchar] (255) NULL,
[IBOPTY] [nvarchar] (255) NULL,
[IBOPTZ] [nvarchar] (255) NULL,
[IBORQA] [decimal] (15, 6) NULL,
[IBORTY] [nvarchar] (255) NULL,
[IBOTOD] [decimal] (1, 0) NULL,
[IBOURR] [nvarchar] (255) NULL,
[IBOURT] [nvarchar] (255) NULL,
[IBPACT] [nvarchar] (255) NULL,
[IBPDDT] [decimal] (8, 0) NULL,
[IBPGRN] [decimal] (7, 0) NULL,
[IBPITD] [nvarchar] (255) NULL,
[IBPITT] [nvarchar] (255) NULL,
[IBPLDT] [decimal] (8, 0) NULL,
[IBPLPN] [decimal] (7, 0) NULL,
[IBPLPS] [decimal] (3, 0) NULL,
[IBPNLI] [decimal] (3, 0) NULL,
[IBPNLS] [decimal] (3, 0) NULL,
[IBPOTC] [nvarchar] (255) NULL,
[IBPPUN] [nvarchar] (255) NULL,
[IBPRCS] [nvarchar] (255) NULL,
[IBPRIP] [nvarchar] (255) NULL,
[IBPROD] [nvarchar] (255) NULL,
[IBPROJ] [nvarchar] (255) NULL,
[IBPTCD] [decimal] (1, 0) NULL,
[IBPUCD] [decimal] (5, 0) NULL,
[IBPUNO] [nvarchar] (255) NULL,
[IBPUPR] [decimal] (17, 6) NULL,
[IBPURC] [nvarchar] (255) NULL,
[IBPUSL] [nvarchar] (255) NULL,
[IBPUST] [nvarchar] (255) NULL,
[IBPUUN] [nvarchar] (255) NULL,
[IBRCDT] [decimal] (8, 0) NULL,
[IBREPP] [decimal] (1, 0) NULL,
[IBRESF] [nvarchar] (255) NULL,
[IBREVN] [nvarchar] (255) NULL,
[IBRGDT] [decimal] (8, 0) NULL,
[IBRGTM] [decimal] (6, 0) NULL,
[IBRJQA] [decimal] (15, 6) NULL,
[IBRORC] [decimal] (1, 0) NULL,
[IBRORL] [decimal] (6, 0) NULL,
[IBRORN] [nvarchar] (255) NULL,
[IBRORX] [decimal] (3, 0) NULL,
[IBRRQA] [decimal] (15, 6) NULL,
[IBRVQA] [decimal] (15, 6) NULL,
[IBSDQA] [decimal] (15, 6) NULL,
[IBSEBI] [nvarchar] (255) NULL,
[IBSEQN] [decimal] (7, 0) NULL,
[IBSITE] [nvarchar] (255) NULL,
[IBSORN] [nvarchar] (255) NULL,
[IBSUAG] [nvarchar] (255) NULL,
[IBSUDO] [nvarchar] (255) NULL,
[IBSUFI] [nvarchar] (255) NULL,
[IBSUNO] [nvarchar] (255) NULL,
[IBTAXC] [nvarchar] (255) NULL,
[IBTERE] [nvarchar] (255) NULL,
[IBTIHM] [decimal] (4, 0) NULL,
[IBTNQA] [decimal] (15, 6) NULL,
[IBTXID] [decimal] (13, 0) NULL,
[IBULEX] [decimal] (1, 0) NULL,
[IBUPAV] [decimal] (1, 0) NULL,
[IBUPCK] [decimal] (1, 0) NULL,
[IBUPIV] [decimal] (1, 0) NULL,
[IBVDDT] [decimal] (8, 0) NULL,
[IBVRCD] [nvarchar] (255) NULL,
[IBVTCD] [decimal] (2, 0) NULL,
[IBWHLO] [nvarchar] (255) NULL
)
GO
