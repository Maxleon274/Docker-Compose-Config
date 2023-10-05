CREATE TABLE partner
(
    customer_id BIGINT PRIMARY KEY,
    vorname     varchar(255),
    nachname    varchar(255),
    geburtstag  date,
    email       varchar(255)
);

CREATE TABLE lead_table
(
    lead_id       BIGINT PRIMARY KEY,
    lead_status   varchar(255),
    vorname       varchar(255),
    nachname      varchar(255),
    geburtstag    date,
    email         varchar(255) NOT NULL,
    erstell_ts    timestamp,
    aenderungs_ts timestamp
);

/*
 Kid hat viele Steakholder. Daher sollten die anpassungen moeglichst gerin seien,
 um die Anpassungsaufwaende gering zu halten
 */
CREATE TABLE kid
(
    kontakt_id       BIGINT PRIMARY KEY,
    ersteller        varchar(255),
    kontaktzeitpunkt timestamp,
    customer_id      BIGINT,
    lead_id          BIGINT,
    kontaktkanal     varchar(255),
    kontaktgrund     varchar(255),
    kontaktart       varchar(255),
    richtung         varchar(255)
);

CREATE TABLE haftpflicht
(
    kid_id     BIGINT PRIMARY KEY,
    produkt_id BIGINT
);


/*
Für jede sparte einen einzelnen Table, da jede aus verschiedenen Bausteinen bestehen kann
 */
CREATE TABLE hausrat
(
    kid_id     BIGINT PRIMARY KEY,
    produkt_id BIGINT
);

CREATE TABLE versicherte_person
(
    id                 BIGINT PRIMARY KEY,
    kid_id             BIGINT,
    versicherte_person varchar(255)
);

CREATE TABLE versichertes_objekt
(
    id           BIGINT PRIMARY KEY,
    kid_id       BIGINT,
    postleitzahl varchar(255),
    wohnflaeche  BIGINT
);

CREATE TABLE bausteine
(
    id          BIGINT PRIMARY KEY,
    kid_id      BIGINT,
    baustein    varchar(255),
    eigenschaft varchar(255)
);

CREATE TABLE produkt
(
    id                BIGINT PRIMARY KEY,
    kid_id            BIGINT,
    produkt_kennung   varchar(255),
    produkt_version   varchar(255),
    zahlungsintervall varchar(255),
    selbstbeteiligung varchar(255),
    sparte            varchar(255)
);


INSERT INTO partner (customer_id, vorname, nachname, geburtstag, email)
VALUES (1, 'Moritz', 'Mustermann', '1990-01-01', 'moritz.mustermann@example.com');

INSERT INTO lead_table (lead_id, lead_status, vorname, nachname, geburtstag, email, erstell_ts, aenderungs_ts)
VALUES (1, 'Aktiv', 'Max', 'Mustermann', '1990-01-01', 'max.mustermann@example.com', CURRENT_TIMESTAMP(),
        CURRENT_TIMESTAMP());