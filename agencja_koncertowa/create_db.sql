create table miasto
(
    nazwa                       VARCHAR(32)    NOT NULL   ,
    kraj                        VARCHAR(32)    NOT NULL   ,
    CONSTRAINT                  miasto_nazwa_pk PRIMARY KEY(nazwa)
);
create table sala
(
    adres                       varchar(100)   NOT NULL   ,
    miasto                      VARCHAR(32)    NOT NULL   ,
    pojemnosc                   INT            NOT NULL   ,
    koszt                       INT            NOT NULL   ,
    CONSTRAINT                  sala_adres_pk PRIMARY KEY (adres),
    CONSTRAINT                  sala_miasto_fk FOREIGN KEY (miasto)
                                  REFERENCES miasto(nazwa)
);
create table zespol
(
    nazwa                       varchar(32)   NOT NULL    ,
    data_zalozenia              char(4)                   ,
    rodzaj_muzyki               char(24)                  ,
    CONSTRAINT                  zespol_nazwa_pk PRIMARY KEY(nazwa)
);
create table artysta
(
    id                          INT           NOT NULL    ,
    imie                        VARCHAR(32)   NOT NULL    ,
    nazwisko                    VARCHAR(32)   NOT NULL    ,
    nazwa_zesp                  varchar(32)               ,
    instrument                  VARCHAR(32)               ,
    CONSTRAINT                  artysta_id_pk PRIMARY KEY(id),
    CONSTRAINT                  zespol_fk FOREIGN KEY (nazwa_zesp)
                                  REFERENCES zespol(nazwa)
);
create table koncert
(
    id_koncertu                 SERIAL         NOT NULL   ,
    data                        DATE           NOT NULL   ,
    czas_trwania                numeric(4)     NOT NULL   ,
    zespol                      varchar(32)               ,
    id_artysty                  INT                       ,
    sala                        varchar(100)   NOT NULL   ,
    constraint                  koncert_id_pk PRIMARY KEY (id_koncertu),
    constraint                  koncert_zespol_fk foreign key (zespol)
                                  references zespol(nazwa),
    constraint                  koncert_id_artysty_fk foreign key (id_artysty)
                                  references artysta(id),
    constraint                  koncert_sala_fk foreign key (sala)
                                  references sala(adres)
);
create table bilet
(
    numer                       serial         NOT NULL   ,
    rodzaj                      VARCHAR(8)     NOT NULL   ,
    cena                        numeric(7,2)   NOT NULL   ,
    id_koncertu                 INT            NOT NULL   ,
    CONSTRAINT                  bilet_id_koncert_fk FOREIGN KEY (id_koncertu)
                                  REFERENCES koncert(id_koncertu)
);
create table artysta_koncert
(
    id_artysty                  INT                       ,
    nazwa_zesp                  varchar(32)               ,
    id_koncertu                 INT              NOT NULL ,
    constraint                  artysta_koncert_id_artysty_fk foreign key (id_artysty)
                                  references artysta(id) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT                  artysta_koncert_nazwa_zesp_fk FOREIGN KEY (nazwa_zesp)
                                  REFERENCES zespol(nazwa) ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT                  artysta_koncert_id_koncertu_fk FOREIGN KEY (id_koncertu)
                                  REFERENCES koncert(id_koncertu) ON UPDATE CASCADE ON DELETE CASCADE
);
-- DROP TABLE artysta_koncert;
-- DROP TABLE bilet;
-- DROP TABLE koncert;
-- DROP TABLE artysta;
-- DROP TABLE zespol;
-- DROP TABLE sala;
-- DROP TABLE miasto;