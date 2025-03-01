/* SEGUNDA ENTIDADE */

CREATE TABLE publicacaoServico (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    tipo ENUM('usuario', 'freelancer') NOT NULL,
    servico ENUM('titulo', 'descrição', 'categoria', 'preço')
    titulo VARCHAR(40) NOT NULL,
    descricao VARCHAR(40) NOT NULL,
    editar VARCHAR(40) NOT NULL,
    excluir VARCHAR(40) NOT NULL,
    categoria VARCHAR(40) NOT NULL,
    preco INT NOT NULL,
    avaliacoes VARCHAR(40) NOT NULL
);

