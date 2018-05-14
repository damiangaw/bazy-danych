# wyświetlenie artystów i informacji o ich zespołach
select imie, nazwisko, instrument, data_zalozenia, nazwa, rodzaj_muzyki from artysta, zespol
  where artysta.nazwa_zesp = zespol.nazwa;

# wyświetlenie artystów solo i w zespołach grających w danej sali
select imie, nazwisko, nazwa_zesp, sala from artysta inner join koncert
on koncert.zespol = artysta.nazwa_zesp or koncert.id_artysty = artysta.id
order by sala;

#wyświetlenie artystów grających na perkusji
select * from artysta
where instrument like '%perkusja%';

#wyświetla liczbę artystów w danym zespole
select nazwa_zesp, count(nazwa_zesp) as ilosc_artystow from artysta
group by nazwa_zesp
having nazwa_zesp is not null;

# calkowity czas koncertów w danej sali
select sum(czas_trwania) as calkowity_czas from koncert
where sala like '%Plac Grunwaldzki 1%';

# dopisanie instrumentu artyscie
update artysta
set instrument = 'DJ'
where id = 11;
