CREATE TABLE itens_pedido (
    id_item INT NOT NULL,
    id_pedido INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    preco_unitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (id_item)
);

INSERT INTO itens_pedido (id_item, id_pedido, id_produto, quantidade, preco_unitario) VALUES
(10, 1, 4, 1, 88.00),
(11, 1, 1, 1, 86.00),
(12, 6, 7, 1, 67.00),
(13, 7, 1, 1, 90.00);