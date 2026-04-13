-- =========================================
-- ATIVIDADE 03 - BANCO DE DADOS
-- =========================================

-- Questão 1 - Contagem de produtos cadastrados
SELECT COUNT(*) AS total_produtos
FROM produtos;

-- =========================================

-- Questão 2 - Contagem de categorias preenchidas
SELECT COUNT(categoria) AS categorias_preenchidas
FROM produtos
WHERE categoria IS NOT NULL;

-- =========================================

-- Questão 3 - Soma do valor dos pedidos
SELECT SUM(valor_total) AS soma_pedidos
FROM pedidos;

-- =========================================

-- Questão 4 - Média de preços dos produtos
SELECT AVG(preco) AS media_precos
FROM produtos;

-- =========================================

-- Questão 5 - Maior e menor preço
SELECT 
    MAX(preco) AS maior_preco,
    MIN(preco) AS menor_preco
FROM produtos;

-- =========================================

-- Questão 6 - Quantidade de produtos por categoria
SELECT categoria, COUNT(*) AS quantidade
FROM produtos
GROUP BY categoria;

-- =========================================

-- Questão 7 - Média de preço por categoria
SELECT categoria, AVG(preco) AS media_preco
FROM produtos
GROUP BY categoria;

-- =========================================

-- Questão 8 - Categorias com mais de 2 produtos
SELECT categoria, COUNT(*) AS quantidade
FROM produtos
GROUP BY categoria
HAVING COUNT(*) > 2;

-- =========================================

-- Questão 9 - Atualização de dados
-- Antes da atualização
SELECT * FROM produtos WHERE id_produto = 1;

-- Atualização
UPDATE produtos
SET preco = 79.90
WHERE id_produto = 1;

-- Depois da atualização
SELECT * FROM produtos WHERE id_produto = 1;

-- =========================================

-- Questão 10 - Consulta com JOIN
SELECT 
    p.id_pedido,
    c.nome_cliente,
    c.cidade,
    p.valor_total
FROM pedidos p
INNER JOIN clientes c
ON p.id_cliente = c.id_cliente;

-- =========================================

-- Desafio extra - Excluir produtos com estoque menor que 5
-- Antes da exclusão
SELECT * FROM produtos WHERE estoque < 5;

-- Exclusão
DELETE FROM produtos
WHERE estoque < 5;

-- Depois da exclusão
SELECT * FROM produtos WHERE estoque < 5;

-- =========================================
