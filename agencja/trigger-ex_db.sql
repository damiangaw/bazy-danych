UPDATE Bilety
set cena = 1000
Where rodzaj = 'VIP';

UPDATE Bilety
set cena = 450
Where rodzaj = 'trybuna C';

SELECT *
  From Bilety_zmiana_ceny
  ;
