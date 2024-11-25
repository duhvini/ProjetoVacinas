CREATE OR REPLACE PROCEDURE pr_gera_rel_vacina IS
    CURSOR cr_vencimento IS
        SELECT nome, fabricante, dt_validade
        FROM tb_vacina
        WHERE dt_validade <= SYSDATE + 30;
BEGIN
    FOR reg IN cr_vencimento LOOP
        DBMS_OUTPUT.PUT_LINE('Nome: ' || reg.nome || ', Fabricante: ' || reg.fabricante || 
                             ', Validade: ' || TO_CHAR(reg.dt_validade, 'DD/MM/YYYY'));
    END LOOP;
END;
/
