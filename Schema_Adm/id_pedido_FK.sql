-- Constraint: id_pedido_fk

-- ALTER TABLE IF EXISTS adm.itens_pedido DROP CONSTRAINT IF EXISTS id_pedido_fk;

ALTER TABLE IF EXISTS adm.itens_pedido
    ADD CONSTRAINT id_pedido_fk FOREIGN KEY (id_pedido)
    REFERENCES adm.pedido (id_pedido) MATCH SIMPLE
    ON UPDATE NO ACTION
    ON DELETE CASCADE
    NOT VALID;
