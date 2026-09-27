-- Constraint: fk_id_pedido

-- ALTER TABLE IF EXISTS adm.itens_pedido DROP CONSTRAINT IF EXISTS fk_id_pedido;

ALTER TABLE IF EXISTS adm.itens_pedido
    ADD CONSTRAINT fk_id_pedido FOREIGN KEY (id_pedido)
    REFERENCES adm.pedido (id_pedido) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE CASCADE
    NOT VALID;
