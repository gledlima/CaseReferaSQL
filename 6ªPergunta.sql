/* ------ Venda por cliente, cidade do cliente e estado ------ */
/* ------ Obs.: Como os dados são de clientes estrangeiros, eu compriendi que o Estado é o País do usuário ------ */

SELECT
    clientes.Cliente,
    clientes.Cidade,
    clientes.Pais,
    SUM(fatodetalhes_dadosmodelagem.Quantidade) AS 'Quantidade de Vendas por Cliente'
FROM 
    fatodetalhes_dadosmodelagem
JOIN 
    fatocabecalho_dadosmodelagemcsv ON fatodetalhes_dadosmodelagem.CupomID = fatocabecalho_dadosmodelagemcsv.CupomID
JOIN 
    clientes ON clientes.ClienteID = fatocabecalho_dadosmodelagemcsv.ClienteID
GROUP BY 
    clientes.Cliente, clientes.Cidade
order by 
    SUM(fatodetalhes_dadosmodelagem.Quantidade) desc;
