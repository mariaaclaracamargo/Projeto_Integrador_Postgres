ALTER TABLE IF EXISTS adm.status_pedido
    ADD CONSTRAINT fk_pedido_id 
    FOREIGN KEY (id_pedido)
    REFERENCES adm.pedido (id_pedido) 
    MATCH SIMPLE
    ON UPDATE RESTRICT
    ON DELETE CASCADE;