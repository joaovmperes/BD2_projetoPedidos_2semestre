/*BD2 - 2o Bim -Atividade de SQL - Exercícios de DDL - Tabelas, Constraints, Indices e
Sequences do Projeto Pedido - Parte 3
Queries implementadas na linguagem SQL aplicadas no SGBDR Oracle, apoiadas no
SqlDeveloper. Utilizar o MER Físico e BD Pedido disponibilizado para treinamento da disciplina
de Banco de Dados.*/

ALTER TABLE PEDIDO
ADD CONSTRAINT CK_NUMERO_PEDIDO CHECK(NUMERO > 0 AND NUMERO <100000);

ALTER TABLE PF 
ADD CONSTRAINT UK_PF_CNPF UNIQUE(CNPF)
;

ALTER TABLE PJ 
ADD CONSTRAINT UK_PJ_CNPJ UNIQUE(CNPJ)
;

CREATE UNIQUE INDEX IND_CNPF_PF ON PF (CNPF DESC);
CREATE UNIQUE INDEX IND_CNPJ_PJ ON PJ (CNPJ DESC);

CREATE SEQUENCE SEQ_ITEM_ID INCREMENT BY 2;