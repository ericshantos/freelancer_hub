DELIMITER $$

CREATE TRIGGER atualizar_nota_freelancer
BEFORE INSERT ON avaliacoes -- A trigger é ativada antes de uma nova avaliação ser inserida
FOR EACH ROW
BEGIN
    DECLARE nova_media DECIMAL(2,1); -- Variável para armazenar a nova média de notas
    DECLARE total_avaliacoes INT; -- Variável para contar o número de avaliações

    -- Calcula a nova média das notas do freelancer com base nas avaliações existentes
    SELECT AVG(nota), COUNT(*) INTO nova_media, total_avaliacoes
    FROM avaliacoes
    WHERE freelancer_id = NEW.freelancer_id;

    -- Atualiza a coluna 'avaliacao' da tabela 'freelancer' com a nova média calculada
    UPDATE freelancer
    SET avaliacao = nova_media
    WHERE id = NEW.freelancer_id;

    -- Se o freelancer tiver 3 ou mais avaliações e média abaixo de 2.5, ele é suspenso
    IF total_avaliacoes >= 3 AND nova_media < 2.5 THEN
        UPDATE freelancer
        SET status = 'suspenso'
        WHERE id = NEW.freelancer_id;
    END IF;
END$$

DELIMITER ;
