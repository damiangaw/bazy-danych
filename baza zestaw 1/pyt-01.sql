SET client_encoding='utf-8';
-- wyświetl zawartość każdej z tabel, uporządkuj w/g atrybutu
SELECT * FROM klient
;
SELECT * FROM klient ORDER BY nazwisko
;
SELECT * FROM towar
;
SELECT * FROM towar ORDER BY cena DESC
;

-- zadanie P1: wyświetl zawartość powyższych tabel uporządkowanych
-- odpowiednio według miast, opisów;
SELECT * FROM klient ORDER BY miasto
;
SELCT * FROM towar ORDER BY opis
;
-- wyświetl zawartość tabeli zamówień uporządkowanej według kosztów
-- i tabeli kodów kreskowych uporządkowanej według kodów.
SELECT * FROM zamowienie ORDER BY koszt_wysylki
;
SELECT * FROM kod_kreskowy ORDER BY kod
;
