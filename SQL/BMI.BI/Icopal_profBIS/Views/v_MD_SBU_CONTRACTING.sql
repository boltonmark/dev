﻿

CREATE view [dbo].[v_MD_SBU_CONTRACTING] as
SELECT SBU, REGION_ID, SBU_NAME
FROM MD_SBU
where IPROBIS_CONTRACTING = 'Y'