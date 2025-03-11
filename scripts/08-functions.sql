-- Função para calcular a média das avaliações de um freelancer
DELIMITER $$
CREATE FUNCTION calcular_media_avaliacoes(freelancer_id INT) RETURNS DECIMAL(3,2) DETERMINISTIC
BEGIN
    DECLARE media DECIMAL(3,2);
    SELECT COALESCE(AVG(nota), 0) INTO media
    FROM projeto
    WHERE freelancer_id = freelancer_id;
    RETURN media;
END $$
DELIMITER ;

-- Função para verificar o status do pagamento de um projeto
DELIMITER $$
CREATE FUNCTION verificar_status_pagamento(projeto_id INT) RETURNS VARCHAR(20) DETERMINISTIC
BEGIN
    DECLARE status_pag VARCHAR(20);
    SELECT status_pagamento INTO status_pag
    FROM pagamento
    WHERE projeto_id = projeto_id
    LIMIT 1;
    RETURN status_pag;
END $$
DELIMITER ;

-- Função para obter o nível de segurança do usuário
DELIMITER $$
CREATE FUNCTION obter_nivel_seguranca(usuario_id INT) RETURNS VARCHAR(10) DETERMINISTIC
BEGIN
    DECLARE nivel VARCHAR(10);
    SELECT nivel_seguranca INTO nivel
    FROM seguranca
    WHERE usuario_id = usuario_id
    LIMIT 1;
    RETURN nivel;
END $$
DELIMITER ;
