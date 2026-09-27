CREATE VIEW adm.pedido_view AS
SELECT 
    ip.id_pedido, 
    ip.id_produto
FROM adm.pedido AS p
JOIN adm.itens_pedido AS ip ON ip.id_produto = ip.id_produto;