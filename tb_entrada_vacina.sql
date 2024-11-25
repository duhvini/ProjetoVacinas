CREATE TABLE tb_entrada_vacina (
    id_entrada NUMBER PRIMARY KEY,
    id_vacina NUMBER NOT NULL,
    dt_entrada DATE NOT NULL,
    qtd_entrada NUMBER NOT NULL,
    CONSTRAINT FK_ENTRADA_VACINA FOREIGN KEY (id_vacina)
        REFERENCES tb_vacina(id_vacina)
);