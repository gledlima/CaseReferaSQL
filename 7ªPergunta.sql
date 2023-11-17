/* ----- Média de Produtos Vendidos ------ */

SELECT 
    AVG(fatodetalhes_dadosmodelagem.Quantidade) AS 'Media dos Produtos Vendidos'
FROM 
    fatodetalhes_dadosmodelagem;
