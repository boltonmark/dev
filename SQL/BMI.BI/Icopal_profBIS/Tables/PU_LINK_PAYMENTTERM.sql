﻿CREATE TABLE [dbo].[PU_LINK_PAYMENTTERM] (
    [PAYMENTTERM_ID] [dbo].[D_INT]  NOT NULL,
    [SYSTEM_ID]      [dbo].[D_INT]  NOT NULL,
    [PAYMENT_TERM]   [dbo].[N_C20]  NOT NULL,
    [CREATE_BY]      [dbo].[N_USER] NULL,
    [CREATE_DATE]    [dbo].[D_DATE] NULL,
    CONSTRAINT [PK_PU_LINK_PAYMENTTERM] PRIMARY KEY CLUSTERED ([PAYMENTTERM_ID] ASC, [SYSTEM_ID] ASC, [PAYMENT_TERM] ASC),
    CONSTRAINT [FK_PU_LINK_PAYMENTTERM_PU_PAYMENTTERM] FOREIGN KEY ([PAYMENTTERM_ID]) REFERENCES [dbo].[PU_PAYMENTTERM] ([PAYMENTTERM_ID]) ON DELETE CASCADE
);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PU_LINK_PAYMENTTERM]
    ON [dbo].[PU_LINK_PAYMENTTERM]([SYSTEM_ID] ASC, [PAYMENT_TERM] ASC);

