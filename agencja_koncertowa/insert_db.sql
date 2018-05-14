SET client_encoding='utf-8';

insert into miasto(nazwa, kraj) values( 'Gdynia', 'Polska');
insert into miasto(nazwa, kraj) values( 'Gdansk', 'Polska');

insert into sala(adres, miasto, pojemnosc, koszt) values('Bogusławskiego 1','Gdansk', 1000, 12300);
insert into sala(adres, miasto, pojemnosc, koszt) values('Plac Grunwaldzki 1','Gdynia', 1580, 15600);

insert into zespol(nazwa, data_zalozenia, rodzaj_muzyki) values('Wilki', '1991', 'Pop-Rock');
insert into zespol(nazwa, data_zalozenia, rodzaj_muzyki) values('Tabu', '2003', 'Reagge');
insert into zespol(nazwa, data_zalozenia, rodzaj_muzyki) values('Prong', '1986', 'Thrash Metal');
insert into zespol(nazwa, data_zalozenia, rodzaj_muzyki) values('The Qemists', '2004', 'Drum and Bass');
insert into zespol(nazwa, data_zalozenia, rodzaj_muzyki) values('The Weekend', '1998', 'Pop-Rock');
insert into zespol(nazwa, data_zalozenia, rodzaj_muzyki) values('Grammatik', '1997', 'Hip-Hop');

insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(1, 'Robert', 'Gawliński','Wilki',  'wokal');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(2, 'Maciej', 'Gładysz','Wilki',  'gitara');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(3, 'Marcin', 'Ciempiel','Wilki',  'gitara basowa');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(4, 'Hubert', 'Gasiul','Wilki',  'perkusja');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(5, 'Kamil', 'Wójcik','Tabu',  'perkusja');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(6, 'Łukasz', 'Kaczmarzyk','Tabu',  'trąbka');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(7, 'Krzysztof', 'Klosek','Tabu',  'bas');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(8, 'Tommy', 'Victor','Prong',  'wokal');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(9, 'Jason', 'Chrisopher','Prong',  'bas');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(10, 'Art', 'Cruz','Prong',  'perkusja');
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(11, 'Dan', 'Arnold','The Qemists',  NULL );
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(12, 'Leon', 'Harris','The Qemists',  NULL );
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(13,  'Liam', 'Black','The Qemists', NULL );
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(14, 'Andrea', 'Wasse','The Weekend',  'wokal' );
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(15, 'Mike', 'Clive','The Weekend',  'perkusja' );
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(16, 'Lorien', 'Jones','The Weekend',  'bas' );
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(17, 'Leszek', 'Kaźmierczak','Grammatik',  'wokal' );
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(18, 'Marcin', 'Jóźwa','Grammatik',  'wokal' );
insert into artysta(id, imie, nazwisko, nazwa_zesp, instrument) values(19, 'David', 'Byrne',NULL,  'wokal' );

insert into koncert(data, czas_trwania, zespol, id_artysty, sala) values('01.01.2018', 120, 'Wilki', NULL , 'Bogusławskiego 1');
insert into koncert(data, czas_trwania, zespol, id_artysty, sala) values('05.06.2017', 120, 'The Qemists', NULL , 'Plac Grunwaldzki 1');
insert into koncert(data, czas_trwania, zespol, id_artysty, sala) values('01.02.2018', 180, 'Tabu', NULL , 'Plac Grunwaldzki 1');
insert into koncert(data, czas_trwania, zespol, id_artysty, sala) values('22.05.2018', 150, 'Grammatik', NULL , 'Bogusławskiego 1');
insert into koncert(data, czas_trwania, zespol, id_artysty, sala) values('01.02.2018', 60, NULL , 19 , 'Plac Grunwaldzki 1');
insert into koncert(data, czas_trwania, zespol, id_artysty, sala) values('01.02.2018', 60, NULL , 15 , 'Plac Grunwaldzki 1');

insert into bilet(rodzaj, cena, id_koncertu) values('ulgowy', '10', 1);
insert into bilet(rodzaj, cena, id_koncertu) values('normalny', '25', 2);
insert into bilet(rodzaj, cena, id_koncertu) values('normalny', '25', 3);
insert into bilet(rodzaj, cena, id_koncertu) values('normalny', '25', 4);
insert into bilet(rodzaj, cena, id_koncertu) values('ulgowy', '10', 5);
insert into bilet(rodzaj, cena, id_koncertu) values('normalny', '25', 5);

