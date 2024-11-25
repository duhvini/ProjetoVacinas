CREATE OR REPLACE PROCEDURE pr_cadastro_vacina (
    p_nome IN VARCHAR2,
    p_fabricante IN VARCHAR2,
    p_dt_validade IN DATE,
    p_qtd_estoque IN NUMBER
) IS
BEGIN
    INSERT INTO tb_vacina(id_vacina, nome, fabricante, dt_validade, qtd_estoque)
    VALUES (SEQ_vacina.NEXTVAL, p_nome, p_fabricante, p_dt_validade, p_qtd_estoque);
END;
/