ALTER TABLE ONLY adm.pedido
    ADD CONSTRAINT fk_pedido_cliente FOREIGN KEY (id_cliente) 
    REFERENCES adm.cliente(id_cliente) 
    ON UPDATE RESTRICT ON DELETE RESTRICT;