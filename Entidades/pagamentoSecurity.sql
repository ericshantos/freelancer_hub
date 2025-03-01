CREATE DATABASE PagamentoSecurity;

USE PagamentoSecurity;

CREATE TABLE Usuario (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Senha VARCHAR(255) NOT NULL,
    Tipo ENUM('Freelancer', 'Cliente') NOT NULL,
    DataCriacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    DataAtualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

CREATE INDEX idx_email ON Usuario(Email);

INSERT INTO Usuario (Nome, Email, Senha, Tipo) 
VALUES ('João Silva', 'joao@email.com', 'hash_da_senha', 'Freelancer');

INSERT INTO Usuario (Nome, Email, Senha, Tipo) 
VALUES ('Maria Souza', 'maria@email.com', 'hash_da_senha', 'Cliente');

SELECT * FROM Usuario;

CREATE TABLE Pagamento (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    usuario_id INT NOT NULL
);

CREATE TABLE Seguranca (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nivel VARCHAR(255) NOT NULL,
    criado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    atualizado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    status VARCHAR(255) NOT NULL,
    usuario_id INT NOT NULL
);

-- Adicionando chaves estrangeiras separadamente
ALTER TABLE Pagamento ADD CONSTRAINT fk_pagamento_usuario FOREIGN KEY (usuario_id) REFERENCES Usuario(ID) ON DELETE CASCADE;

ALTER TABLE Seguranca ADD CONSTRAINT fk_seguranca_usuario FOREIGN KEY (usuario_id) REFERENCES Usuario(ID) ON DELETE CASCADE;

-- Inserindo Pagamento com usuario_id
INSERT INTO Pagamento (titulo, descricao, usuario_id) 
VALUES ('PIX de João Silva para Maria Souza', 'PIX', 1);

SELECT * FROM Pagamento;

-- Inserindo Seguranca com usuario_id
INSERT INTO Seguranca (nivel, status, usuario_id) 
VALUES ('Alto', 'Ativo', 1);

SELECT * FROM Seguranca;

-- Modificando os campos para garantir os valores padrão
ALTER TABLE Pagamento 
MODIFY atualizado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

ALTER TABLE Seguranca
MODIFY atualizado_em TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
