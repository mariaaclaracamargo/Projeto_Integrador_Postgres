-- Table: contabil.venda

-- DROP TABLE IF EXISTS contabil.venda;

CREATE TABLE IF NOT EXISTS contabil.venda
(
    id_venda integer NOT NULL DEFAULT nextval('contabil.venda_id_venda_seq'::regclass),
    mes_venda character varying(100) COLLATE pg_catalog."default",
    total_venda character varying(100) COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS contabil.venda
    OWNER to postgres;