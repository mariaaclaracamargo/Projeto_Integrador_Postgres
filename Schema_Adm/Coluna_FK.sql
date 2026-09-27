-- Column: adm.pedido.id_cliente

-- ALTER TABLE IF EXISTS adm.pedido DROP COLUMN IF EXISTS id_cliente;

ALTER TABLE IF EXISTS adm.pedido
    ADD COLUMN id_cliente integer;