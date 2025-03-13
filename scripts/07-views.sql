CREATE VIEW vw_freelancer_habilidades AS
SELECT 
    f.id AS freelancer_id,
    u.nome AS freelancer_nome,
    h.competencia,
    fh.nivel
FROM freelancer f
JOIN usuario u ON f.usuario_id = u.id
JOIN freelancer_habilidade fh ON f.id = fh.freelancer_id
JOIN habilidade h ON fh.habilidade_id = h.id;

