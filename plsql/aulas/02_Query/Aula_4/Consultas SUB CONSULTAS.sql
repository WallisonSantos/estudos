
SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES;

SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO
IN ('Tijuca','Santo Amaro','Jardins','Copacabana','ASASAS');

SELECT * FROM TABELA_DE_CLIENTES WHERE BAIRRO
IN (SELECT DISTINCT BAIRRO FROM TABELA_DE_VENDEDORES);

SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA_PRECO
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM
HAVING SUM(PRECO_DE_LISTA) <= 80;

SELECT Z.EMBALAGEM, Z.SOMA_PRECO FROM
(SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS SOMA_PRECO
FROM TABELA_DE_PRODUTOS GROUP BY EMBALAGEM) Z
WHERE Z.SOMA_PRECO <= 80;


