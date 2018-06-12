SELECT adres,nazwa_firmy, nazwa, lokalizacja FROM Organizator
  INNER JOIN koncert ON organizator.id = koncert.id_organizator -- złączenie przez inner join
;

SELECT * FROM Koncert WHERE lokalizacja LIKE 'Gdynia' -- uzycie Like
;

SELECT imie, nazwisko, instrument, nazwa_zespolu FROM muzycy, zespol -- złaczenie zwykłe
  where muzycy.id_zespolu=zespol.id ORDER BY nazwisko
;

SELECT imie, nazwisko, instrument FROM muzycy -- zagnieżdżenie nieskorelowane,
  WHERE instrument IN (                       -- wyświetla muzyków, których instrumenty sie powtarzają
    SELECT instrument FROM muzycy
    GROUP BY instrument HAVING count(instrument) > 1
  )
  ORDER BY instrument
;

SELECT imie, nazwisko FROM muzycy -- zagnieżdżenie skorelowane,
  WHERE NOT EXISTS (              -- pokazuje muzyków nie grających koncertów
    Select * from zespol
      INNER JOIN koncert_zespol zespol2 on zespol.id = zespol2.id_zespol
        AND zespol.id=muzycy.id_zespolu
  )
;

SELECT * FROM Bilety WHERE ilosc IS NOT NULL
;

SELECT * FROM Koncert WHERE data BETWEEN '2018-07-01' AND '2018-07-31' -- sprawdzenie daty
;

SELECT * ,ilosc-cena AS zysk FROM Bilety -- obliczenie arytmetyczne
 where id_organizator = 1 AND ulga IS NULL
;

SELECT DISTINCT nazwa_firmy FROM Organizator -- sprawdzenie unikalności
;

SELECT nazwa_firmy FROM Organizator GROUP BY nazwa_firmy HAVING count (nazwa_firmy) > 1 -- użycie grupowania
;

DELETE FROM Bilety -- sprawdzenie wartości NULL
  WHERE ilosc IS NULL
;

UPDATE Bilety SET cena = cena+100
  WHERE cena IS NOT NULL
;

CREATE VIEW bilet_VIP AS
SELECT rodzaj, cena, ilosc
FROM Bilety
WHERE cena > 600
  WITH CASCADED CHECK OPTION
;

SELECT * FROM bilet_VIP
;
