--------------------------------------------------------
--  ������ ������ - �Ͽ���-12��-05-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ��
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."��" 
   (	"�޴�����ȣ" VARCHAR2(20 BYTE), 
	"����" NUMBER, 
	"�����" VARCHAR2(20 BYTE), 
	"���̸�" VARCHAR2(20 BYTE), 
	"���ּ�" VARCHAR2(40 BYTE), 
	"��й�ȣ" VARCHAR2(20 BYTE), 
	"������" NUMBER
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ����
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."����" 
   (	"ȯ�ҳ���" VARCHAR2(20 BYTE), 
	"�߱����" VARCHAR2(20 BYTE), 
	"���Ű���" NUMBER, 
	"�Ǹ��Ͻ�" VARCHAR2(20 BYTE), 
	"Ƽ�ϰ�����ȣ" VARCHAR2(20 BYTE), 
	"�޴�����ȣ" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ��Ʈ����
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."��Ʈ����" 
   (	"��Ʈ���ǰ�����ȣ" VARCHAR2(20 BYTE), 
	"��Ʈ���Ǹ�" VARCHAR2(100 BYTE), 
	"��������" VARCHAR2(20 BYTE), 
	"������۽ð�" VARCHAR2(20 BYTE), 
	"��������ð�" VARCHAR2(20 BYTE), 
	"��ġ" VARCHAR2(40 BYTE), 
	"ž�¿���������" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ž�¿���
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ž�¿���" 
   (	"�����ȣ" VARCHAR2(20 BYTE), 
	"����ð�" VARCHAR2(20 BYTE), 
	"�޴�����ȣ" VARCHAR2(20 BYTE), 
	"��Ʈ���ǰ�����ȣ" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM."��"
SET DEFINE OFF;
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-2231-1132',20,'gold','����ȭ','��õ �߱�','wjdthghk2161',8000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-2041-3314',30,'gold','���ر�','�λ� �߱�','rkdwnsrl356',1000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-3244-2412',40,'gold','�ȼ���','���� ����','dkstjdrl124',1000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-7584-2041',20,'silver','������','�λ� ����','rlawjdtn132',500);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-1555-1132',70,'gold','�����','���� ����','rlejr1123',7000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-3314-1132',10,'silver','�ȿ���','�뱸 �߱�','dks10048',500);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-8872-2412',70,'silver','�迵��','���� �߱�','rladud1123',500);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-2901-1132',80,'silver','�ڼ���','�λ� ������','tnqkr9928',500);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-3088-3314',60,'silver','������','�λ� ������','tjdrkd685',500);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-2412-1132',20,'vip','���强','��õ ������','dlwkd7714',10000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-1234-5678',25,'gold','�̾Ƹ�','�λ� ����','1234',7500);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-4567-8910',10,'silver','�質��','���� ������','1234',500);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-5678-9450',8,'silver','��ڹ�','�뱸 �߱�','1234',500);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-3216-9871',26,'silver','�̹ڻ�','�λ� �߱�','1234',500);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-5648-1550',10,'silver','�����','�λ� �ϱ�','1234',1000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-5888-9210',9,'silver','���ְ�','���� �ϱ�','1234',1000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-9213-5550',10,'gold','�̹���','���� �߱�','12345',1000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-3214-6540',9,'vip','������','�λ� ����','1234',10000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-6547-9870',11,'gold','�̸��','��õ ����','1234',1000);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-1230-0123',65,'gold','�ڱ���','���� �߱�','1234',100);
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","��й�ȣ","������") values ('010-5092-2112',25,'vip','���翵','�λ� ����','pw001',17900);
REM INSERTING into SYSTEM."����"
SET DEFINE OFF;
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',5000,'21-12-05,17:07:32','T0007','010-5092-2112');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',15000,'21-12-05,17:07:35','T0009','010-5092-2112');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',15000,'21-12-05,17:07:37','T0009','010-5092-2112');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',10000,'21-12-05,17:07:40','T0008','010-5092-2112');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',30000,'21-12-05,17:10:12','T0006','010-2231-1132');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',40000,'21-12-05,17:10:15','T0003','010-2231-1132');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',5000,'21-12-05,17:11:17','T0007','010-1555-1132');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',30000,'21-12-05,17:11:19','T0002','010-1555-1132');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',30000,'21-12-05,17:11:20','T0002','010-1555-1132');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',30000,'21-12-05,17:11:35','T0002','010-1234-5678');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',5000,'21-12-05,17:11:37','T0007','010-1234-5678');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',30000,'21-12-05,17:11:39','T0006','010-1234-5678');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',30000,'21-12-05,18:20:04','T0006','010-5092-2112');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',10000,'21-12-05,18:20:06','T0008','010-5092-2112');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',15000,'21-12-05,18:20:07','T0009','010-5092-2112');
REM INSERTING into SYSTEM."��Ʈ����"
SET DEFINE OFF;
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT001','�ʹ� ��庥��','�޹�','10:00','20:00','�۷ι����','NO');
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT002','VR��','�','10:00','20:00','�Ƹ޸�ĭ ��庥ó','NO');
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT003','Ű�� Ŀ����','�','10:00','18:00','�Ƹ޸�ĭ ��庥ó','NO');
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT004','�����̵� �� �ڸ���','�','10:00','18:00','�Ƹ޸�ĭ ��庥ó','NO');
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT005','���� ������','�','10:00','20:00','�Ƹ޸�ĭ ��庥ó','YES');
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT006','�Ѹ� ���� Ʈ����','�޹�','10:00','20:00','�Ƹ޸�ĭ ��庥ó','YES');
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT007','������','�','10:00','18:00','��������','NO');
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT008','�κ�Ʈī','�','10:00','18:00','��������','NO');
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT009','�ö��� ����ť','�','10:00','18:00','��������','NO');
Insert into SYSTEM."��Ʈ����" ("��Ʈ���ǰ�����ȣ","��Ʈ���Ǹ�","��������","������۽ð�","��������ð�","��ġ","ž�¿���������") values ('AT010','T �ͽ�������','�','10:00','22:00','�����Ǿ� ��庥ó','YES');
REM INSERTING into SYSTEM."ž�¿���"
SET DEFINE OFF;
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0001','21-10-9 11:30','010-2231-1132','AT010');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0002','21-10-24 13:30','010-2041-3314','AT010');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0003','21-10-2 13:00','010-3244-2412','AT010');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0004','21-10-5 14:30','010-7584-2041','AT006');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0005','21-10-9 13:30','010-1555-1132','AT006');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0006','21-10-29 12:00','010-3314-1132','AT006');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0007','21-11-9 11:30','010-8872-2412','AT002');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0008','21-10-24 13:30','010-2901-1132','AT002');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0009','21-12-18 13:00','010-3088-3314','AT001');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0010','21-10-5 10:30','010-2412-1132','AT004');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0011','21-10-9 13:30','010-1234-5678','AT004');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0012','21-11-20 12:00','010-4567-8910','AT007');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0013','21-10-9 11:30','010-5678-9450','AT009');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0014','21-10-24 13:30','010-3216-9871','AT009');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0015','21-10-20 11:00','010-5648-1550','AT010');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0016','21-10-5 14:30','010-5888-9210','AT003');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0018','21-10-21 12:00','010-3214-6540','AT005');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0019','21-10-9 11:30','010-6547-9870','AT005');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0020','21-11-8 10:00','010-1230-0123','AT006');
--------------------------------------------------------
--  DDL for Index ��_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."��_PK" ON "SYSTEM"."��" ("�޴�����ȣ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ����_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."����_PK" ON "SYSTEM"."����" ("�Ǹ��Ͻ�", "Ƽ�ϰ�����ȣ", "�޴�����ȣ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ��Ʈ����_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."��Ʈ����_PK" ON "SYSTEM"."��Ʈ����" ("��Ʈ���ǰ�����ȣ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index ž�¿���_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."ž�¿���_PK" ON "SYSTEM"."ž�¿���" ("�����ȣ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Trigger ��޺�ȯ
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."��޺�ȯ" 
before update 
ON ��
FOR EACH ROW
    BEGIN

    if :new.������ >= 10000 then
    :new.����� := 'vip';
    elsif :new.������ >= 1000 and :new.������ < 10000 then
    :new.����� := 'gold';
    elsif :new.������ >= 500 and :new.������ < 1000 then
    :new.����� := 'silver';
    end if;
END;
/
ALTER TRIGGER "SYSTEM"."��޺�ȯ" ENABLE;
--------------------------------------------------------
--  Constraints for Table ��
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."��" MODIFY ("�޴�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("����" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("�����" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("���̸�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("���ּ�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("��й�ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" ADD CONSTRAINT "��_PK" PRIMARY KEY ("�޴�����ȣ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ����
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."����" MODIFY ("�Ǹ��Ͻ�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."����" MODIFY ("Ƽ�ϰ�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."����" MODIFY ("�޴�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."����" ADD CONSTRAINT "����_PK" PRIMARY KEY ("�Ǹ��Ͻ�", "Ƽ�ϰ�����ȣ", "�޴�����ȣ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ��Ʈ����
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."��Ʈ����" MODIFY ("��Ʈ���ǰ�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��Ʈ����" MODIFY ("��Ʈ���Ǹ�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��Ʈ����" MODIFY ("��������" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��Ʈ����" ADD CONSTRAINT "��Ʈ����_PK" PRIMARY KEY ("��Ʈ���ǰ�����ȣ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ž�¿���
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ž�¿���" MODIFY ("�޴�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ž�¿���" MODIFY ("�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ž�¿���" MODIFY ("����ð�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ž�¿���" MODIFY ("��Ʈ���ǰ�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ž�¿���" ADD CONSTRAINT "ž�¿���_PK" PRIMARY KEY ("�����ȣ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ž�¿���
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ž�¿���" ADD CONSTRAINT "ž�¿���_FK1" FOREIGN KEY ("��Ʈ���ǰ�����ȣ")
	  REFERENCES "SYSTEM"."��Ʈ����" ("��Ʈ���ǰ�����ȣ") ENABLE;
  ALTER TABLE "SYSTEM"."ž�¿���" ADD CONSTRAINT "ž�¿���_FK2" FOREIGN KEY ("�޴�����ȣ")
	  REFERENCES "SYSTEM"."��" ("�޴�����ȣ") ENABLE;
