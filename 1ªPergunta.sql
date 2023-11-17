/* 1ª Pergunta: Valor total das vendas e dos fretes por produto e ordem de venda */
/* Query extraindo o valor total em vendas por produto */

select 
	produtos.Produto, 
	sum(fatodetalhes_dadosmodelagem.Valor) as 'Soma das vendas'
from 
	fatodetalhes_dadosmodelagem
join 
  produtos on fatodetalhes_dadosmodelagem.ProdutoID = produtos.ProdutoID
GROUP BY 
	produtos.Produto
order BY 
	sum(fatodetalhes_dadosmodelagem.Valor) desc;

/* Não consegui encontrar o valor total do frete devido a falta de uma chave estrangeira que ligasse as duas tabelas de FATO. */
