﻿CREATE TABLE [dbo].[KPI_SHIFT_REPORT] (
    [REPORT_ID]      [dbo].[D_INT]       NOT NULL,
    [KEY_ID]         [dbo].[D_INT]       NULL,
    [REPORT_TYPE_ID] [dbo].[D_INT]       NULL,
    [CATEGORY_ID_1]  [dbo].[D_INT]       NULL,
    [CATEGORY_ID_2]  [dbo].[D_INT]       NULL,
    [CATEGORY_ID_3]  [dbo].[D_INT]       NULL,
    [CATEGORY_ID_4]  [dbo].[D_INT]       NULL,
    [VALUE]          [dbo].[D_DEC7.2]    NULL,
    [COUNT]          [dbo].[D_INT]       NULL,
    [DESCRIPTION]    [dbo].[N_C100]      NULL,
    [UPDATE_BY]      [dbo].[N_USER]      NULL,
    [UPDATE_DATE]    [dbo].[D_DATE]      NULL,
    [CREATE_BY]      [dbo].[N_USER]      NULL,
    [CREATE_DATE]    [dbo].[D_DATE]      NULL,
    [MANUAL_INPUT]   [dbo].[N_BOOLEAN_Y] NULL,
    CONSTRAINT [PK_KPI_SHIFT_REPORT] PRIMARY KEY CLUSTERED ([REPORT_ID] ASC),
    CONSTRAINT [FK_KPI_SHIFT_REPORT_KPI_REPORT_CATEGORY] FOREIGN KEY ([CATEGORY_ID_1]) REFERENCES [dbo].[KPI_REPORT_CATEGORY] ([REPORT_CATEGORY_ID]),
    CONSTRAINT [FK_KPI_SHIFT_REPORT_KPI_REPORT_TYPE] FOREIGN KEY ([REPORT_TYPE_ID]) REFERENCES [dbo].[KPI_REPORT_TYPE] ([REPORT_TYPE_ID])
);



