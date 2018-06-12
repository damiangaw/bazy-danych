-- grupowanie i warunki dotyczące grup, funkcje agregujące,
-- zapytania zagnieżdżone (zagnieżdżenia nieskorelowane) cz.1:

-- sprawdź czy nazwiska powtarzają się, wypisz dane klientów
-- o powtarzających się nazwiskach
SELECT nazwisko FROM klient
;
SELECT DISTINCT nazwisko FROM klient
;
SELECT nazwisko,count (nazwisko) FROM klient GROUP BY nazwisko
;
SELECT nazwisko FROM klient GROUP BY nazwisko HAVING count (nazwisko) > 1
;
SELECT imie, nazwisko, miasto FROM klient
   WHERE nazwisko IN (
      SELECT nazwisko FROM klient
      GROUP BY nazwisko HAVING count (nazwisko) > 1
      )
;

-- zad P6: sprawdź czy ceny towarów powtarzają się;
SELECT cena,count (cena) FROM towar GROUP BY cena HAVING count (cena) > 1
;
-- wypisz opis i ceny towarów o powtarzających się cenach;
SELECT opis, cena FROM towar
   WHERE cena IN (
      SELECT cena FROM towar
      GROUP BY cena HAVING count (cena) > 1
      )
;
-- to samo dla kosztu.
SELECT opis, cena FROM towar
   WHERE koszt IN (
      SELECT koszt FROM towar
      GROUP BY koszt HAVING count (koszt) > 1
      )
;
