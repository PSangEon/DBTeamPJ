--------------------------------------------------------
--  ������ ������ - �ݿ���-12��-03-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ž�¿���
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."ž�¿���" 
   (	"�����ȣ" VARCHAR2(20 BYTE), 
	"����ð�" VARCHAR2(20 BYTE), 
	"�ο���" NUMBER, 
	"�޴�����ȣ" VARCHAR2(20 BYTE), 
	"��Ʈ���ǰ�����ȣ" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table Ƽ��
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."Ƽ��" 
   (	"Ƽ�ϰ�����ȣ" VARCHAR2(20 BYTE), 
	"Ƽ�ϰ���" NUMBER, 
	"Ƽ������" VARCHAR2(20 BYTE)
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
--  DDL for Table ����
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."����" 
   (	"ȯ�ҳ���" VARCHAR2(20 BYTE), 
	"�߱����" VARCHAR2(20 BYTE), 
	"���Ű���" NUMBER, 
	"�Ǹ��Ͻ�" DATE, 
	"Ƽ�ϰ�����ȣ" VARCHAR2(20 BYTE), 
	"�޴�����ȣ" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table ��
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."��" 
   (	"�޴�����ȣ" VARCHAR2(20 BYTE), 
	"����" NUMBER, 
	"�����" VARCHAR2(20 BYTE), 
	"���̸�" VARCHAR2(20 BYTE), 
	"���ּ�" VARCHAR2(40 BYTE), 
	"���̵�" VARCHAR2(20 BYTE), 
	"��й�ȣ" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM."ž�¿���"
SET DEFINE OFF;
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0001','21-10-9 11:30',3,'010-2231-1132','AT010');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0002','21-10-24 13:30',2,'010-2041-3314','AT010');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0003','21-10-2 13:00',2,'010-3244-2412','AT010');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0004','21-10-5 14:30',3,'010-7584-2041','AT006');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0005','21-10-9 13:30',2,'010-1555-1132','AT006');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0006','21-10-29 12:00',2,'010-3314-1132','AT006');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0007','21-11-9 11:30',1,'010-8872-2412','AT002');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0008','21-10-24 13:30',5,'010-2901-1132','AT002');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0009','21-12-18 13:00',6,'010-3088-3314','AT001');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0010','21-10-5 10:30',2,'010-2412-1132','AT004');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0011','21-10-9 13:30',2,'010-1234-5678','AT004');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0012','21-11-20 12:00',3,'010-4567-8910','AT007');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0013','21-10-9 11:30',4,'010-5678-9450','AT009');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0014','21-10-24 13:30',4,'010-3216-9871','AT009');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0015','21-10-20 11:00',3,'010-5648-1550','AT010');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0016','21-10-5 14:30',3,'010-5888-9210','AT003');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0017','21-10-9 13:30',2,'010-9213-5550','AT004');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0018','21-10-21 12:00',2,'010-3214-6540','AT005');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0019','21-10-9 11:30',2,'010-6547-9870','AT005');
Insert into SYSTEM."ž�¿���" ("�����ȣ","����ð�","�ο���","�޴�����ȣ","��Ʈ���ǰ�����ȣ") values ('B0020','21-11-8 10:00',2,'010-1230-0123','AT006');
REM INSERTING into SYSTEM."Ƽ��"
SET DEFINE OFF;
Insert into SYSTEM."Ƽ��" ("Ƽ�ϰ�����ȣ","Ƽ�ϰ���","Ƽ������") values ('T0001',20000,'����1ȸ��');
Insert into SYSTEM."Ƽ��" ("Ƽ�ϰ�����ȣ","Ƽ�ϰ���","Ƽ������") values ('T0002',30000,'����5ȸ��');
Insert into SYSTEM."Ƽ��" ("Ƽ�ϰ�����ȣ","Ƽ�ϰ���","Ƽ������") values ('T0003',40000,'�������ϱ�');
Insert into SYSTEM."Ƽ��" ("Ƽ�ϰ�����ȣ","Ƽ�ϰ���","Ƽ������") values ('T0004',10000,'���1ȸ��');
Insert into SYSTEM."Ƽ��" ("Ƽ�ϰ�����ȣ","Ƽ�ϰ���","Ƽ������") values ('T0005',20000,'���5ȸ��');
Insert into SYSTEM."Ƽ��" ("Ƽ�ϰ�����ȣ","Ƽ�ϰ���","Ƽ������") values ('T0006',30000,'������ϱ�');
Insert into SYSTEM."Ƽ��" ("Ƽ�ϰ�����ȣ","Ƽ�ϰ���","Ƽ������") values ('T0007',5000,'���1ȸ��');
Insert into SYSTEM."Ƽ��" ("Ƽ�ϰ�����ȣ","Ƽ�ϰ���","Ƽ������") values ('T0008',10000,'���5ȸ��');
Insert into SYSTEM."Ƽ��" ("Ƽ�ϰ�����ȣ","Ƽ�ϰ���","Ƽ������") values ('T0009',15000,'������ϱ�');
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
REM INSERTING into SYSTEM."����"
SET DEFINE OFF;
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',20000,to_date('21/10/02','RR/MM/DD'),'T0001','010-2231-1132');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',30000,to_date('21/10/04','RR/MM/DD'),'T0002','010-2041-3314');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('YES','���ͳ�',40000,to_date('21/10/29','RR/MM/DD'),'T0003','010-3244-2412');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',40000,to_date('21/10/24','RR/MM/DD'),'T0003','010-7584-2041');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',40000,to_date('21/10/13','RR/MM/DD'),'T0003','010-1234-5678');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',40000,to_date('21/10/25','RR/MM/DD'),'T0003','010-3216-9871');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',5000,to_date('21/10/21','RR/MM/DD'),'T0007','010-8872-2412');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',10000,to_date('21/10/05','RR/MM/DD'),'T0008','010-2901-1132');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('YES','���ͳ�',15000,to_date('21/10/09','RR/MM/DD'),'T0009','010-3088-3314');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',20000,to_date('21/10/21','RR/MM/DD'),'T0005','010-3314-1132');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',20000,to_date('21/10/23','RR/MM/DD'),'T0005','010-4567-8910');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',20000,to_date('21/10/04','RR/MM/DD'),'T0005','010-5678-9450');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',10000,to_date('21/10/29','RR/MM/DD'),'T0004','010-5648-1550');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',20000,to_date('21/10/24','RR/MM/DD'),'T0005','010-5888-9210');
Insert into SYSTEM."����" ("ȯ�ҳ���","�߱����","���Ű���","�Ǹ��Ͻ�","Ƽ�ϰ�����ȣ","�޴�����ȣ") values ('NO','���ͳ�',30000,to_date('21/10/13','RR/MM/DD'),'T0006','010-9213-5550');
REM INSERTING into SYSTEM."��"
SET DEFINE OFF;
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-2231-1132',20,'gold','����ȭ','��õ �߱�','sdqqqq2231','wjdthghk2161');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-2041-3314',30,'gold','���ر�','�λ� �߱�','ssdqqfff3124','rkdwnsrl356');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-3244-2412',40,'gold','�ȼ���','���� ����','fsadqwdaf2442','dkstjdrl124');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-7584-2041',20,'silver','������','�λ� ����','skkkgjq9910','rlawjdtn132');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-1555-1132',70,'silver','�����','���� ����','rlejr102','rlejr1123');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-3314-1132',10,'silver','�ȿ���','�뱸 �߱�','dudska3324','dks10048');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-8872-2412',70,'silver','�迵��','���� �߱�','dudwl0019','rladud1123');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-2901-1132',80,'silver','�ڼ���','�λ� ������','tnwl1132','tnqkr9928');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-3088-3314',60,'silver','������','�λ� ������','tjdwn10','tjdrkd685');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-2412-1132',20,'vip','���强','��õ ������','wkdtjd9912','dlwkd7714');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-1234-5678',25,'gold','�̾Ƹ�','�λ� ����','dkfma97','1234');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-4567-8910',10,'silver','�質��','���� ������','skqkr10','1234');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-5678-9450',8,'silver','��ڹ�','�뱸 �߱�','qkrqkr08','1234');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-3216-9871',26,'silver','�̹ڻ�','�λ� �߱�','qkrtk26','1234');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-5648-1550',10,'silver','�����','�λ� �ϱ�','dntn31','1234');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-5888-9210',9,'silver','���ְ�','���� �ϱ�','chlrh33','1234');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-9213-5550',10,'silver','�̹���','���� �߱�','alwk50','1234');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-3214-6540',9,'vip','������','�λ� ����','rmawk40','1234');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-6547-9870',11,'gold','�̸��','��õ ����','audqkr60','1234');
Insert into SYSTEM."��" ("�޴�����ȣ","����","�����","���̸�","���ּ�","���̵�","��й�ȣ") values ('010-1230-0123',65,'gold','�ڱ���','���� �߱�','rmsgP65','1234');
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
--  DDL for Index Ƽ��_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."Ƽ��_PK" ON "SYSTEM"."Ƽ��" ("Ƽ�ϰ�����ȣ") 
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
--  DDL for Index ����_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."����_PK" ON "SYSTEM"."����" ("Ƽ�ϰ�����ȣ", "�޴�����ȣ") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
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
--  Constraints for Table ž�¿���
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."ž�¿���" MODIFY ("�޴�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ž�¿���" MODIFY ("�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ž�¿���" MODIFY ("����ð�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ž�¿���" MODIFY ("�ο���" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ž�¿���" MODIFY ("��Ʈ���ǰ�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."ž�¿���" ADD CONSTRAINT "ž�¿���_PK" PRIMARY KEY ("�����ȣ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table Ƽ��
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."Ƽ��" MODIFY ("Ƽ�ϰ�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."Ƽ��" MODIFY ("Ƽ�ϰ���" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."Ƽ��" MODIFY ("Ƽ������" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."Ƽ��" ADD CONSTRAINT "Ƽ��_PK" PRIMARY KEY ("Ƽ�ϰ�����ȣ")
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
--  Constraints for Table ����
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."����" MODIFY ("ȯ�ҳ���" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."����" MODIFY ("�߱����" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."����" MODIFY ("���Ű���" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."����" MODIFY ("�Ǹ��Ͻ�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."����" MODIFY ("Ƽ�ϰ�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."����" MODIFY ("�޴�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."����" ADD CONSTRAINT "����_PK" PRIMARY KEY ("Ƽ�ϰ�����ȣ", "�޴�����ȣ")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ��
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."��" MODIFY ("�޴�����ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("����" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("�����" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("���̸�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("���ּ�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("���̵�" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" MODIFY ("��й�ȣ" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."��" ADD CONSTRAINT "��_PK" PRIMARY KEY ("�޴�����ȣ")
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
--------------------------------------------------------
--  Ref Constraints for Table ����
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."����" ADD CONSTRAINT "����_FK1" FOREIGN KEY ("Ƽ�ϰ�����ȣ")
	  REFERENCES "SYSTEM"."Ƽ��" ("Ƽ�ϰ�����ȣ") ENABLE;
  ALTER TABLE "SYSTEM"."����" ADD CONSTRAINT "����_FK2" FOREIGN KEY ("�޴�����ȣ")
	  REFERENCES "SYSTEM"."��" ("�޴�����ȣ") ENABLE;
