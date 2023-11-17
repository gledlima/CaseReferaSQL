/* Lucro das vendas por mês */

SELECT
    MONTH(T1.Data) AS 'Mês',
    YEAR(T1.Data) AS 'Ano',
    SUM(T2.ValorLiquido) AS 'Lucro das Vendas'
FROM 
    fatocabecalho_dadosmodelagemcsv T1
JOIN 
    fatodetalhes_dadosmodelagem T2 ON T1.CupomID = T2.CupomID
GROUP BY 
    MONTH(T1.Data), 
    YEAR(T1.Data);
