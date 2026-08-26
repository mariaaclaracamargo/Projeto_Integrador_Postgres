-- --------------------------------------------------------
-- Table structure for table "cliente"
-- --------------------------------------------------------

CREATE TABLE "cliente" (
  "id_cliente" SERIAL PRIMARY KEY,
  "nome" varchar(100) NOT NULL,
  "cpf" varchar(100) NOT NULL,
  "email" varchar(100) NOT NULL,
  "endereco" varchar(100) NOT NULL,
  "telefone_celular" varchar(100) NOT NULL
);

-- --------------------------------------------------------
-- Table structure for table "endereço"
-- --------------------------------------------------------

CREATE TABLE "endereço" (
  "id_endereco" SERIAL PRIMARY KEY,
  "CEP" int NOT NULL,
  "rua" varchar(100) NOT NULL,
  "bairro" varchar(100) NOT NULL,
  "complemento" varchar(100) NOT NULL
);

-- --------------------------------------------------------
-- Table structure for table "fornecedores"
-- --------------------------------------------------------

CREATE TABLE "fornecedores" (
  "id_fornecedor" SERIAL PRIMARY KEY,
  "nome_fornecedor" varchar(100) NOT NULL,
  "produtos" varchar(100) NOT NULL
);

-- --------------------------------------------------------
-- Table structure for table "pagamento"
-- --------------------------------------------------------

CREATE TABLE "pagamento" (
  "id_pagamento" SERIAL PRIMARY KEY,
  "forma_pagamento" varchar(100) NOT NULL
);

-- --------------------------------------------------------
-- Table structure for table "pedido"
-- --------------------------------------------------------

CREATE TABLE "pedido" (
  "id_pedido" SERIAL PRIMARY KEY,
  "cliente_pedido" varchar(100) NOT NULL,
  "status_entrega" varchar(100) NOT NULL,
  "descricao_pedido" varchar(100) NOT NULL,
  "endereco_pedido" varchar(100) NOT NULL,
  "contato_pedido" varchar(100) NOT NULL
);

-- --------------------------------------------------------
-- Table structure for table "produto"
-- --------------------------------------------------------

CREATE TABLE "produto" (
  "id_produto" SERIAL PRIMARY KEY,
  "descricao" varchar(100) NOT NULL,
  "sabor" varchar(100) NOT NULL,
  "preco" decimal(19,2) NOT NULL
);

INSERT INTO "produto" ("descricao", "sabor", "preco") VALUES
('Produto 1', 'Calabresa', 87.00);

-- --------------------------------------------------------
-- Table structure for table "setor"
-- --------------------------------------------------------

CREATE TABLE "setor" (
  "id_setor" SERIAL PRIMARY KEY,
  "cozinha" varchar(100) NOT NULL,
  "salão" varchar(100) NOT NULL,
  "atendimento" varchar(100) NOT NULL,
  "entregas" varchar(100) NOT NULL
);

-- --------------------------------------------------------
-- Table structure for table "usuario"
-- --------------------------------------------------------

CREATE TABLE "usuario" (
  "usuario" varchar(10) NOT NULL,
  "senha" int NOT NULL
);

INSERT INTO "usuario" ("usuario", "senha") VALUES
('admin', 123);

-- --------------------------------------------------------
-- Table structure for table "entregas"
-- --------------------------------------------------------

CREATE TABLE "entregas" (
  "id_entrega" SERIAL PRIMARY KEY,
  "id_pedido" int NOT NULL,
  "id_endereco" int NOT NULL,
  "troco" decimal(19,2) DEFAULT NULL,
  CONSTRAINT "fk_pedido_id1" FOREIGN KEY ("id_pedido") REFERENCES "pedido" ("id_pedido") ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT "fk_endereco_id" FOREIGN KEY ("id_endereco") REFERENCES "endereço" ("id_endereco") ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- --------------------------------------------------------
-- Table structure for table "funcionarios"
-- --------------------------------------------------------

CREATE TABLE "funcionarios" (
  "id_funcionario" SERIAL PRIMARY KEY,
  "nome" varchar(100) NOT NULL,
  "salario" varchar(100) NOT NULL,
  "id_setor" int NOT NULL,
  "faltas" varchar(100) NOT NULL,
  CONSTRAINT "fk_setor_id" FOREIGN KEY ("id_setor") REFERENCES "setor" ("id_setor") ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- --------------------------------------------------------
-- Table structure for table "histórico"
-- --------------------------------------------------------

CREATE TABLE "histórico" (
  "id_historico" SERIAL PRIMARY KEY,
  "id_pedido" int NOT NULL,
  "id_cliente" int NOT NULL,
  "id_pagamento" int NOT NULL,
  CONSTRAINT "fk_pedido_id2" FOREIGN KEY ("id_pedido") REFERENCES "pedido" ("id_pedido") ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT "fk_cliente_id2" FOREIGN KEY ("id_cliente") REFERENCES "cliente" ("id_cliente") ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT "fk_pagamento_id2" FOREIGN KEY ("id_pagamento") REFERENCES "pagamento" ("id_pagamento") ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- --------------------------------------------------------
-- Table structure for table "histórico_caixa"
-- --------------------------------------------------------

CREATE TABLE "histórico_caixa" (
  "id_caixa" SERIAL PRIMARY KEY,
  "id_pagamento" int NOT NULL,
  "renda_total" int NOT NULL,
  CONSTRAINT "fk_pagamento_id1" FOREIGN KEY ("id_pagamento") REFERENCES "pagamento" ("id_pagamento") ON DELETE RESTRICT ON UPDATE RESTRICT
);

-- --------------------------------------------------------
-- Table structure for table "status_pedido"
-- --------------------------------------------------------

CREATE TABLE "status_pedido" (
  "id_status" SERIAL PRIMARY KEY,
  "id_pedido" int NOT NULL,
  "status_pedido" varchar(100) NOT NULL,
  CONSTRAINT "fk_pedido_id" FOREIGN KEY ("id_pedido") REFERENCES "pedido" ("id_pedido") ON DELETE RESTRICT ON UPDATE RESTRICT
);