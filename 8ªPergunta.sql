/* ------- Média de compras que um cliente faz ------ */

SELECT 
    AVG(qd_compras) AS 'Média de Compras que eu Cliente Faz'
FROM (
    SELECT 
        fatocabecalho_dadosmodelagemcsv.ClienteID, 
        COUNT(*) AS qd_compras
    FROM 
        fatocabecalho_dadosmodelagemcsv
    GROUP BY 
        fatocabecalho_dadosmodelagemcsv.ClienteID
);


/* A resposta foi 9.2889 - Porém, podemos arredondar esse valor para 9 com a função ROUND*/

SELECT 
    ROUND(AVG(qd_compras)) AS 'Média de Compras que eu Cliente Faz'
FROM (
    SELECT 
        fatocabecalho_dadosmodelagemcsv.ClienteID, 
        COUNT(*) AS qd_compras
    FROM 
        fatocabecalho_dadosmodelagemcsv
    GROUP BY 
        fatocabecalho_dadosmodelagemcsv.ClienteID
);
