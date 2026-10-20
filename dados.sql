SELECT * FROM clientes;

SELECT COUNT(*) AS total FROM clientes
WHERE cidade = 'Campo Grande';

SELECT id_veiculo, cor, ano_modelo, preco FROM veiculos 
WHERE status = 'reservado'
ORDER BY preco DESC;

SELECT COUNT(*) AS qtd, status FROM veiculos 
GROUP BY status ORDER BY qtd DESC;

SELECT id_veiculo, cor, ano_modelo, preco FROM veiculos
WHERE preco > 100000 AND combustivel = 'Diesel' 
ORDER BY preco DESC LIMIT 5;

SELECT nome, comissao_percentual FROM vendedores 
WHERE comissao_percentual >= 2.5
ORDER BY comissao_percentual DESC, nome;

SELECT YEAR(data_venda) AS ano, COUNT(*) AS qtd_vendas,
SUM(valor_venda) AS faturamento, ROUND(AVG(valor_venda),2) AS ticket_medio
FROM vendas
GROUP BY YEAR(data_venda)
ORDER BY ano;
