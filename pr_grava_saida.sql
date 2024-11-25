CREATE OR REPLACE PROCEDURE pr_grava_saida (
    p_id_vacina IN NUMBER,
    p_qtd_saida IN NUMBER
) IS
BEGIN
    -- primeiro validar o estoque
    IF p_qtd_saida > (SELECT qtd_estoque FROM tb_vacina WHERE id_vacina = p_id_vacina) THEN
        RAISE_APPLICATION_ERROR(-20001, 'Estoque não suficiente.');
    END IF;

    INSERT INTO tb_saida_vacina (id_saida, id_vacina, dt_saida, qtd_saida)
    VALUES (SEQ_saida_vacina.NEXTVAL, p_id_vacina, SYSDATE, p_qtd_saida);

    UPDATE tb_vacina
    SET qtd_estoque = qtd_estoque - p_qtd_saida
    WHERE id_vacina = p_id_vacina;
END;
/