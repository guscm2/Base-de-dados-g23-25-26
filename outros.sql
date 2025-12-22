DELIMITER $$

CREATE PROCEDURE AdicionarAvaliacao (
    IN p_id_Aquisicao INT,
    IN p_nota INT,
    IN p_comentario TEXT
)
BEGIN
    -- 1. Validação dos dados de entrada
    -- Garante que a nota está dentro da escala permitida antes de alterar os dados
    IF p_nota < 1 OR p_nota > 5 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Erro de Validação: A nota deve ser um valor inteiro entre 1 e 5.';
    ELSE
        -- 2. Atualização da Aquisição
        -- Atualiza o registo existente com a nova nota e comentário
        UPDATE Aquisicao
        SET valorAvaliacao = p_nota,
            comentario = p_comentario
        WHERE id = p_id_Aquisicao;
        
        -- 3. Confirmação de Sucesso
        -- Verifica se alguma linha foi alterada (se o ID existe)
        IF ROW_COUNT() = 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Erro: Aquisição não encontrada.';
        END IF;
    END IF;
END $$

DELIMITER ;

DELIMITER $$

CREATE TRIGGER trg_AtualizarMediaViagem
AFTER UPDATE ON Aquisicao
FOR EACH ROW
BEGIN

    IF (NEW.valorAvaliacao IS NOT NULL AND OLD.valorAvaliacao IS NULL) OR 
       (NEW.valorAvaliacao != OLD.valorAvaliacao) THEN

        UPDATE Viagem
        SET avaliacao_media = (
            SELECT IFNULL(AVG(valorAvaliacao), 0)
            FROM Aquisicao
            WHERE id_Viagem = NEW.id_Viagem 
            AND valorAvaliacao IS NOT NULL
        )
        WHERE id_Viagem = NEW.id_Viagem;

    END IF;
END $$

DELIMITER ;