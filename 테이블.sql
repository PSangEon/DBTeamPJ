--------------------------------------------------------
--  파일이 생성됨 - 금요일-12월-03-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table 탑승예약
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."탑승예약" 
   (	"예약번호" VARCHAR2(20 BYTE), 
	"예약시간" VARCHAR2(20 BYTE), 
	"인원수" NUMBER, 
	"휴대폰번호" VARCHAR2(20 BYTE), 
	"어트랙션고유번호" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table 티켓
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."티켓" 
   (	"티켓고유번호" VARCHAR2(20 BYTE), 
	"티켓가격" NUMBER, 
	"티켓종류" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table 어트랙션
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."어트랙션" 
   (	"어트랙션고유번호" VARCHAR2(20 BYTE), 
	"어트랙션명" VARCHAR2(100 BYTE), 
	"운휴정보" VARCHAR2(20 BYTE), 
	"운행시작시간" VARCHAR2(20 BYTE), 
	"운행종료시간" VARCHAR2(20 BYTE), 
	"위치" VARCHAR2(40 BYTE), 
	"탑승예약제유무" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table 구매
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."구매" 
   (	"환불내역" VARCHAR2(20 BYTE), 
	"발권장소" VARCHAR2(20 BYTE), 
	"구매가격" NUMBER, 
	"판매일시" DATE, 
	"티켓고유번호" VARCHAR2(20 BYTE), 
	"휴대폰번호" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Table 고객
--------------------------------------------------------

  CREATE TABLE "SYSTEM"."고객" 
   (	"휴대폰번호" VARCHAR2(20 BYTE), 
	"나이" NUMBER, 
	"고객등급" VARCHAR2(20 BYTE), 
	"고객이름" VARCHAR2(20 BYTE), 
	"고객주소" VARCHAR2(40 BYTE), 
	"아이디" VARCHAR2(20 BYTE), 
	"비밀번호" VARCHAR2(20 BYTE)
   ) PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
REM INSERTING into SYSTEM."탑승예약"
SET DEFINE OFF;
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0001','21-10-9 11:30',3,'010-2231-1132','AT010');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0002','21-10-24 13:30',2,'010-2041-3314','AT010');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0003','21-10-2 13:00',2,'010-3244-2412','AT010');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0004','21-10-5 14:30',3,'010-7584-2041','AT006');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0005','21-10-9 13:30',2,'010-1555-1132','AT006');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0006','21-10-29 12:00',2,'010-3314-1132','AT006');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0007','21-11-9 11:30',1,'010-8872-2412','AT002');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0008','21-10-24 13:30',5,'010-2901-1132','AT002');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0009','21-12-18 13:00',6,'010-3088-3314','AT001');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0010','21-10-5 10:30',2,'010-2412-1132','AT004');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0011','21-10-9 13:30',2,'010-1234-5678','AT004');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0012','21-11-20 12:00',3,'010-4567-8910','AT007');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0013','21-10-9 11:30',4,'010-5678-9450','AT009');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0014','21-10-24 13:30',4,'010-3216-9871','AT009');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0015','21-10-20 11:00',3,'010-5648-1550','AT010');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0016','21-10-5 14:30',3,'010-5888-9210','AT003');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0017','21-10-9 13:30',2,'010-9213-5550','AT004');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0018','21-10-21 12:00',2,'010-3214-6540','AT005');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0019','21-10-9 11:30',2,'010-6547-9870','AT005');
Insert into SYSTEM."탑승예약" ("예약번호","예약시간","인원수","휴대폰번호","어트랙션고유번호") values ('B0020','21-11-8 10:00',2,'010-1230-0123','AT006');
REM INSERTING into SYSTEM."티켓"
SET DEFINE OFF;
Insert into SYSTEM."티켓" ("티켓고유번호","티켓가격","티켓종류") values ('T0001',20000,'성인1회권');
Insert into SYSTEM."티켓" ("티켓고유번호","티켓가격","티켓종류") values ('T0002',30000,'성인5회권');
Insert into SYSTEM."티켓" ("티켓고유번호","티켓가격","티켓종류") values ('T0003',40000,'성인종일권');
Insert into SYSTEM."티켓" ("티켓고유번호","티켓가격","티켓종류") values ('T0004',10000,'어린이1회권');
Insert into SYSTEM."티켓" ("티켓고유번호","티켓가격","티켓종류") values ('T0005',20000,'어린이5회권');
Insert into SYSTEM."티켓" ("티켓고유번호","티켓가격","티켓종류") values ('T0006',30000,'어린이종일권');
Insert into SYSTEM."티켓" ("티켓고유번호","티켓가격","티켓종류") values ('T0007',5000,'경로1회권');
Insert into SYSTEM."티켓" ("티켓고유번호","티켓가격","티켓종류") values ('T0008',10000,'경로5회권');
Insert into SYSTEM."티켓" ("티켓고유번호","티켓가격","티켓종류") values ('T0009',15000,'경로종일권');
REM INSERTING into SYSTEM."어트랙션"
SET DEFINE OFF;
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT001','터닝 어드벤쳐','휴무','10:00','20:00','글로벌페어','NO');
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT002','VR존','운영','10:00','20:00','아메리칸 어드벤처','NO');
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT003','키즈 커버리','운영','10:00','18:00','아메리칸 어드벤처','NO');
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT004','프라이드 인 코리아','운영','10:00','18:00','아메리칸 어드벤처','NO');
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT005','더블 락스핀','운영','10:00','20:00','아메리칸 어드벤처','YES');
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT006','롤링 엑스 트레인','휴무','10:00','20:00','아메리칸 어드벤처','YES');
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT007','피터팬','운영','10:00','18:00','매직랜드','NO');
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT008','로보트카','운영','10:00','18:00','매직랜드','NO');
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT009','플라잉 레스큐','운영','10:00','18:00','매직랜드','NO');
Insert into SYSTEM."어트랙션" ("어트랙션고유번호","어트랙션명","운휴정보","운행시작시간","운행종료시간","위치","탑승예약제유무") values ('AT010','T 익스프레스','운영','10:00','22:00','유러피언 어드벤처','YES');
REM INSERTING into SYSTEM."구매"
SET DEFINE OFF;
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',20000,to_date('21/10/02','RR/MM/DD'),'T0001','010-2231-1132');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',30000,to_date('21/10/04','RR/MM/DD'),'T0002','010-2041-3314');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('YES','인터넷',40000,to_date('21/10/29','RR/MM/DD'),'T0003','010-3244-2412');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',40000,to_date('21/10/24','RR/MM/DD'),'T0003','010-7584-2041');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',40000,to_date('21/10/13','RR/MM/DD'),'T0003','010-1234-5678');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',40000,to_date('21/10/25','RR/MM/DD'),'T0003','010-3216-9871');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',5000,to_date('21/10/21','RR/MM/DD'),'T0007','010-8872-2412');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',10000,to_date('21/10/05','RR/MM/DD'),'T0008','010-2901-1132');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('YES','인터넷',15000,to_date('21/10/09','RR/MM/DD'),'T0009','010-3088-3314');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',20000,to_date('21/10/21','RR/MM/DD'),'T0005','010-3314-1132');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',20000,to_date('21/10/23','RR/MM/DD'),'T0005','010-4567-8910');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',20000,to_date('21/10/04','RR/MM/DD'),'T0005','010-5678-9450');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',10000,to_date('21/10/29','RR/MM/DD'),'T0004','010-5648-1550');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',20000,to_date('21/10/24','RR/MM/DD'),'T0005','010-5888-9210');
Insert into SYSTEM."구매" ("환불내역","발권장소","구매가격","판매일시","티켓고유번호","휴대폰번호") values ('NO','인터넷',30000,to_date('21/10/13','RR/MM/DD'),'T0006','010-9213-5550');
REM INSERTING into SYSTEM."고객"
SET DEFINE OFF;
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-2231-1132',20,'gold','정소화','인천 중구','sdqqqq2231','wjdthghk2161');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-2041-3314',30,'gold','강준기','부산 중구','ssdqqfff3124','rkdwnsrl356');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-3244-2412',40,'gold','안성기','서울 동구','fsadqwdaf2442','dkstjdrl124');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-7584-2041',20,'silver','김정수','부산 서구','skkkgjq9910','rlawjdtn132');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-1555-1132',70,'silver','정기덕','광주 서구','rlejr102','rlejr1123');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-3314-1132',10,'silver','안영남','대구 중구','dudska3324','dks10048');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-8872-2412',70,'silver','김영지','김해 중구','dudwl0019','rladud1123');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-2901-1132',80,'silver','박수지','부산 연제구','tnwl1132','tnqkr9928');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-3088-3314',60,'silver','강성주','부산 동래구','tjdwn10','tjdrkd685');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-2412-1132',20,'vip','이장성','인천 수영구','wkdtjd9912','dlwkd7714');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-1234-5678',25,'gold','이아름','부산 서구','dkfma97','1234');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-4567-8910',10,'silver','김나박','서울 강서구','skqkr10','1234');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-5678-9450',8,'silver','김박박','대구 중구','qkrqkr08','1234');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-3216-9871',26,'silver','이박사','부산 중구','qkrtk26','1234');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-5648-1550',10,'silver','강우수','부산 북구','dntn31','1234');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-5888-9210',9,'silver','배최고','서울 북구','chlrh33','1234');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-9213-5550',10,'silver','이미자','대전 중구','alwk50','1234');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-3214-6540',9,'vip','지금자','부산 진구','rmawk40','1234');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-6547-9870',11,'gold','이명박','인천 서구','audqkr60','1234');
Insert into SYSTEM."고객" ("휴대폰번호","나이","고객등급","고객이름","고객주소","아이디","비밀번호") values ('010-1230-0123',65,'gold','박근혜','서울 중구','rmsgP65','1234');
--------------------------------------------------------
--  DDL for Index 탑승예약_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."탑승예약_PK" ON "SYSTEM"."탑승예약" ("예약번호") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index 티켓_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."티켓_PK" ON "SYSTEM"."티켓" ("티켓고유번호") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index 어트랙션_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."어트랙션_PK" ON "SYSTEM"."어트랙션" ("어트랙션고유번호") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index 구매_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."구매_PK" ON "SYSTEM"."구매" ("티켓고유번호", "휴대폰번호") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index 고객_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "SYSTEM"."고객_PK" ON "SYSTEM"."고객" ("휴대폰번호") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table 탑승예약
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."탑승예약" MODIFY ("휴대폰번호" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."탑승예약" MODIFY ("예약번호" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."탑승예약" MODIFY ("예약시간" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."탑승예약" MODIFY ("인원수" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."탑승예약" MODIFY ("어트랙션고유번호" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."탑승예약" ADD CONSTRAINT "탑승예약_PK" PRIMARY KEY ("예약번호")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table 티켓
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."티켓" MODIFY ("티켓고유번호" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."티켓" MODIFY ("티켓가격" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."티켓" MODIFY ("티켓종류" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."티켓" ADD CONSTRAINT "티켓_PK" PRIMARY KEY ("티켓고유번호")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table 어트랙션
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."어트랙션" MODIFY ("어트랙션고유번호" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."어트랙션" MODIFY ("어트랙션명" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."어트랙션" MODIFY ("운휴정보" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."어트랙션" ADD CONSTRAINT "어트랙션_PK" PRIMARY KEY ("어트랙션고유번호")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table 구매
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."구매" MODIFY ("환불내역" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."구매" MODIFY ("발권장소" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."구매" MODIFY ("구매가격" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."구매" MODIFY ("판매일시" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."구매" MODIFY ("티켓고유번호" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."구매" MODIFY ("휴대폰번호" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."구매" ADD CONSTRAINT "구매_PK" PRIMARY KEY ("티켓고유번호", "휴대폰번호")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table 고객
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."고객" MODIFY ("휴대폰번호" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."고객" MODIFY ("나이" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."고객" MODIFY ("고객등급" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."고객" MODIFY ("고객이름" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."고객" MODIFY ("고객주소" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."고객" MODIFY ("아이디" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."고객" MODIFY ("비밀번호" NOT NULL ENABLE);
  ALTER TABLE "SYSTEM"."고객" ADD CONSTRAINT "고객_PK" PRIMARY KEY ("휴대폰번호")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table 탑승예약
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."탑승예약" ADD CONSTRAINT "탑승예약_FK1" FOREIGN KEY ("어트랙션고유번호")
	  REFERENCES "SYSTEM"."어트랙션" ("어트랙션고유번호") ENABLE;
  ALTER TABLE "SYSTEM"."탑승예약" ADD CONSTRAINT "탑승예약_FK2" FOREIGN KEY ("휴대폰번호")
	  REFERENCES "SYSTEM"."고객" ("휴대폰번호") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table 구매
--------------------------------------------------------

  ALTER TABLE "SYSTEM"."구매" ADD CONSTRAINT "구매_FK1" FOREIGN KEY ("티켓고유번호")
	  REFERENCES "SYSTEM"."티켓" ("티켓고유번호") ENABLE;
  ALTER TABLE "SYSTEM"."구매" ADD CONSTRAINT "구매_FK2" FOREIGN KEY ("휴대폰번호")
	  REFERENCES "SYSTEM"."고객" ("휴대폰번호") ENABLE;
