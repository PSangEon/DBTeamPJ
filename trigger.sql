--------------------------------------------------------
--  파일이 생성됨 - 일요일-12월-05-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger 등급변환
--------------------------------------------------------

  CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."등급변환" 
before update 
ON 고객
FOR EACH ROW
    BEGIN

    if :new.적립금 >= 10000 then
    :new.고객등급 := 'vip';
    elsif :new.적립금 >= 1000 and :new.적립금 < 10000 then
    :new.고객등급 := 'gold';
    elsif :new.적립금 >= 500 and :new.적립금 < 1000 then
    :new.고객등급 := 'silver';
    end if;
END;
/
ALTER TRIGGER "SYSTEM"."등급변환" ENABLE;
