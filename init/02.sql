CREATE TABLE lead
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