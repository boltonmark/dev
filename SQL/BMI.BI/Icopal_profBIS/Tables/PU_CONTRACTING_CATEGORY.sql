﻿CREATE TABLE [dbo].[PU_CONTRACTING_CATEGORY] (
    [CATEGORY_ID]   [dbo].[D_INT]  NOT NULL,
    [CATEGORY_NAME] [dbo].[N_C100] NULL,
    [PARENT_ID]     [dbo].[D_INT]  NULL,
    [CREATE_BY]     [dbo].[N_USER] NULL,
    [CREATE_DATE]   [dbo].[D_DATE] NULL,
    [UPDATE_BY]     [dbo].[N_USER] NULL,
    [UPDATE_DATE]   [dbo].[D_DATE] NULL,
    CONSTRAINT [PK_PU_CONTRACTING_CATEGORY_1] PRIMARY KEY CLUSTERED ([CATEGORY_ID] ASC),
    CONSTRAINT [FK_PU_CONTRACTING_CATEGORY_PU_CATEGORY] FOREIGN KEY ([PARENT_ID]) REFERENCES [dbo].[PU_CONTRACTING_CATEGORY] ([CATEGORY_ID])
);

