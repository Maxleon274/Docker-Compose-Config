CREATE TABLE partner
(
    partner_uid BIGINT PRIMARY KEY,
    vorname     varchar(255),
    nachname    varchar(255),
    geburtstag  date,
    email       varchar(255)
);

CREATE TABLE ruv_lead
(
    lead_id       BIGINT PRIMARY KEY,
    lead_status   varchar(255),
    anrede        varchar(255),
    vorname       varchar(255),
    nachname      varchar(255),
    geburtstag    date,
    email         varchar(255) NOT NULL,
    erstell_ts    timestamp,
    aenderungs_ts timestamp
);

CREATE TABLE kkh
(
    kontakt_id       BIGINT PRIMARY KEY,
    ersteller        varchar(255),
    aenderer         varchar(255),
    kontaktzeitpunkt timestamp,
    partner_uid      BIGINT,
    kontaktkanal     varchar(255),
    kontaktgrund     varchar(255),
    kontaktart       varchar(255),
    richtung         varchar(255)
);

CREATE TABLE hausrat
(
    trigger_id         BIGINT PRIMARY KEY,
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

CREATE TABLE haftpflicht
(
    trigger_id         BIGINT PRIMARY KEY,
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
