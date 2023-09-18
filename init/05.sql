CREATE TABLE haftpflicht
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