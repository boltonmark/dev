﻿CREATE TABLE [dbo].[PU_COMPLIANCE_RESULT] (
    [COMPLIANCE_ID]                [dbo].[D_INT]     NOT NULL,
    [COMPLIANCE_YEAR]              [dbo].[D_INT]     NOT NULL,
    [BONUS_AMOUNT]                 [dbo].[D_DEC12.2] NULL,
    [BONUS_AMOUNT_GROUP]           [dbo].[D_DEC12.2] NULL,
    [BONUS_REMARK]                 [dbo].[N_C100]    NULL,
    [BONUS_NEXT_STEP_PCT]          [dbo].[D_DEC12.2] NULL,
    [BONUS_NEXT_STEP_AMOUNT]       [dbo].[D_DEC12.2] NULL,
    [BONUS_NEXT_STEP_AMOUNT_GROUP] [dbo].[D_DEC12.2] NULL,
    [SPEND_AMOUNT]                 [dbo].[D_DEC12.2] NULL,
    [SPEND_AMOUNT_GROUP]           [dbo].[D_DEC12.2] NULL,
    CONSTRAINT [PK_PU_COMPLIANCE_RESULT] PRIMARY KEY CLUSTERED ([COMPLIANCE_ID] ASC, [COMPLIANCE_YEAR] ASC),
    CONSTRAINT [FK_PU_COMPLIANCE_RESULT_PU_COMPLIANCE] FOREIGN KEY ([COMPLIANCE_ID]) REFERENCES [dbo].[PU_COMPLIANCE] ([COMPLIANCE_ID])
);


GO
CREATE NONCLUSTERED INDEX [IX_PU_COMPLIANCE_RESULT]
    ON [dbo].[PU_COMPLIANCE_RESULT]([COMPLIANCE_ID] ASC);

