CREATE TABLE pessoa (
  codigo BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100) NOT NULL,
  ativo BOOLEAN NOT NULL,
  logradouro VARCHAR(100),
  numero VARCHAR(20),
  complemento VARCHAR(50),
  bairro VARCHAR(100),
  cep VARCHAR(10),
  cidade VARCHAR(100),
  estado VARCHAR(50)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)
VALUES ('João', true, 'Rua A', '123', 'Apartamento 1', 'Centro', '12345-678', 'São Paulo', 'SP');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)
VALUES ('Maria', true, 'Avenida B', '456', 'Casa 2', 'Bela Vista', '98765-432', 'Rio de Janeiro', 'RJ');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)
VALUES ('Pedro', false, 'Travessa C', '789', 'Fundos', 'Centro', '54321-876', 'Belo Horizonte', 'MG');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)
VALUES ('Ana', true, 'Rua D', '987', 'Apartamento 5', 'Vila Nova', '87654-321', 'Porto Alegre', 'RS');

INSERT INTO pessoa (nome, ativo, logradouro, numero, complemento, bairro, cep, cidade, estado)
VALUES ('Carlos', true, 'Avenida E', '654', 'Casa 3', 'Centro', '54321-123', 'Salvador', 'BA');
