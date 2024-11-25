CREATE OR REPLACE PROCEDURE pr_grava_entrada(
    p_id_vacina IN NUMBER,
    p_qtd_entrada IN NUMBER
) IS
BEGIN
    INSERT INTO tb_entrada_vacina (id_entrada, id_vacina, dt_entrada, qtd_entrada)
    VALUES (SEQ_entrada_vacina.NEXTVAL, p_id_vacina, SYSDATE, p_qtd_entrada);

    UPDATE tb_vacina
    SET qtd_estoque = qtd_estoque + p_qtd_entrada
    WHERE id_vacina = p_id_vacina;
END;
/