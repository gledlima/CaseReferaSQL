/* Valor de venda por tipo de produto */

select 
    categoria.Categoria as 'Tipo de produto', 
    sum(fatodetalhes_dadosmodelagem.Valor) as 'Valor em vendas por tipo de produto'  
from 
    fatodetalhes_dadosmodelagem
inner join 
    produtos on fatodetalhes_dadosmodelagem.ProdutoID = produtos.ProdutoID
inner join 
    categoria on categoria.CategoriaID = produtos.CategoriaID
GROUP BY 
	  categoria.Categoria
order by 
    sum(fatodetalhes_dadosmodelagem.Valor) desc;
