/* Valor total de vendas por ANO ----- Eu utilizei a coluna CupomID para relacionar as duas tabelas ----- */

SELECT
    YEAR(T1.Data) AS 'Ano',
    SUM(T2.Quantidade) AS 'Quantidade',
    SUM(T2.Valor) AS 'Valor Total de Vendas'
FROM 
    fatocabecalho_dadosmodelagemcsv T1
JOIN 
    fatodetalhes_dadosmodelagem T2 ON T1.CupomID = T2.CupomID
GROUP BY 
    YEAR(T1.Data);


/* ------ Valor total de vendas por MÊS ------ */

SELECT
    MONTH(T1.Data) AS 'Mês',
    SUM(T2.Quantidade) AS 'Quantidade',
    SUM(T2.Valor) AS 'Valor Total de Vendas'
FROM 
    fatocabecalho_dadosmodelagemcsv T1
JOIN 
    fatodetalhes_dadosmodelagem T2 ON T1.CupomID = T2.CupomID
GROUP BY  
    MONTH(T1.Data);



/* ---- Valor total de vendas por MÊS e ANO ----- */

SELECT
    MONTH(T1.Data) AS 'Mês',
    YEAR(T1.Data) AS 'Ano',
    SUM(T2.Quantidade) AS 'Quantidade',
    SUM(T2.Valor) AS 'Valor Total de Vendas'
FROM 
    fatocabecalho_dadosmodelagemcsv T1
JOIN 
    fatodetalhes_dadosmodelagem T2 ON T1.CupomID = T2.CupomID
GROUP BY 
    MONTH(T1.Data), 
    YEAR(T1.Data);



/* ----- Valor total de vendas por DIA, MÊS e ANO ------ */

SELECT
    DAY(T1.Data) AS 'Dia',
    MONTH(T1.Data) AS 'Mês',
    YEAR(T1.Data) AS 'Ano',
    SUM(T2.Quantidade) AS 'Quantidade',
    SUM(T2.Valor) AS 'Valor Total de Vendas'
FROM 
    fatocabecalho_dadosmodelagemcsv T1
JOIN 
    fatodetalhes_dadosmodelagem T2 ON T1.CupomID = T2.CupomID
GROUP BY
    DAY(T1.Data),
    MONTH(T1.Data),
    YEAR(T1.Data);



