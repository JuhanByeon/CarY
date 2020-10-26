create user carY identified by tiger;

--carinfo에 category 정보 합친 view
  CREATE OR REPLACE FORCE VIEW "CARY"."CARINFO_VIEW2" ("B_NAME", "M_NAME", "S_NAME", "IDX", "CAR_NUM", "CAR_SIZE", "CAR_AGE", "CAR_COLOR", "CAR_CC", "CAR_KM", "CAR_GEAR", "CAR_FUEL", "CAR_SEAT", "CAR_TEST", "CAR_DATE", "CAR_YN", "CAR_PRICE", "CAR_HS", "B_CODE", "S_CODE", "M_CODE", "MEMBER_IDX", "CAR_IMG1", "CAR_IMG2", "CAR_IMG3", "CAR_INTRO", "CAR_VIEW") AS 
  select b.b_name, m.m_name, d.s_name, c."IDX",c."CAR_NUM",c."CAR_SIZE",c."CAR_AGE",c."CAR_COLOR",c."CAR_CC",c."CAR_KM",c."CAR_GEAR",c."CAR_FUEL",c."CAR_SEAT",c."CAR_TEST",c."CAR_DATE",c."CAR_YN",c."CAR_PRICE",c."CAR_HS",c."B_CODE",c."S_CODE",c."M_CODE",c."MEMBER_IDX",c."CAR_IMG1",c."CAR_IMG2",c."CAR_IMG3",c."CAR_INTRO",c."CAR_VIEW" from brand b join model m
  on b.b_code = m.b_code
  join detailmodel d
  on m.m_code = d.m_code
  join carinfo c
  on d.s_code = c.s_code;
  

--category 항목들만 합친 view
CREATE OR REPLACE FORCE VIEW "CARY"."CARINFO_VIEW" ("B_CODE", "M_CODE", "S_CODE", "B_NAME", "M_NAME", "S_NAME") AS 
  select bm.b_code, bm.m_code, d.s_code, bm.b_name, bm.m_name, d.s_name from detailmodel d join (select b.b_code, m.m_code, b.b_name, m.m_name from brand b join model m on b.b_code = m.b_code) bm on d.m_code = bm.m_code;
  

create sequence member_seq nocache;
create sequence carinfo_seq nocache;
create sequence cs_seq nocache;