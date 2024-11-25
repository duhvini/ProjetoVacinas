CREATE TABLE tb_saida_vacina (
    id_saida NUMBER PRIMARY KEY,
    id_vacina NUMBER NOT NULL,
    dt_saida DATE NOT NULL,
    qtd_saida NUMBER NOT NULL,
    CONSTRAINT FK_SAIDA_VACINA FOREIGN KEY (id_vacina)
        REFERENCES tb_vacina(id_vacina)
);