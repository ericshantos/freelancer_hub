CREATE DATABASE Feedback_Avaliacao;

USE Feedback_Avaliacao;

-- Criando tabela de Avaliação separadamente
CREATE TABLE Avaliacao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nota INT CHECK (nota BETWEEN 0 AND 10),
    comentario TEXT NOT NULL,
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(255) NOT NULL,
    projeto_id INT,
    usuario_id INT,
    FOREIGN KEY (projeto_id) REFERENCES Projeto(id) ON DELETE CASCADE,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE
);

ALTER TABLE Avaliacao ADD CONSTRAINT fk_avaliacao_projeto FOREIGN KEY (projeto_id) REFERENCES Projeto(id) ON DELETE CASCADE;
ALTER TABLE Avaliacao ADD CONSTRAINT fk_avaliacao_usuario FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE;

-- Criando tabela de Feedback separadamente
CREATE TABLE Feedback (
    id INT PRIMARY KEY AUTO_INCREMENT,
    comentario TEXT NOT NULL,
    tipo VARCHAR(255) NOT NULL,
    enviado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(255) NOT NULL,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE
);

ALTER TABLE Feedback ADD CONSTRAINT fk_feedback_usuario FOREIGN KEY (usuario_id) REFERENCES Usuario(id) ON DELETE CASCADE;

-- Inserindo dados na tabela Avaliacao
INSERT INTO Avaliacao (nota, comentario, status, projeto_id, usuario_id) 
VALUES (8, 'Ótima execução do projeto!', 'Aprovado', 1, 1);

INSERT INTO Avaliacao (nota, comentario, status, projeto_id, usuario_id) 
VALUES (5, 'Pode melhorar em alguns aspectos.', 'Em análise', 2, 2);

-- Inserindo dados na tabela Feedback
INSERT INTO Feedback (comentario, tipo, status, usuario_id) 
VALUES ('A plataforma poderia ter mais funcionalidades.', 'Sugestão', 'Aberto', 1);

INSERT INTO Feedback (comentario, tipo, status, usuario_id) 
VALUES ('O sistema está apresentando lentidão.', 'Problema', 'Pendente', 2);