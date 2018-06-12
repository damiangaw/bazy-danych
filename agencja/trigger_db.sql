SET client_encoding TO 'UTF-8';
CREATE LANGUAGE plpgsql
;
CREATE TABLE Bilety_zmiana_ceny (
id serial primary key,
ulga varchar(60),
rodzaj double precision,
ilosc int,
cena int
);

CREATE OR REPLACE FUNCTION log_zmiana_bilety_cena()
  RETURNS trigger as $$

BEGIN
IF new.cena <> old.cena THEN
  INSERT INTO Bilety_zmiana_ceny(ulga, rodzaj, ilosc, cena)
    VALUES (old.ulga,old.rodzaj,old.ilosc,old.cena,now());
end if;

RETURN new;
end;
$$ language 'plpgsql'
;

  CREATE TRIGGER zmiana_ceny
  BEFORE UPDATE
  ON Bilety
  FOR EACH ROW
  EXECUTE PROCEDURE log_zmiana_bilety_cena();
