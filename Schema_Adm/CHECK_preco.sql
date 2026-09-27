ALTER TABLE adm.produto
ADD CONSTRAINT chk_preco_positivo
CHECK (preco > 0);
