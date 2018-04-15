CREATE TABLE naglowek
(
  numer    INT PRIMARY KEY,
  imie     VARCHAR(32)  NOT NULL,
  nazwisko VARCHAR(32)  NOT NULL,
  adres    VARCHAR(100) NOT NULL,
  data     DATE
);

CREATE TABLE pozycja
(
  numer   INT         NOT NULL,
  nazwa   VARCHAR(32) NOT NULL,
  cena    INT         NOT NULL,
  ilosc   INT         NOT NULL,
  nr_fakt INT REFERENCES naglowek (numer)
    ON DELETE CASCADE,
  UNIQUE (numer, nr_fakt)
);