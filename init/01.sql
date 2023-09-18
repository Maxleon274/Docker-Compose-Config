USE PERSISTENCE_ZONE;

CREATE TABLE partner IF NOT EXISTS
(
    partner_uid BIGINT,
    vorname     varchar(255),
    nachname    varchar(255),
    geburtstag  date,
    email       varchar(255)
);

CREATE TABLE lead IF NOT EXISTS
(
    lead_id       BIGINT,
    status        varchar(255),
    anrede        varchar(255),
    vorname       varchar(255),
    nachname      varchar(255),
    geburtstag    date,
    email         varchar(255),
    erstell_ts    timestamp,
    aenderungs_ts timestamp
);

CREATE TABLE kkh IF NOT EXISTS
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

CREATE TABLE hausrat IF NOT EXISTS
(
    trigger_id         BIGINT,
    zahlungs_intervall int,
    produkt_id         varchar(255),
    sb                 int,
    plz                int,
    wohnflaeche        BIGINT,
    baustein1          BIGINT,
    baustein2          BIGINT,
    baustein3          BIGINT,
    baustein4          BIGINT,
    baustein5          BIGINT,
    baustein6          BIGINT,
    baustein7          BIGINT
);

CREATE TABLE haftpflicht IF NOT EXISTS
(
    trigger_id         BIGINT,
    zahlungs_intervall int,
    produkt_id         varchar(255),
    produkt_version    varchar(255),
    versicherte_person varchar(255),
    sb                 int,
    baustein1          BIGINT,
    baustein2          BIGINT,
    baustein3          BIGINT,
    baustein4          BIGINT,
    baustein5          BIGINT,
    baustein6          BIGINT,
    baustein7          BIGINT
);