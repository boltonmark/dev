﻿-- <Migration ID="41f23f98-60ff-4829-9d30-4b17bc04af7b" />
GO

PRINT N'Creating [psa].[ics_stg_cegid_comp_fra_procure_LIGNE]'
GO
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
[GL_ECARTUNI] [decimal] (15, 9) NULL
)
GO
PRINT N'Creating primary key [PK_psa_ics_stg_cegid_comp_fra_procure_LIGNE] on [psa].[ics_stg_cegid_comp_fra_procure_LIGNE]'
GO
ALTER TABLE [psa].[ics_stg_cegid_comp_fra_procure_LIGNE] ADD CONSTRAINT [PK_psa_ics_stg_cegid_comp_fra_procure_LIGNE] PRIMARY KEY CLUSTERED  ([GL_NUMERO], [GL_NUMLIGNE], [GL_SOUCHE])
GO
PRINT N'Creating [psa].[ics_stg_cegid_comp_fra_procure_PIECE]'
GO
CREATE TABLE [psa].[ics_stg_cegid_comp_fra_procure_PIECE]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_cegid_comp_fra_procure_PIECE_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_+ ics_stg_cegid_comp_fra_procure_PIECE_IsIncomplete] DEFAULT ('N'),
[GP_NATUREPIECEG] [nvarchar] (3) NULL,
[GP_DATEPIECE] [datetime] NULL,
[GP_SOUCHE] [nvarchar] (3) NOT NULL,
[GP_PRENUMERO] [nvarchar] (17) NULL,
[GP_NUMERO] [int] NOT NULL,
[GP_NUMPIECE] [nvarchar] (35) NULL,
[GP_INDICEG] [int] NULL,
[GP_REFCOMPTABLE] [nvarchar] (35) NULL,
[GP_REFCPTASTOCK] [nvarchar] (35) NULL,
[GP_REFINTERNE] [nvarchar] (35) NULL,
[GP_REFEXTERNE] [nvarchar] (35) NULL,
[GP_DEVENIRPIECE] [nvarchar] (35) NULL,
[GP_TIERS] [nvarchar] (17) NULL,
[GP_TIERSLIVRE] [nvarchar] (17) NULL,
[GP_TIERSFACTURE] [nvarchar] (17) NULL,
[GP_TIERSPAYEUR] [nvarchar] (17) NULL,
[GP_AFFAIRE] [nvarchar] (17) NULL,
[GP_AFFAIRE1] [nvarchar] (14) NULL,
[GP_AFFAIRE2] [nvarchar] (13) NULL,
[GP_AFFAIRE3] [nvarchar] (12) NULL,
[GP_AVENANT] [nvarchar] (2) NULL,
[GP_REPRESENTANT] [nvarchar] (17) NULL,
[GP_APPORTEUR] [nvarchar] (17) NULL,
[GP_TIERSSAL1] [nvarchar] (17) NULL,
[GP_TIERSSAL2] [nvarchar] (17) NULL,
[GP_TIERSSAL3] [nvarchar] (17) NULL,
[GP_PRESCRIPTEUR] [nvarchar] (17) NULL,
[GP_JALCOMPTABLE] [nvarchar] (3) NULL,
[GP_CREATEUR] [nvarchar] (3) NULL,
[GP_UTILISATEUR] [nvarchar] (3) NULL,
[GP_ETABLISSEMENT] [nvarchar] (3) NULL,
[GP_DEPOT] [nvarchar] (3) NULL,
[GP_DEPOTDEST] [nvarchar] (3) NULL,
[GP_MODEREGLE] [nvarchar] (3) NULL,
[GP_TVAENCAISSEMENT] [nvarchar] (3) NULL,
[GP_REGIMETAXE] [nvarchar] (3) NULL,
[GP_TARIFTIERS] [nvarchar] (3) NULL,
[GP_TYPEREMISE] [nvarchar] (3) NULL,
[GP_PRIORITE] [nvarchar] (3) NULL,
[GP_EXPEDITION] [nvarchar] (3) NULL,
[GP_TRANSPORT] [nvarchar] (3) NULL,
[GP_DEVISE] [nvarchar] (3) NULL,
[GP_FACTUREHT] [nvarchar] (1) NULL,
[GP_VIVANTE] [nvarchar] (1) NULL,
[GP_SUPPRIME] [nvarchar] (1) NULL,
[GP_ETATEXPORT] [nvarchar] (3) NULL,
[GP_ETATVISA] [nvarchar] (3) NULL,
[GP_VISEUR] [nvarchar] (3) NULL,
[GP_DATEVISA] [datetime] NULL,
[GP_DATEEXPORT] [datetime] NULL,
[GP_AFFACTURAGE] [nvarchar] (1) NULL,
[GP_CONTREMARQUE] [nvarchar] (1) NULL,
[GP_NBCOLIS] [int] NULL,
[GP_NBTRANSMIS] [int] NULL,
[GP_TAUXDEV] [decimal] (15, 9) NULL,
[GP_COTATION] [decimal] (15, 9) NULL,
[GP_DATETAUXDEV] [datetime] NULL,
[GP_ESCOMPTE] [decimal] (19, 4) NULL,
[GP_TOTALESC] [decimal] (19, 4) NULL,
[GP_TOTALESCDEV] [decimal] (19, 4) NULL,
[GP_TOTESCTTC] [decimal] (19, 4) NULL,
[GP_TOTESCTTCDEV] [decimal] (19, 4) NULL,
[GP_QUALIFESCOMPTE] [nvarchar] (3) NULL,
[GP_REMISEPIED] [decimal] (19, 4) NULL,
[GP_TOTALREMISE] [decimal] (19, 4) NULL,
[GP_TOTALREMISEDEV] [decimal] (19, 4) NULL,
[GP_TOTREMISETTC] [decimal] (19, 4) NULL,
[GP_TOTREMISETTCDEV] [decimal] (19, 4) NULL,
[GP_TOTALHT] [decimal] (19, 4) NULL,
[GP_TOTALHTDEV] [decimal] (19, 4) NULL,
[GP_TOTALTTC] [decimal] (19, 4) NULL,
[GP_TOTALTTCDEV] [decimal] (19, 4) NULL,
[GP_TOTALQTEFACT] [decimal] (19, 4) NULL,
[GP_TOTALQTESTOCK] [decimal] (19, 4) NULL,
[GP_TOTALBASEREMDEV] [decimal] (19, 4) NULL,
[GP_TOTALBASEREM] [decimal] (19, 4) NULL,
[GP_TOTALBASEESCDEV] [decimal] (19, 4) NULL,
[GP_TOTALBASEESC] [decimal] (19, 4) NULL,
[GP_HEURECREATION] [datetime] NULL,
[GP_DATECREATION] [datetime] NULL,
[GP_DATEMODIF] [datetime] NULL,
[GP_DATEINTEGR] [datetime] NULL,
[GP_DATEREFEXTERNE] [datetime] NULL,
[GP_DATELIVRAISON] [datetime] NULL,
[GP_NUMADRESSELIVR] [int] NULL,
[GP_NUMADRESSEFACT] [int] NULL,
[GP_LIBRETIERS1] [nvarchar] (6) NULL,
[GP_LIBRETIERS2] [nvarchar] (6) NULL,
[GP_LIBRETIERS3] [nvarchar] (6) NULL,
[GP_LIBRETIERS4] [nvarchar] (6) NULL,
[GP_LIBRETIERS5] [nvarchar] (6) NULL,
[GP_LIBRETIERS6] [nvarchar] (6) NULL,
[GP_LIBRETIERS7] [nvarchar] (6) NULL,
[GP_LIBRETIERS8] [nvarchar] (6) NULL,
[GP_LIBRETIERS9] [nvarchar] (6) NULL,
[GP_LIBRETIERSA] [nvarchar] (6) NULL,
[GP_MAJLIBRETIERS] [nvarchar] (13) NULL,
[GP_LIBREPIECE1] [nvarchar] (6) NULL,
[GP_LIBREPIECE2] [nvarchar] (6) NULL,
[GP_LIBREPIECE3] [nvarchar] (6) NULL,
[GP_DATELIBREPIECE1] [datetime] NULL,
[GP_DATELIBREPIECE2] [datetime] NULL,
[GP_DATELIBREPIECE3] [datetime] NULL,
[GP_LIBREAFF1] [nvarchar] (6) NULL,
[GP_LIBREAFF2] [nvarchar] (6) NULL,
[GP_LIBREAFF3] [nvarchar] (6) NULL,
[GP_TOTALLINEAIRE] [decimal] (19, 4) NULL,
[GP_TOTALSURFACE] [decimal] (19, 4) NULL,
[GP_TOTALPOIDSBRUT] [decimal] (19, 4) NULL,
[GP_TOTALPOIDSNET] [decimal] (19, 4) NULL,
[GP_TOTALPOIDSDOUA] [decimal] (19, 4) NULL,
[GP_POIDSPESEE] [decimal] (19, 4) NULL,
[GP_TOTALVOLUME] [decimal] (19, 4) NULL,
[GP_TOTALHEURE] [decimal] (19, 4) NULL,
[GP_CREEPAR] [nvarchar] (3) NULL,
[GP_SOCIETE] [nvarchar] (3) NULL,
[GP_ARRONDILIGNE] [nvarchar] (1) NULL,
[GP_SAISIECONTRE] [nvarchar] (1) NULL,
[GP_RIB] [nvarchar] (70) NULL,
[GP_CBINTERNET] [nvarchar] (25) NULL,
[GP_CBLIBELLE] [nvarchar] (35) NULL,
[GP_CBDATEEXPIRE] [nvarchar] (7) NULL,
[GP_TYPECARTE] [nvarchar] (3) NULL,
[GP_CAISSE] [nvarchar] (3) NULL,
[GP_NUMZCAISSE] [int] NULL,
[GP_VENTEACHAT] [nvarchar] (3) NULL,
[GP_ARTICLESLOT] [nvarchar] (1) NULL,
[GP_ACOMPTEDEV] [decimal] (19, 4) NULL,
[GP_ACOMPTE] [decimal] (19, 4) NULL,
[GP_EDITEE] [nvarchar] (1) NULL,
[GP_PERIODE] [int] NULL,
[GP_SEMAINE] [int] NULL,
[GP_PERSPECTIVE] [int] NULL,
[GP_DOMAINE] [nvarchar] (3) NULL,
[GP_PIECEISREGLE] [nvarchar] (1) NULL,
[GP_HRDOSSIER] [nvarchar] (17) NULL,
[GP_GENERAUTO] [nvarchar] (3) NULL,
[GP_DATEDEBUTFAC] [datetime] NULL,
[GP_DATEFINFAC] [datetime] NULL,
[GP_FACREPRISE] [int] NULL,
[GP_RESSOURCE] [nvarchar] (17) NULL,
[GP_AFFAIREDEVIS] [nvarchar] (17) NULL,
[GP_ETATCOMPTA] [nvarchar] (3) NULL,
[GP_DATECOMPTA] [datetime] NULL,
[GP_CODEORDRE] [int] NULL,
[GP_TICKETANNULE] [nvarchar] (1) NULL,
[GP_DETAXE] [nvarchar] (1) NULL,
[GP_NUMDETAXE] [nvarchar] (17) NULL,
[GP_IDENTIFIANTWOT] [int] NULL,
[GP_TARIFSPECIAL] [nvarchar] (17) NULL,
[GP_REPRESENTANT2] [nvarchar] (17) NULL,
[GP_REPRESENTANT3] [nvarchar] (17) NULL,
[GP_NUMEROCONTACT] [int] NULL,
[GP_FERMETUREAFF] [nvarchar] (1) NULL,
[GP_CDETYPE] [nvarchar] (3) NULL,
[GP_ARTICLE] [nvarchar] (35) NULL,
[GP_CODEARTICLE] [nvarchar] (18) NULL,
[GP_PLANIFIABLE] [nvarchar] (1) NULL,
[GP_BLOCNOTE] [ntext] NULL,
[GP_OPERATION] [nvarchar] (17) NULL,
[GP_COMMISSIONR] [decimal] (19, 4) NULL,
[GP_COMMISSIONR2] [decimal] (19, 4) NULL,
[GP_COMMISSIONR3] [decimal] (19, 4) NULL,
[GP_TYPETAUXFIXING] [nvarchar] (4) NULL,
[GP_TAUXFIXING] [decimal] (19, 4) NULL,
[GP_ECHEBLOQUE] [nvarchar] (1) NULL,
[GP_REGIMETAXE2] [nvarchar] (3) NULL,
[GP_REGIMETAXE3] [nvarchar] (3) NULL,
[GP_REGIMETAXE4] [nvarchar] (3) NULL,
[GP_REGIMETAXE5] [nvarchar] (3) NULL,
[GP_PAYS] [nvarchar] (3) NULL,
[GP_TYPEPAYS] [nvarchar] (1) NULL,
[GP_GUIDWOT] [nvarchar] (36) NULL,
[GP_CODEUT] [nvarchar] (17) NULL,
[GP_DATEENLEVEMENT] [datetime] NULL,
[GP_DATEARRIVEETHEO] [datetime] NULL,
[GP_COMPTATIERS] [nvarchar] (3) NULL,
[GP_ARTICLECATA] [nvarchar] (17) NULL,
[GP_HISTORISE] [nvarchar] (1) NULL,
[GP_APPORTEURTIERS] [nvarchar] (17) NULL,
[GP_DEPOTTRANSIT] [nvarchar] (3) NULL,
[GP_REPRISEACTIV] [nvarchar] (3) NULL,
[GP_DATEENGAGEMENT] [datetime] NULL,
[GP_LITIGEFACT] [nvarchar] (1) NULL,
[GP_CODEAGENCE] [nvarchar] (6) NULL,
[GP_MANDAT] [int] NULL
)
GO
PRINT N'Creating primary key [PK_psa_ics_stg_cegid_comp_fra_procure_PIECE] on [psa].[ics_stg_cegid_comp_fra_procure_PIECE]'
GO
ALTER TABLE [psa].[ics_stg_cegid_comp_fra_procure_PIECE] ADD CONSTRAINT [PK_psa_ics_stg_cegid_comp_fra_procure_PIECE] PRIMARY KEY CLUSTERED  ([GP_NUMERO], [GP_SOUCHE])
GO
PRINT N'Creating [psa].[ics_stg_cegid_poly_fra_procure_LIGNE]'
GO
CREATE TABLE [psa].[ics_stg_cegid_poly_fra_procure_LIGNE]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_cegid_poly_fra_procure_LIGNE_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_+ ics_stg_cegid_poly_fra_procure_LIGNE_IsIncomplete] DEFAULT ('N'),
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
[GL_ECARTUNI] [decimal] (15, 9) NULL
)
GO
PRINT N'Creating primary key [PK_psa_ics_stg_cegid_poly_fra_procure_LIGNE] on [psa].[ics_stg_cegid_poly_fra_procure_LIGNE]'
GO
ALTER TABLE [psa].[ics_stg_cegid_poly_fra_procure_LIGNE] ADD CONSTRAINT [PK_psa_ics_stg_cegid_poly_fra_procure_LIGNE] PRIMARY KEY CLUSTERED  ([GL_NUMERO], [GL_NUMLIGNE], [GL_SOUCHE])
GO
PRINT N'Creating [psa].[ics_stg_cegid_poly_fra_procure_PIECE]'
GO
CREATE TABLE [psa].[ics_stg_cegid_poly_fra_procure_PIECE]
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
[IsDeleted] [char] (1) NOT NULL CONSTRAINT [DF_psa_ics_stg_cegid_poly_fra_procure_PIECE_IsDeleted] DEFAULT ('N'),
[IsIncomplete] [char] (1) NOT NULL CONSTRAINT [DF_psa_+ ics_stg_cegid_poly_fra_procure_PIECE_IsIncomplete] DEFAULT ('N'),
[GP_NATUREPIECEG] [nvarchar] (3) NULL,
[GP_DATEPIECE] [datetime] NULL,
[GP_SOUCHE] [nvarchar] (3) NOT NULL,
[GP_PRENUMERO] [nvarchar] (17) NULL,
[GP_NUMERO] [int] NOT NULL,
[GP_NUMPIECE] [nvarchar] (35) NULL,
[GP_INDICEG] [int] NULL,
[GP_REFCOMPTABLE] [nvarchar] (35) NULL,
[GP_REFCPTASTOCK] [nvarchar] (35) NULL,
[GP_REFINTERNE] [nvarchar] (35) NULL,
[GP_REFEXTERNE] [nvarchar] (35) NULL,
[GP_DEVENIRPIECE] [nvarchar] (35) NULL,
[GP_TIERS] [nvarchar] (17) NULL,
[GP_TIERSLIVRE] [nvarchar] (17) NULL,
[GP_TIERSFACTURE] [nvarchar] (17) NULL,
[GP_TIERSPAYEUR] [nvarchar] (17) NULL,
[GP_AFFAIRE] [nvarchar] (17) NULL,
[GP_AFFAIRE1] [nvarchar] (14) NULL,
[GP_AFFAIRE2] [nvarchar] (13) NULL,
[GP_AFFAIRE3] [nvarchar] (12) NULL,
[GP_AVENANT] [nvarchar] (2) NULL,
[GP_REPRESENTANT] [nvarchar] (17) NULL,
[GP_APPORTEUR] [nvarchar] (17) NULL,
[GP_TIERSSAL1] [nvarchar] (17) NULL,
[GP_TIERSSAL2] [nvarchar] (17) NULL,
[GP_TIERSSAL3] [nvarchar] (17) NULL,
[GP_PRESCRIPTEUR] [nvarchar] (17) NULL,
[GP_JALCOMPTABLE] [nvarchar] (3) NULL,
[GP_CREATEUR] [nvarchar] (3) NULL,
[GP_UTILISATEUR] [nvarchar] (3) NULL,
[GP_ETABLISSEMENT] [nvarchar] (3) NULL,
[GP_DEPOT] [nvarchar] (3) NULL,
[GP_DEPOTDEST] [nvarchar] (3) NULL,
[GP_MODEREGLE] [nvarchar] (3) NULL,
[GP_TVAENCAISSEMENT] [nvarchar] (3) NULL,
[GP_REGIMETAXE] [nvarchar] (3) NULL,
[GP_TARIFTIERS] [nvarchar] (3) NULL,
[GP_TYPEREMISE] [nvarchar] (3) NULL,
[GP_PRIORITE] [nvarchar] (3) NULL,
[GP_EXPEDITION] [nvarchar] (3) NULL,
[GP_TRANSPORT] [nvarchar] (3) NULL,
[GP_DEVISE] [nvarchar] (3) NULL,
[GP_FACTUREHT] [nvarchar] (1) NULL,
[GP_VIVANTE] [nvarchar] (1) NULL,
[GP_SUPPRIME] [nvarchar] (1) NULL,
[GP_ETATEXPORT] [nvarchar] (3) NULL,
[GP_ETATVISA] [nvarchar] (3) NULL,
[GP_VISEUR] [nvarchar] (3) NULL,
[GP_DATEVISA] [datetime] NULL,
[GP_DATEEXPORT] [datetime] NULL,
[GP_AFFACTURAGE] [nvarchar] (1) NULL,
[GP_CONTREMARQUE] [nvarchar] (1) NULL,
[GP_NBCOLIS] [int] NULL,
[GP_NBTRANSMIS] [int] NULL,
[GP_TAUXDEV] [decimal] (15, 9) NULL,
[GP_COTATION] [decimal] (15, 9) NULL,
[GP_DATETAUXDEV] [datetime] NULL,
[GP_ESCOMPTE] [decimal] (19, 4) NULL,
[GP_TOTALESC] [decimal] (19, 4) NULL,
[GP_TOTALESCDEV] [decimal] (19, 4) NULL,
[GP_TOTESCTTC] [decimal] (19, 4) NULL,
[GP_TOTESCTTCDEV] [decimal] (19, 4) NULL,
[GP_QUALIFESCOMPTE] [nvarchar] (3) NULL,
[GP_REMISEPIED] [decimal] (19, 4) NULL,
[GP_TOTALREMISE] [decimal] (19, 4) NULL,
[GP_TOTALREMISEDEV] [decimal] (19, 4) NULL,
[GP_TOTREMISETTC] [decimal] (19, 4) NULL,
[GP_TOTREMISETTCDEV] [decimal] (19, 4) NULL,
[GP_TOTALHT] [decimal] (19, 4) NULL,
[GP_TOTALHTDEV] [decimal] (19, 4) NULL,
[GP_TOTALTTC] [decimal] (19, 4) NULL,
[GP_TOTALTTCDEV] [decimal] (19, 4) NULL,
[GP_TOTALQTEFACT] [decimal] (19, 4) NULL,
[GP_TOTALQTESTOCK] [decimal] (19, 4) NULL,
[GP_TOTALBASEREMDEV] [decimal] (19, 4) NULL,
[GP_TOTALBASEREM] [decimal] (19, 4) NULL,
[GP_TOTALBASEESCDEV] [decimal] (19, 4) NULL,
[GP_TOTALBASEESC] [decimal] (19, 4) NULL,
[GP_HEURECREATION] [datetime] NULL,
[GP_DATECREATION] [datetime] NULL,
[GP_DATEMODIF] [datetime] NULL,
[GP_DATEINTEGR] [datetime] NULL,
[GP_DATEREFEXTERNE] [datetime] NULL,
[GP_DATELIVRAISON] [datetime] NULL,
[GP_NUMADRESSELIVR] [int] NULL,
[GP_NUMADRESSEFACT] [int] NULL,
[GP_LIBRETIERS1] [nvarchar] (6) NULL,
[GP_LIBRETIERS2] [nvarchar] (6) NULL,
[GP_LIBRETIERS3] [nvarchar] (6) NULL,
[GP_LIBRETIERS4] [nvarchar] (6) NULL,
[GP_LIBRETIERS5] [nvarchar] (6) NULL,
[GP_LIBRETIERS6] [nvarchar] (6) NULL,
[GP_LIBRETIERS7] [nvarchar] (6) NULL,
[GP_LIBRETIERS8] [nvarchar] (6) NULL,
[GP_LIBRETIERS9] [nvarchar] (6) NULL,
[GP_LIBRETIERSA] [nvarchar] (6) NULL,
[GP_MAJLIBRETIERS] [nvarchar] (13) NULL,
[GP_LIBREPIECE1] [nvarchar] (6) NULL,
[GP_LIBREPIECE2] [nvarchar] (6) NULL,
[GP_LIBREPIECE3] [nvarchar] (6) NULL,
[GP_DATELIBREPIECE1] [datetime] NULL,
[GP_DATELIBREPIECE2] [datetime] NULL,
[GP_DATELIBREPIECE3] [datetime] NULL,
[GP_LIBREAFF1] [nvarchar] (6) NULL,
[GP_LIBREAFF2] [nvarchar] (6) NULL,
[GP_LIBREAFF3] [nvarchar] (6) NULL,
[GP_TOTALLINEAIRE] [decimal] (19, 4) NULL,
[GP_TOTALSURFACE] [decimal] (19, 4) NULL,
[GP_TOTALPOIDSBRUT] [decimal] (19, 4) NULL,
[GP_TOTALPOIDSNET] [decimal] (19, 4) NULL,
[GP_TOTALPOIDSDOUA] [decimal] (19, 4) NULL,
[GP_POIDSPESEE] [decimal] (19, 4) NULL,
[GP_TOTALVOLUME] [decimal] (19, 4) NULL,
[GP_TOTALHEURE] [decimal] (19, 4) NULL,
[GP_CREEPAR] [nvarchar] (3) NULL,
[GP_SOCIETE] [nvarchar] (3) NULL,
[GP_ARRONDILIGNE] [nvarchar] (1) NULL,
[GP_SAISIECONTRE] [nvarchar] (1) NULL,
[GP_RIB] [nvarchar] (70) NULL,
[GP_CBINTERNET] [nvarchar] (25) NULL,
[GP_CBLIBELLE] [nvarchar] (35) NULL,
[GP_CBDATEEXPIRE] [nvarchar] (7) NULL,
[GP_TYPECARTE] [nvarchar] (3) NULL,
[GP_CAISSE] [nvarchar] (3) NULL,
[GP_NUMZCAISSE] [int] NULL,
[GP_VENTEACHAT] [nvarchar] (3) NULL,
[GP_ARTICLESLOT] [nvarchar] (1) NULL,
[GP_ACOMPTEDEV] [decimal] (19, 4) NULL,
[GP_ACOMPTE] [decimal] (19, 4) NULL,
[GP_EDITEE] [nvarchar] (1) NULL,
[GP_PERIODE] [int] NULL,
[GP_SEMAINE] [int] NULL,
[GP_PERSPECTIVE] [int] NULL,
[GP_DOMAINE] [nvarchar] (3) NULL,
[GP_PIECEISREGLE] [nvarchar] (1) NULL,
[GP_HRDOSSIER] [nvarchar] (17) NULL,
[GP_GENERAUTO] [nvarchar] (3) NULL,
[GP_DATEDEBUTFAC] [datetime] NULL,
[GP_DATEFINFAC] [datetime] NULL,
[GP_FACREPRISE] [int] NULL,
[GP_RESSOURCE] [nvarchar] (17) NULL,
[GP_AFFAIREDEVIS] [nvarchar] (17) NULL,
[GP_ETATCOMPTA] [nvarchar] (3) NULL,
[GP_DATECOMPTA] [datetime] NULL,
[GP_CODEORDRE] [int] NULL,
[GP_TICKETANNULE] [nvarchar] (1) NULL,
[GP_DETAXE] [nvarchar] (1) NULL,
[GP_NUMDETAXE] [nvarchar] (17) NULL,
[GP_IDENTIFIANTWOT] [int] NULL,
[GP_TARIFSPECIAL] [nvarchar] (17) NULL,
[GP_REPRESENTANT2] [nvarchar] (17) NULL,
[GP_REPRESENTANT3] [nvarchar] (17) NULL,
[GP_NUMEROCONTACT] [int] NULL,
[GP_FERMETUREAFF] [nvarchar] (1) NULL,
[GP_CDETYPE] [nvarchar] (3) NULL,
[GP_ARTICLE] [nvarchar] (35) NULL,
[GP_CODEARTICLE] [nvarchar] (18) NULL,
[GP_PLANIFIABLE] [nvarchar] (1) NULL,
[GP_BLOCNOTE] [ntext] NULL,
[GP_OPERATION] [nvarchar] (17) NULL,
[GP_COMMISSIONR] [decimal] (19, 4) NULL,
[GP_COMMISSIONR2] [decimal] (19, 4) NULL,
[GP_COMMISSIONR3] [decimal] (19, 4) NULL,
[GP_TYPETAUXFIXING] [nvarchar] (4) NULL,
[GP_TAUXFIXING] [decimal] (19, 4) NULL,
[GP_ECHEBLOQUE] [nvarchar] (1) NULL,
[GP_REGIMETAXE2] [nvarchar] (3) NULL,
[GP_REGIMETAXE3] [nvarchar] (3) NULL,
[GP_REGIMETAXE4] [nvarchar] (3) NULL,
[GP_REGIMETAXE5] [nvarchar] (3) NULL,
[GP_PAYS] [nvarchar] (3) NULL,
[GP_TYPEPAYS] [nvarchar] (1) NULL,
[GP_GUIDWOT] [nvarchar] (36) NULL,
[GP_CODEUT] [nvarchar] (17) NULL,
[GP_DATEENLEVEMENT] [datetime] NULL,
[GP_DATEARRIVEETHEO] [datetime] NULL,
[GP_COMPTATIERS] [nvarchar] (3) NULL,
[GP_ARTICLECATA] [nvarchar] (17) NULL,
[GP_HISTORISE] [nvarchar] (1) NULL,
[GP_APPORTEURTIERS] [nvarchar] (17) NULL,
[GP_DEPOTTRANSIT] [nvarchar] (3) NULL,
[GP_REPRISEACTIV] [nvarchar] (3) NULL,
[GP_DATEENGAGEMENT] [datetime] NULL,
[GP_LITIGEFACT] [nvarchar] (1) NULL,
[GP_CODEAGENCE] [nvarchar] (6) NULL,
[GP_MANDAT] [int] NULL
)
GO
PRINT N'Creating primary key [PK_psa_ics_stg_cegid_poly_fra_procure_PIECE] on [psa].[ics_stg_cegid_poly_fra_procure_PIECE]'
GO
ALTER TABLE [psa].[ics_stg_cegid_poly_fra_procure_PIECE] ADD CONSTRAINT [PK_psa_ics_stg_cegid_poly_fra_procure_PIECE] PRIMARY KEY CLUSTERED  ([GP_NUMERO], [GP_SOUCHE])
GO