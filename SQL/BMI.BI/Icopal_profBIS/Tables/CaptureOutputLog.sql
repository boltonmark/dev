﻿CREATE TABLE [tSQLt].[CaptureOutputLog] (
    [Id]         INT            IDENTITY (1, 1) NOT NULL,
    [OutputText] NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_CaptureOutputLog] PRIMARY KEY CLUSTERED ([Id] ASC)
);

