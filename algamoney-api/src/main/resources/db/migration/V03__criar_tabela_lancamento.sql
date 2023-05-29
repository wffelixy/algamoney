CREATE TABLE lancamento(
	codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
	descricao VARCHAR(50) NOT NULL,
	data_vencimento DATE NOT NULL,
	data_pagamento DATE,
	valor DECIMAL(10,2) NOT NULL,
	observacao VARCHAR(100),
	tipo VARCHAR(20) NOT NULL,
	codigo_categoria BIGINT(20) NOT NULL,
	codigo_pessoa BIGINT(20) NOT NULL,
	FOREIGN KEY (codigo_categoria) REFERENCES categoria(codigo),
	FOREIGN KEY (codigo_pessoa) REFERENCES pessoa(codigo)
	) ENGINE=InnoDB DEFAULT CHARSET=utf8;
	
INSERT INTO lancamento (descricao, data_vencimento, valor, tipo, codigo_categoria, codigo_pessoa)
VALUES ('Luz', '2023-05-31', 150.00, 'DESPESA', 1, 1);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
VALUES ('Aluguel', '2023-05-01', '2023-05-01', 1000.00, 'Pagamento antecipado', 'DESPESA', 2, 1);

INSERT INTO lancamento (descricao, data_vencimento, valor, tipo, codigo_categoria, codigo_pessoa)
VALUES ('Salário', '2023-05-15', -2500.00, 'RECEITA', 3, 2);

INSERT INTO lancamento (descricao, data_vencimento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
VALUES ('Telefone', '2023-06-05', 50.00, 'Verificar promoções', 'DESPESA', 4, 2);

INSERT INTO lancamento (descricao, data_vencimento, data_pagamento, valor, observacao, tipo, codigo_categoria, codigo_pessoa)
VALUES ('Venda de produtos', '2023-05-20', '2023-05-21', 500.00, 'Cliente pagou em dinheiro', 'RECEITA', 5, 3);

