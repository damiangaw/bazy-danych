set client_encoding='utf-8';

-- DODAWANIE ORGANIZATORÓW
insert into Organizator(ID, adres, nazwa_firmy) values(1, 'Północna 4, 66-470 Kostrzyn nad Odrą', 'Eventim');
insert into Organizator(ID, adres, nazwa_firmy) values(2, 'LOTNISKO GDYNIA-KOSAKOWO', 'Orange');
insert into Organizator(ID, adres, nazwa_firmy) values(3, 'TEREN WYŚCIGÓW KONNYCH, WARSZAWA - SŁUŻEWIEC', 'Orange');
insert into Organizator(ID, adres, nazwa_firmy) values(4, 'Kołobrzeska 34, Kołobrzeg', 'ActesEvent');
insert into Organizator(ID, adres, nazwa_firmy) values(5, 'Ergo Arena', 'Polisound');
insert into Organizator(ID, adres, nazwa_firmy) values(6, 'Tauron Arena', 'Eventim');
insert into Organizator(ID, adres, nazwa_firmy) values(7, 'Klub Muzyczny B17', 'Music Nation');
insert into Organizator(ID, adres, nazwa_firmy) values(8, 'Hala Widowiskowa Spodek', 'Soundcheck');
insert into Organizator(ID, adres, nazwa_firmy) values(9, 'Boom, Belgia', 'Q-Dance');

-- DODAWANIE BILETÓW
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 1, 20000, 150, 'normalny', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 1, 8500, 200, 'ulgowy', 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 2, 1700, 100, 'niepełnosprawni', 'trybuna A');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 1, 500, 800, NULL, 'VIP');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 1, 1000, 500, NULL, 'Early Entrance');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 3, NULL, 450, 'studencki', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 2, 1400, 350, 'pierwsza pula', 'trybuna C');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 2, 2000, 300, NULL, 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 3, 50000, 220, NULL, 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 1, 20000, 150, 'normalny', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 1, 8500, 200, 'ulgowy', 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 2, 1700, 100, 'niepełnosprawni', 'trybuna A');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 1, 500, 800, NULL, 'VIP');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 1, 1000, 500, NULL, 'Early Entrance');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 3, NULL, 450, 'studencki', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 2, 1400, 350, 'pierwsza pula', 'trybuna C');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 2, 2000, 300, NULL, 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 3, 50000, 220, NULL, 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 1, 20000, 150, 'normalny', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 1, 8500, 200, 'ulgowy', 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 2, 1700, 100, 'niepełnosprawni', 'trybuna A');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 1, 500, 800, NULL, 'VIP');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 1, 1000, 500, NULL, 'Early Entrance');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 3, NULL, 450, 'studencki', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 2, 1400, 350, 'pierwsza pula', 'trybuna C');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 2, 2000, 300, NULL, 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 3, 50000, 220, NULL, 'płyta');

-- DODAWANIE ZESPOŁÓW
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
   values('Soulfly', 'Heavy-Metal', '1997');
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
   values('Lao Che', 'Rock Alternatywny', '1999');

-- DODAWANIE MUZYKÓW
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
       values('Max', 'Cavalera', 1, 'gitara', 15000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
       values('Marc', 'Rizzo', 1,'perkusja', 12000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
       values('Tony', 'Campos', 1,'gitara-basowa', 11000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
       values('Rafał', 'Borycki', 2,'gitara', 4000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
       values('Mariusz', 'Denst', 2,'perkusja', 3500);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
       values('Hubert', 'Dobaczewski', 2,'trąbka', 3750);

-- DODAWANIE KONCERTÓW
insert into Koncert(id, nazwa, lokalizacja, data, godzina, ID_organizator)
  values(1, 'Przystanek Woodstock','Kostrzyn','2018-07-29','15:00', 1);
insert into Koncert(id, nazwa, lokalizacja, data, godzina, ID_organizator)
  values(2, 'Opener Festiwal','Gdynia','2018-06-30','19:00', 2);
insert into Koncert(id, nazwa, lokalizacja, data, godzina, ID_organizator)
  values(3, 'Orange Warsaw','Warszawa','2018-05-27','19:00', 3);
insert into Koncert(id, nazwa, lokalizacja, data, godzina, ID_organizator)
  values(4, 'Sunrise Festival','Kołobrzeg','2018-07-27','17:30', 4);
insert into Koncert(id, nazwa, lokalizacja, data, godzina, ID_organizator)
  values(5, 'Red Hot Chili Peppers','Gdańsk','2018-08-30','20:00', 5);
insert into Koncert(id, nazwa, lokalizacja, data, godzina, ID_organizator)
  values(6, 'Pearl Jam','Kraków','2018-07-13','21:00', 6);
insert into Koncert(id, nazwa, lokalizacja, data, godzina, ID_organizator)
  values(7, 'AC/DC','Poznań','2018-08-25','20:15', 7);
insert into Koncert(id, nazwa, lokalizacja, data, godzina, ID_organizator)
  values(8, 'Scooter','Katowice','2018-06-19','22:00', 8);
insert into Koncert(id, nazwa, lokalizacja, data, godzina, ID_organizator)
  values(9, 'Tomorrowland','Boom','2018-07-28','16:00',9);

-- DODAWANIE ZESPOŁÓW GRAJĄCYCH DANY KONCERT
insert into Koncert_Zespol(ID_koncert, ID_zespol) values(1, 1); -- koncert woodstock, 1 z kolei, zespol pierwszy soulfly


