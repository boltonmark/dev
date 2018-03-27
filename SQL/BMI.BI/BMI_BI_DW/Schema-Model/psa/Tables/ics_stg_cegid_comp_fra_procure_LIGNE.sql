CREATE TABLE [psa].[ics_stg_cegid_comp_fra_procure_LIGNE]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_cegid_comp_fra_procure_LIGNE_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_+ ics_stg_cegid_comp_fra_procure_LIGNE_IsIncomplete] DEFAULT ('N'),
[GL_NATUREPIECEG] [nvarchar] (3) NULL,
[GL_DATEPIECE] [datetime] NULL,
[GL_SOUCHE] [nvarchar] (3) NOT NULL,
[GL_NUMERO] [int] NOT NULL,
[GL_INDICEG] [int] NULL,
[GL_NUMLIGNE] [int] NOT NULL,
[GL_NUMORDRE] [int] NULL,
[GL_ARTICLE] [nvarchar] (35) NULL,
[GL_LIBELLE] [nvarchar] (70) NULL,
[GL_LIBCOMPL] [nvarchar] (35) NULL,
[GL_TIERS] [nvarchar] (17) NULL,
[GL_TIERSFACTURE] [nvarchar] (17) NULL,
[GL_TIERSPAYEUR] [nvarchar] (17) NULL,
[GL_TIERSLIVRE] [nvarchar] (17) NULL,
[GL_AFFAIRE] [nvarchar] (17) NULL,
[GL_AFFAIRE1] [nvarchar] (14) NULL,
[GL_AFFAIRE2] [nvarchar] (13) NULL,
[GL_AFFAIRE3] [nvarchar] (12) NULL,
[GL_AVENANT] [nvarchar] (2) NULL,
[GL_RESSOURCE] [nvarchar] (17) NULL,
[GL_REPRESENTANT] [nvarchar] (17) NULL,
[GL_APPORTEUR] [nvarchar] (17) NULL,
[GL_COMMISSIONR] [decimal] (19, 4) NULL,
[GL_COMMISSIONA] [decimal] (19, 4) NULL,
[GL_TYPECOM] [nvarchar] (3) NULL,
[GL_VALIDECOM] [nvarchar] (3) NULL,
[GL_FOURNISSEUR] [nvarchar] (17) NULL,
[GL_REFCOLIS] [nvarchar] (35) NULL,
[GL_PIECEPRECEDENTE] [nvarchar] (35) NULL,
[GL_CODEARTICLE] [nvarchar] (18) NULL,
[GL_REFARTSAISIE] [nvarchar] (35) NULL,
[GL_REFARTTIERS] [nvarchar] (35) NULL,
[GL_REFARTBARRE] [nvarchar] (18) NULL,
[GL_REFCATALOGUE] [nvarchar] (35) NULL,
[GL_TYPEREF] [nvarchar] (3) NULL,
[GL_PIECEORIGINE] [nvarchar] (35) NULL,
[GL_TARIF] [int] NULL,
[GL_DEPOT] [nvarchar] (3) NULL,
[GL_CODEARRONDI] [nvarchar] (3) NULL,
[GL_TYPELIGNE] [nvarchar] (3) NULL,
[GL_ENCONTREMARQUE] [nvarchar] (1) NULL,
[GL_TARIFARTICLE] [nvarchar] (3) NULL,
[GL_TARIFTIERS] [nvarchar] (3) NULL,
[GL_TYPEREMISE] [nvarchar] (3) NULL,
[GL_DEVISE] [nvarchar] (3) NULL,
[GL_FAMILLETAXE1] [nvarchar] (3) NULL,
[GL_FAMILLETAXE2] [nvarchar] (3) NULL,
[GL_FAMILLETAXE3] [nvarchar] (3) NULL,
[GL_FAMILLETAXE4] [nvarchar] (3) NULL,
[GL_FAMILLETAXE5] [nvarchar] (3) NULL,
[GL_ETABLISSEMENT] [nvarchar] (3) NULL,
[GL_CREATEUR] [nvarchar] (3) NULL,
[GL_UTILISATEUR] [nvarchar] (3) NULL,
[GL_REGIMETAXE] [nvarchar] (3) NULL,
[GL_PAYSORIGINE] [nvarchar] (3) NULL,
[GL_SOLDERELIQUAT] [nvarchar] (1) NULL,
[GL_TYPENOMENC] [nvarchar] (3) NULL,
[GL_TYPEARTICLE] [nvarchar] (3) NULL,
[GL_QUALIFQTEACH] [nvarchar] (3) NULL,
[GL_QUALIFQTEVTE] [nvarchar] (3) NULL,
[GL_QUALIFQTESTO] [nvarchar] (3) NULL,
[GL_FACTUREHT] [nvarchar] (1) NULL,
[GL_TVAENCAISSEMENT] [nvarchar] (1) NULL,
[GL_VIVANTE] [nvarchar] (1) NULL,
[GL_TENUESTOCK] [nvarchar] (1) NULL,
[GL_ESCOMPTABLE] [nvarchar] (1) NULL,
[GL_NONIMPRIMABLE] [nvarchar] (1) NULL,
[GL_REMISABLELIGNE] [nvarchar] (1) NULL,
[GL_REMISABLEPIED] [nvarchar] (1) NULL,
[GL_CODEDOUANE] [nvarchar] (17) NULL,
[GL_POIDSDOUANIER] [decimal] (19, 4) NULL,
[GL_TAUXDEV] [decimal] (15, 9) NULL,
[GL_COTATION] [decimal] (15, 9) NULL,
[GL_QTESTOCK] [decimal] (19, 4) NULL,
[GL_QTEFACT] [decimal] (19, 4) NULL,
[GL_QTETARIF] [decimal] (19, 4) NULL,
[GL_ESCOMPTE] [decimal] (19, 4) NULL,
[GL_DISPO] [decimal] (19, 4) NULL,
[GL_DPA] [decimal] (19, 4) NULL,
[GL_PMAP] [decimal] (19, 4) NULL,
[GL_PMRP] [decimal] (19, 4) NULL,
[GL_PMAPACTU] [decimal] (19, 4) NULL,
[GL_PMRPACTU] [decimal] (19, 4) NULL,
[GL_DPR] [decimal] (19, 4) NULL,
[GL_TOTALHT] [decimal] (19, 4) NULL,
[GL_TOTALHTDEV] [decimal] (19, 4) NULL,
[GL_MONTANTHT] [decimal] (19, 4) NULL,
[GL_MONTANTHTDEV] [decimal] (19, 4) NULL,
[GL_MONTANTTTC] [decimal] (19, 4) NULL,
[GL_MONTANTTTCDEV] [decimal] (19, 4) NULL,
[GL_TOTALTAXE1] [decimal] (19, 4) NULL,
[GL_TOTALTAXE2] [decimal] (19, 4) NULL,
[GL_TOTALTAXE3] [decimal] (19, 4) NULL,
[GL_TOTALTAXE4] [decimal] (19, 4) NULL,
[GL_TOTALTAXE5] [decimal] (19, 4) NULL,
[GL_TOTALTAXEDEV1] [decimal] (19, 4) NULL,
[GL_TOTALTAXEDEV2] [decimal] (19, 4) NULL,
[GL_TOTALTAXEDEV3] [decimal] (19, 4) NULL,
[GL_TOTALTAXEDEV4] [decimal] (19, 4) NULL,
[GL_TOTALTAXEDEV5] [decimal] (19, 4) NULL,
[GL_TOTALTTC] [decimal] (19, 4) NULL,
[GL_TOTALTTCDEV] [decimal] (19, 4) NULL,
[GL_TOTREMPIED] [decimal] (19, 4) NULL,
[GL_TOTREMPIEDDEV] [decimal] (19, 4) NULL,
[GL_REMISEPIED] [decimal] (19, 4) NULL,
[GL_TOTREMLIGNE] [decimal] (19, 4) NULL,
[GL_TOTREMLIGNEDEV] [decimal] (19, 4) NULL,
[GL_REMISELIGNE] [decimal] (19, 4) NULL,
[GL_TOTESCLIGNE] [decimal] (19, 4) NULL,
[GL_TOTESCLIGNEDEV] [decimal] (19, 4) NULL,
[GL_VALEURREMDEV] [decimal] (19, 4) NULL,
[GL_REMISECASCADE] [nvarchar] (35) NULL,
[GL_TAUXRFA] [decimal] (19, 4) NULL,
[GL_QTERELIQUAT] [decimal] (19, 4) NULL,
[GL_QTERESTE] [decimal] (19, 4) NULL,
[GL_NBTRANSMIS] [int] NULL,
[GL_DATELIVRAISON] [datetime] NULL,
[GL_NUMADRESSELIVR] [int] NULL,
[GL_DATEMODIF] [datetime] NULL,
[GL_DATECREATION] [datetime] NULL,
[GL_PUHT] [decimal] (19, 4) NULL,
[GL_PUHTDEV] [decimal] (19, 4) NULL,
[GL_PUHTNET] [decimal] (19, 4) NULL,
[GL_PUHTNETDEV] [decimal] (19, 4) NULL,
[GL_PUTTC] [decimal] (19, 4) NULL,
[GL_PUTTCDEV] [decimal] (19, 4) NULL,
[GL_PUTTCNET] [decimal] (19, 4) NULL,
[GL_PUTTCNETDEV] [decimal] (19, 4) NULL,
[GL_PUHTBASE] [decimal] (19, 4) NULL,
[GL_PUTTCBASE] [decimal] (19, 4) NULL,
[GL_PUHTORIGINE] [decimal] (19, 4) NULL,
[GL_PUHTORIGINEDEV] [decimal] (19, 4) NULL,
[GL_FAMILLENIV1] [nvarchar] (3) NULL,
[GL_FAMILLENIV2] [nvarchar] (3) NULL,
[GL_FAMILLENIV3] [nvarchar] (3) NULL,
[GL_COLLECTION] [nvarchar] (3) NULL,
[GL_LIBREART1] [nvarchar] (6) NULL,
[GL_LIBREART2] [nvarchar] (6) NULL,
[GL_LIBREART3] [nvarchar] (6) NULL,
[GL_LIBREART4] [nvarchar] (6) NULL,
[GL_LIBREART5] [nvarchar] (6) NULL,
[GL_LIBREART6] [nvarchar] (6) NULL,
[GL_LIBREART7] [nvarchar] (6) NULL,
[GL_LIBREART8] [nvarchar] (6) NULL,
[GL_LIBREART9] [nvarchar] (6) NULL,
[GL_LIBREARTA] [nvarchar] (6) NULL,
[GL_QUALIFPOIDS] [nvarchar] (3) NULL,
[GL_QUALIFSURFACE] [nvarchar] (3) NULL,
[GL_QUALIFLINEAIRE] [nvarchar] (3) NULL,
[GL_QUALIFVOLUME] [nvarchar] (3) NULL,
[GL_QUALIFHEURE] [nvarchar] (3) NULL,
[GL_POIDSBRUT] [decimal] (19, 4) NULL,
[GL_POIDSNET] [decimal] (19, 4) NULL,
[GL_POIDSDOUA] [decimal] (19, 4) NULL,
[GL_LINEAIRE] [decimal] (19, 4) NULL,
[GL_SURFACE] [decimal] (19, 4) NULL,
[GL_VOLUME] [decimal] (19, 4) NULL,
[GL_HEURE] [decimal] (19, 4) NULL,
[GL_TOTALLINEAIRE] [decimal] (19, 4) NULL,
[GL_TOTALSURFACE] [decimal] (19, 4) NULL,
[GL_TOTALPOIDSNET] [decimal] (19, 4) NULL,
[GL_TOTALPOIDSBRUT] [decimal] (19, 4) NULL,
[GL_TOTALPOIDSDOUA] [decimal] (19, 4) NULL,
[GL_TOTALVOLUME] [decimal] (19, 4) NULL,
[GL_TOTALHEURE] [decimal] (19, 4) NULL,
[GL_CODESDIM] [nvarchar] (20) NULL,
[GL_POURCENTAVANC] [decimal] (19, 4) NULL,
[GL_QTEPREVAVANC] [decimal] (19, 4) NULL,
[GL_TOTPREVAVANC] [decimal] (19, 4) NULL,
[GL_TOTPREVDEVAVAN] [decimal] (19, 4) NULL,
[GL_CODECOMPTAAFF] [nvarchar] (3) NULL,
[GL_CREERPAR] [nvarchar] (3) NULL,
[GL_SOCIETE] [nvarchar] (3) NULL,
[GL_PRIXPOURQTE] [decimal] (19, 9) NULL,
[GL_PCB] [decimal] (19, 4) NULL,
[GL_CODECOND] [nvarchar] (17) NULL,
[GL_QUALIFMVT] [nvarchar] (3) NULL,
[GL_SAISIECONTRE] [nvarchar] (1) NULL,
[GL_INDICENOMEN] [int] NULL,
[GL_INDICELOT] [int] NULL,
[GL_INDICESERIE] [int] NULL,
[GL_NUMEROSERIE] [nvarchar] (1) NULL,
[GL_TYPEDIM] [nvarchar] (3) NULL,
[GL_PERIODE] [int] NULL,
[GL_SEMAINE] [int] NULL,
[GL_CAISSE] [nvarchar] (3) NULL,
[GL_MOTIFMVT] [nvarchar] (3) NULL,
[GL_DOMAINE] [nvarchar] (3) NULL,
[GL_NOFOLIO] [int] NULL,
[GL_DATEPRODUCTION] [datetime] NULL,
[GL_REGROUPELIGNE] [nvarchar] (3) NULL,
[GL_DATECHANGEMENT] [datetime] NULL,
[GL_USERCHANGEMENT] [nvarchar] (3) NULL,
[GL_NIVEAUIMBRIC] [int] NULL,
[GL_QTESIT] [decimal] (19, 4) NULL,
[GL_TYPEPRESENT] [int] NULL,
[GL_ACTIONLIGNE] [nvarchar] (3) NULL,
[GL_IDENTIFIANTWOL] [int] NULL,
[GL_DATEDEPARTUSINE] [datetime] NULL,
[GL_TARIFSPECIAL] [nvarchar] (17) NULL,
[GL_BLOQUETARIF] [nvarchar] (1) NULL,
[GL_REFEXTERNE] [nvarchar] (35) NULL,
[GL_VALEURFIXEDEV] [decimal] (19, 4) NULL,
[GL_REMISELIBRE] [decimal] (19, 4) NULL,
[GL_REMLIBCASCADE] [nvarchar] (17) NULL,
[GL_TRANSFERT] [nvarchar] (3) NULL,
[GL_FORCODE1] [nvarchar] (10) NULL,
[GL_FORCODE2] [nvarchar] (10) NULL,
[GL_REGULARISABLE] [nvarchar] (1) NULL,
[GL_REGULARISE] [nvarchar] (1) NULL,
[GL_FORMULEVAR] [nvarchar] (17) NULL,
[GL_GENERAUTO] [nvarchar] (3) NULL,
[GL_FACTURABLE] [nvarchar] (3) NULL,
[GL_QUALIFQTETARIF] [nvarchar] (3) NULL,
[GL_LIGNELIEE] [int] NULL,
[GL_ETATSOLDE] [nvarchar] (3) NULL,
[GL_TYPECADENCE] [nvarchar] (3) NULL,
[GL_REFTRANSPORT] [nvarchar] (35) NULL,
[GL_DATEENLEVEMENT] [datetime] NULL,
[GL_COEFCONVQTE] [decimal] (19, 9) NULL,
[GL_BLOCNOTE] [ntext] NULL,
[GL_UNITEPRIX] [nvarchar] (3) NULL,
[GL_PSTD] [decimal] (19, 4) NULL,
[GL_GUIDWOL] [nvarchar] (36) NULL,
[GL_ECARTUNI] [decimal] (15, 9) NULL,
[PRE_GL_NATUREPIECCG_CAL] AS (ltrim(substring([GL_PIECEPRECEDENTE],(1),(3)))) PERSISTED,
[PRE_GL_SOUCHE_CAL] AS (substring([GL_PIECEPRECEDENTE],(5),(3))) PERSISTED,
[PRE_GL_NUMERO_CAL] AS (CONVERT([int],substring([GL_PIECEPRECEDENTE],(9),(9)),(0))) PERSISTED,
[PRE_GL_INDECIG_CAL] AS (CONVERT([int],substring([GL_PIECEPRECEDENTE],(19),(3)),(0))) PERSISTED,
[PRE_GL_NUMORDRE_CAL] AS (CONVERT([int],substring([GL_PIECEPRECEDENTE],(23),(6)),(0))),
[ORIG_GL_NATUREPIECCG_CAL] AS (ltrim(substring([GL_PIECEORIGINE],(1),(3)))) PERSISTED,
[ORIG_GL_SOUCHE_CAL] AS (substring([GL_PIECEORIGINE],(5),(3))) PERSISTED,
[ORIG_GL_NUMERO_CAL] AS (CONVERT([int],substring([GL_PIECEORIGINE],(9),(9)),(0))) PERSISTED,
[ORIG_GL_INDECIG_CAL] AS (CONVERT([int],substring([GL_PIECEORIGINE],(19),(3)),(0))) PERSISTED,
[ORIG_GL_NUMORDRE_CAL] AS (CONVERT([int],substring([GL_PIECEORIGINE],(23),(6)),(0)))
)
GO
ALTER TABLE [psa].[ics_stg_cegid_comp_fra_procure_LIGNE] ADD CONSTRAINT [PK_psa_ics_stg_cegid_comp_fra_procure_LIGNE] PRIMARY KEY CLUSTERED  ([GL_NUMERO], [GL_NUMLIGNE], [GL_SOUCHE])
GO
EXEC sp_addextendedproperty N'IncludeInMerge', N'Y', 'SCHEMA', N'psa', 'TABLE', N'ics_stg_cegid_comp_fra_procure_LIGNE', NULL, NULL
GO
