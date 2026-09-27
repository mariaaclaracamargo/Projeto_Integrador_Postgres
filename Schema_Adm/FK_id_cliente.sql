-- Constraint: fk_cliente_id

-- ALTER TABLE IF EXISTS adm.pedido DROP CONSTRAINT IF EXISTS fk_cliente_id;

ALTER TABLE IF EXISTS adm.pedido
    ADD CONSTRAINT fk_cliente_id FOREIGN KEY (id_cliente)
    REFERENCES adm.pedido (id_pedido) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE CASCADE;