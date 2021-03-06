﻿CREATE TABLE [dbo].[PU_PRICELIST_ITEMS] (
    [PRICELIST_ID] [dbo].[D_INT]      NOT NULL,
    [ITEM_NO]      [dbo].[N_C50]      NOT NULL,
    [PRICE]        [dbo].[D_DEC11.4]  NULL,
    [CURRENCY]     [dbo].[N_CURRENCY] NULL,
    [QUANTITY]     [dbo].[D_DEC15,4]  NULL,
    [UOM]          [dbo].[N_C20]      NULL,
    CONSTRAINT [FK_PU_PRICELIST_MATERIALS_PU_PRICELIST] FOREIGN KEY ([PRICELIST_ID]) REFERENCES [dbo].[PU_PRICELIST] ([PRICELIST_ID]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_PU_PRICELIST_ITEMS]
    ON [dbo].[PU_PRICELIST_ITEMS]([PRICELIST_ID] ASC);

