﻿CREATE TABLE [dbo].[FLEXMENUITEMS] (
    [MENUNAME]    [dbo].[N_C100] NOT NULL,
    [MENUITEM]    [dbo].[N_C20]  NOT NULL,
    [SUBMENUNAME] [dbo].[N_C100] NULL,
    [PROGRAMNAME] [dbo].[N_C100] NULL,
    [PARAMETERS]  [dbo].[N_MEMO] NULL,
    [CAPTION]     [dbo].[N_C100] NULL,
    [UPDATE_BY]   [dbo].[N_USER] NULL,
    [UPDATE_DATE] [dbo].[D_DATE] NULL,
    CONSTRAINT [PK_FLEXMENUITEMS] PRIMARY KEY CLUSTERED ([MENUNAME] ASC, [MENUITEM] ASC),
    CONSTRAINT [FK_FLEXMENUITEMS_FLEXMENUS] FOREIGN KEY ([MENUNAME]) REFERENCES [dbo].[FLEXMENUS] ([MENUNAME]) ON DELETE CASCADE ON UPDATE CASCADE
);

