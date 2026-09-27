-- Constraint: fk_setor_id

-- ALTER TABLE IF EXISTS adm.funcionarios DROP CONSTRAINT IF EXISTS fk_setor_id;

ALTER TABLE IF EXISTS adm.funcionarios
    ADD CONSTRAINT fk_setor_id FOREIGN KEY (id_setor)
    REFERENCES adm.setor (id_setor) MATCH SIMPLE
    ON UPDATE CASCADE
    ON DELETE RESTRICT;