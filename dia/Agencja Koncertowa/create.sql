create table festiwal
(
    nazwa                       serial                    ,
    data                        DATE              NOT NULL,
    CONSTRAINT                  festiwal_nazwa_pk PRIMARY KEY(nazwa)
);
create table koncert
(
    nr_sceny                    serial                    ,
    data                        DATE              NOT NULL,
    rodzaj_muzyki               VARCHAR(32)               ,
    czas_trwania                CHAR(4)                   ,
    CONSTRAINT                  koncert_nr_sceny_pk PRIMARY KEY(nr_sceny)
);
create table bilet
(
    numer                       serial                    ,
    rodzaj                      VARCHAR(8)                ,
    cena                        numeric(7,2)              ,
    CONSTRAINT                  bilet_numer_pk PRIMARY KEY(numer)
);
create table miasto
(
    kod                         SERIAL                    ,
    nazwa                       VARCHAR(32)               ,
    kraj                        VARCHAR(32)               ,
    CONSTRAINT                  miasto_kod_pk PRIMARY KEY(kod)
);
create table artysta
(
    id                          SERIAL                    ,
    imie                        VARCHAR(32)               ,
    nazwisko                    VARCHAR(32)               ,
    instrument                  VARCHAR(32)               ,
    CONSTRAINT                  artysta_id_pk PRIMARY KEY(id)
);
create table zespol
(
    nazwa                       SERIAL                    ,
    data_zalozenia              DATE                      ,
    CONSTRAINT                  zespol_nazwa_pk PRIMARY KEY(nazwa)
);

-- drop table zespol;
-- drop table artysta;
-- drop table miasto;
-- drop table bilet;
-- drop table koncert;
-- drop table festiwal;
