CREATE TABLE kkh
(
    kontakt_id       BIGINT,
    ersteller        varchar(255),
    aenderer         varchar(255),
    kontaktzeitpunkt timestamp,
    partner_uid      BIGINT,
    kontaktkanal     varchar(255),
    kontaktgrund     varchar(255),
    kontaktart       varchar(255),
    richtung         varchar(255)
);