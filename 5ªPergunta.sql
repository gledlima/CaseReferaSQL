/* ------- Venda por produto ------- */


select 
    T2.Produto, 
    SUM(T1.Quantidade) AS 'Quantidade de Vendas' 
from 
    fatodetalhes_dadosmodelagem T1
join 
    produtos T2 on T1.ProdutoID = T2.ProdutoID
group by 
    T2.Produto
order by 
    SUM(T1.Quantidade) DESC;
