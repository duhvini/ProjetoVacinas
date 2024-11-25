CREATE OR REPLACE FUNCTION fn_verif_estoque(
    p_id_vacina IN NUMBER
) RETURN NUMBER IS
    v_verif NUMBER;
BEGIN
    SELECT qtd_estoque
    INTO v_verif
    FROM tb_vacina
    WHERE id_vacina = p_id_vacina;

    RETURN v_verif;
END;
/
