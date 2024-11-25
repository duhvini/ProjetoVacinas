CREATE TABLE tb_vacina (
    id_vacina NUMBER PRIMARY KEY,
    nome VARCHAR2(150) NOT NULL,
    fabricante VARCHAR2(150) NOT NULL,
    dt_validade DATE NOT NULL,
    qtd_estoque NUMBER DEFAULT 0
);