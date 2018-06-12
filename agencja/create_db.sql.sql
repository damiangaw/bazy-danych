create table Organizator
(
    ID                          serial            PRIMARY KEY,
    adres                       varchar(64)       NOT NULL,
    nazwa_firmy                 varchar(64)       NOT NULL
);
create table Bilety
(
    ID_Bilety                   serial            PRIMARY KEY,
    ID_organizator              INT               NOT NULL ,
    pula                        int               NOT NULL,
    ilosc                       int                       ,
    ulga                        varchar(32)               ,
    rodzaj                      varchar(32)       NOT NULL,
    cena                        int               NOT NULL,
    CONSTRAINT                  ID_organizator_fk FOREIGN KEY (ID_organizator)
                                REFERENCES Organizator(ID) ON DELETE CASCADE
);
create table Zespol
(
    id                          serial            primary key,
    nazwa_zespolu               varchar(64)       NOT NULL,
    gatunek_muzyczny            varchar(64)       NOT NULL,
    rok_zalozenia               int               NOT NULL,
    CONSTRAINT                  nazwa_zespolu_un UNIQUE (nazwa_zespolu)
);
create table Muzycy
(
    ID_Muzyka                   serial            primary key,
    imie                        VARCHAR(64)       NOT NULL,
    nazwisko                    VARCHAR(64)       NOT NULL,
    ID_zespolu                  INT                       , -- dlatego, ze muzyk moze byc w jednym zespole, ale zespol moze miec wielu muzyków
    instrument                  varchar(64)               ,
    wynagrodzenie               int               NOT NULL,
    CONSTRAINT                  id_zespolu_fk FOREIGN KEY (ID_zespolu)
                                REFERENCES Zespol(id)
);
create table Koncert
(
    id                          serial            PRIMARY KEY,
    nazwa                       varchar(64)       NOT NULL,
    lokalizacja                 varchar(100)               ,
    godzina                     time              NOT NULL,
    data                        date              NOT NULL,
    ID_organizator              int               NOT NULL,
    constraint                  ID_fk foreign key (ID_organizator)
                                  references Organizator(ID) ON DELETE CASCADE
);
create table Koncert_Zespol
(
    ID_koncert                  INT               NOT NULL,
    ID_zespol                   INT               NOT NULL,
    CONSTRAINT                  ID_koncert_fk FOREIGN KEY (ID_koncert)
                                REFERENCES Koncert(id) ON DELETE CASCADE,
    CONSTRAINT                  ID_zespol_fk FOREIGN KEY (ID_zespol)
                                REFERENCES Zespol(id) ON DELETE CASCADE
);


-- DROP VIEW bilet_VIP;
-- DROP TABLE Koncert_Zespol;
-- DROP TABLE Koncert;
-- DROP TABLE Zespol;
-- DROP TABLE Muzycy;
-- DROP TABLE Bilety;
-- DROP TABLE Organizator;
