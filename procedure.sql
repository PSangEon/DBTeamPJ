--------------------------------------------------------
--  ������ ������ - �Ͽ���-12��-05-2021   
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
  Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") 
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
  DELETE SYSTEM."ž�¿���" 
  where �����ȣ=BM;
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
  insert into ����("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ")
  VALUES('NO','���ͳ�',price,to_char(sysdate,'yy-mm-dd,HH24:mi:ss'),tn,pn);
  update �� set "������" = "������"+price/10 where "�޴�����ȣ" = pn;
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
  Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ",������) 
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
  UPDATE SYSTEM."��" SET
  "���̸�"=Uname,"���ּ�"=address,"����"=age
  where "�޴�����ȣ"=Pnum;
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
  UPDATE SYSTEM."��" SET
  "��й�ȣ"=pw
  where "�޴�����ȣ"=Pnum;
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
  UPDATE SYSTEM."����" SET
  ȯ�ҳ���='YES'
  where �޴�����ȣ=Pn and Ƽ�ϰ�����ȣ = (select Ƽ�ϰ�����ȣ from Ƽ�� where Ƽ������ = Ticket);
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
  UPDATE SYSTEM."����" SET
  ȯ�ҳ���='NO'
  where �޴�����ȣ=Pn and Ƽ�ϰ�����ȣ = (select Ƽ�ϰ�����ȣ from Ƽ�� where Ƽ������ = Ticket);
  commit;
  END;

/
