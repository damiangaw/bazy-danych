set client_encoding='utf-8';

-- DODAWANIE ORGANIZATORÓW
insert into Organizator(adres, nazwa_firmy) values('Północna 4, 66-470 Kostrzyn nad Odrą', 'Eventim');
insert into Organizator(adres, nazwa_firmy) values('LOTNISKO GDYNIA-KOSAKOWO', 'Orange');
insert into Organizator(adres, nazwa_firmy) values('TEREN WYŚCIGÓW KONNYCH, WARSZAWA - SŁUŻEWIEC', 'Orange');
insert into Organizator(adres, nazwa_firmy) values('Kołobrzeska 34, Kołobrzeg', 'ActesEvent');
insert into Organizator(adres, nazwa_firmy) values('Ergo Arena', 'Polisound');
insert into Organizator(adres, nazwa_firmy) values('Tauron Arena', 'Eventim');
insert into Organizator(adres, nazwa_firmy) values('Klub Muzyczny B17', 'Music Nation');
insert into Organizator(adres, nazwa_firmy) values('Hala Widowiskowa Spodek', 'Soundcheck');
insert into Organizator(adres, nazwa_firmy) values('Boom, Belgia', 'Q-Dance');

-- DODAWANIE BILETÓW
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 1, 20000, 150, 'normalny', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 1, 8500, 200, 'ulgowy', 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 2, 1700, 100, 'niepełnosprawni', 'trybuna A');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(4, 1, 500, 800, NULL, 'VIP');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(5, 1, 1000, 500, NULL, 'Early Entrance');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(6, 3, NULL, 450, 'studencki', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(7, 2, 1400, 350, 'pierwsza pula', 'trybuna C');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(8, 2, 2000, 300, NULL, 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(9, 3, 50000, 220, NULL, 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(9, 1, 20000, 150, 'normalny', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(8, 1, 8500, 200, 'ulgowy', 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(7, 2, 1700, 100, 'niepełnosprawni', 'trybuna A');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(6, 1, 500, 800, NULL, 'VIP');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(5, 1, 1000, 500, NULL, 'Early Entrance');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(4, 3, NULL, 450, 'studencki', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 2, 1400, 350, 'pierwsza pula', 'trybuna C');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 2, 2000, 300, NULL, 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 3, 50000, 220, NULL, 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(2, 1, 20000, 150, 'normalny', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(3, 1, 8500, 200, 'ulgowy', 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(4, 2, 1700, 100, 'niepełnosprawni', 'trybuna A');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(5, 1, 500, 800, NULL, 'VIP');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(6, 1, 1000, 500, NULL, 'Early Entrance');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(7, 3, NULL, 450, 'studencki', 'płyta');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(8, 2, 1400, 350, 'pierwsza pula', 'trybuna C');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(9, 2, 2000, 300, NULL, 'golden circle');
insert into Bilety(ID_organizator, pula, ilosc, cena, ulga, rodzaj) values(1, 3, 50000, 220, NULL, 'płyta');

-- DODAWANIE ZESPOŁÓW
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
   values('Gojira', 'Heavy-Metal', '1997');
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
   values('Gorillaz', 'Rock Alternatywny', '1999');
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
    values('Muse', 'Rock', '1997');
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
    values('Umc Umc', 'Muzyka elektroniczna', '1999');
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
    values('Red Hot Chili Peppers', 'Rock Alternatywny', '1999');
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
    values('Pearl Jam', 'Rock Alternatywny', '1999');
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
    values('AC/DC', 'Rock n roll', '1999');
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
    values('Scooter', 'Turbo Techno', '1999');
insert into Zespol(nazwa_zespolu, gatunek_muzyczny, rok_zalozenia)
    values('Martin Garrix', 'Techno', '1999');

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
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Mark', 'Caller', 3, 'gitara', 15000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Martin', 'Tetris', 3,'perkusja', 12000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Thomas', 'Kante', 3,'gitara-basowa', 11000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Radek', 'Borek', 4,'gitara', 4000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Marek', 'Leja', 5,'perkusja', 3500);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Oskar', 'Boczny', 5,'trąbka', 3750);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
       values('Piotr', 'Lewski', 5,'gitara', 4000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
       values('Marcin', 'Dawek', 6,'perkusja', 3500);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
       values('Miłosz', 'Robczyński', 6,'trąbka', 3750);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Mateo', 'Ceballo', 6, 'gitara', 15000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Peter', 'Robson', 7,'perkusja', 12000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Wilfred', 'Bucket', 7,'gitara-basowa', 11000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Marek', 'Domek', 7,'gitara', 4000);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Scooter', 'Scooter', 8,'wokal/elektronika', 3500);
insert into Muzycy(imie, nazwisko, id_zespolu, instrument, wynagrodzenie)
        values('Martin', 'Gariix', 9,'wokal', 3750);

-- DODAWANIE KONCERTÓW
insert into Koncert(nazwa, lokalizacja, data, godzina, ID_organizator)
  values('Przystanek Woodstock','Kostrzyn','2018-07-29','15:00', 1);
insert into Koncert(nazwa, lokalizacja, data, godzina, ID_organizator)
  values('Opener Festiwal','Gdynia','2018-06-30','19:00', 2);
insert into Koncert(nazwa, lokalizacja, data, godzina, ID_organizator)
  values('Orange Warsaw','Warszawa','2018-05-27','19:00', 3);
insert into Koncert(nazwa, lokalizacja, data, godzina, ID_organizator)
  values('Sunrise Festival','Kołobrzeg','2018-07-27','17:30', 4);
insert into Koncert(nazwa, lokalizacja, data, godzina, ID_organizator)
  values('Red Hot Chili Peppers','Gdańsk','2018-08-30','20:00', 5);
insert into Koncert(nazwa, lokalizacja, data, godzina, ID_organizator)
  values('Pearl Jam','Kraków','2018-07-13','21:00', 6);
insert into Koncert(nazwa, lokalizacja, data, godzina, ID_organizator)
  values('AC/DC','Poznań','2018-08-25','20:15', 7);
insert into Koncert(nazwa, lokalizacja, data, godzina, ID_organizator)
  values('Scooter','Katowice','2018-06-19','22:00', 8);
insert into Koncert(nazwa, lokalizacja, data, godzina, ID_organizator)
  values('Tomorrowland','Boom','2018-07-28','16:00',9);

-- DODAWANIE ZESPOŁÓW GRAJĄCYCH DANY KONCERT
insert into Koncert_Zespol(ID_koncert, ID_zespol) values(1, 1); -- koncert woodstock, 1 z kolei, zespol pierwszy gojira
insert into Koncert_Zespol(ID_koncert, ID_zespol) values(2, 2);
insert into Koncert_Zespol(ID_koncert, ID_zespol) values(3, 3);
insert into Koncert_Zespol(ID_koncert, ID_zespol) values(4, 4);
insert into Koncert_Zespol(ID_koncert, ID_zespol) values(5, 5);
insert into Koncert_Zespol(ID_koncert, ID_zespol) values(6, 6);
insert into Koncert_Zespol(ID_koncert, ID_zespol) values(7, 7);
