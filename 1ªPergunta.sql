/* 1ª Pergunta: Valor total das vendas e dos fretes por produto e ordem de venda */
/* Query extraindo o valor total em vendas por produto */

select
    produtos.Produto, 
    sum(fatodetalhes_dadosmodelagem.Valor) as 'Valor total das vendas',
    sum(fatocabecalho_dadosmodelagemcsv.ValorFrete) as 'Valor total dos Fretes'
from 
    fatodetalhes_dadosmodelagem
join 
    produtos on fatodetalhes_dadosmodelagem.ProdutoID = produtos.ProdutoID
join 
    fatocabecalho_dadosmodelagemcsv on fatocabecalho_dadosmodelagemcsv.CupomID = fatodetalhes_dadosmodelagem.CupomID
GROUP BY
    produtos.Produto
order BY 
    sum(fatodetalhes_dadosmodelagem.Valor) desc;

