--------------------------------------------------------
--  ������ ������ - �Ͽ���-12��-05-2021   
--------------------------------------------------------
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
