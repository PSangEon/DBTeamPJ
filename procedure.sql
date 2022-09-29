--------------------------------------------------------
--  파일이 생성됨 - 일요일-12월-05-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Procedure BOOKMAKE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."BOOKMAKE" 
(
 BN VARCHAR2,
 booktime VARCHAR2,
 Pnum VARCHAR2,
 atn VARCHAR2
 )
 is
 begin
  Insert into SYSTEM."탑승예약" ("예약번호","예약시간","휴대폰번호","어트랙션고유번호") 
  values (BN,booktime,Pnum,atn);
  commit;
  END;

/
--------------------------------------------------------
--  DDL for Procedure BOOKTABLECANCEL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."BOOKTABLECANCEL" 
(
 BM VARCHAR2
 )
is
 begin
  DELETE SYSTEM."탑승예약" 
  where 예약번호=BM;
  commit;
  END;

/
--------------------------------------------------------
--  DDL for Procedure BUY_TICKET
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."BUY_TICKET" 
(
 price number,
 tn varchar2,
 pn varchar2
 )
is
 begin
  insert into 구매("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호")
  VALUES('NO','인터넷',price,to_char(sysdate,'yy-mm-dd,HH24:mi:ss'),tn,pn);
  update 고객 set "적립금" = "적립금"+price/10 where "휴대폰번호" = pn;
  commit;
  END;

/
--------------------------------------------------------
--  DDL for Procedure INMEM
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."INMEM" 
(
 Pnum VARCHAR2,
 age number,
 Uname VARCHAR2,
 address VARCHAR2,

 pw VARCHAR2
 )
 is
 begin
  Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","비밀번호",적립금) 
  values (Pnum,age,'bronze',Uname,address,pw,0);
  commit;
  END;

/
--------------------------------------------------------
--  DDL for Procedure RESETUSER
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."RESETUSER" 
(
 Pnum VARCHAR2,
 age number,
 Uname VARCHAR2,
 address VARCHAR2
 )
is
 begin
  UPDATE SYSTEM."고객" SET
  "고객이름"=Uname,"고객주소"=address,"나이"=age
  where "휴대폰번호"=Pnum;
  commit;
  END;

/
--------------------------------------------------------
--  DDL for Procedure RESETUSERPW
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."RESETUSERPW" 
(
 Pnum VARCHAR2,
 pw VARCHAR2
 )
is
 begin
  UPDATE SYSTEM."고객" SET
  "비밀번호"=pw
  where "휴대폰번호"=Pnum;
  commit;
  END;

/
--------------------------------------------------------
--  DDL for Procedure TICKETTABLEDELETE
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."TICKETTABLEDELETE" 
(
 Ticket VARCHAR2,
 Pn VARCHAR2
 )
is
 begin
  UPDATE SYSTEM."구매" SET
  환불내역='YES'
  where 휴대폰번호=Pn and 티켓고유번호 = (select 티켓고유번호 from 티켓 where 티켓종류 = Ticket);
  commit;
  END;

/
--------------------------------------------------------
--  DDL for Procedure TICKETTABLEDELETECANCEL
--------------------------------------------------------
set define off;

  CREATE OR REPLACE NONEDITIONABLE PROCEDURE "SYSTEM"."TICKETTABLEDELETECANCEL" 
(
 Ticket VARCHAR2,
 Pn VARCHAR2
 )
is
 begin
  UPDATE SYSTEM."구매" SET
  환불내역='NO'
  where 휴대폰번호=Pn and 티켓고유번호 = (select 티켓고유번호 from 티켓 where 티켓종류 = Ticket);
  commit;
  END;

/
