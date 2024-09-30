/* Realizar 4 consultas (1 com agrupamento, 3 com joins) (DQL) */


/* Agrupamento */
SELECT c.nome, COUNT(p.id) AS total_pedidos
FROM clientes c
LEFT JOIN pedidos p ON c.id = p.id_cliente
GROUP BY c.nome;

/* join   Informacoes pedidos,pratos clientes*/
SELECT p.id AS pedido_id, c.nome AS cliente_nome, pr.nome AS prato_nome
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id
JOIN inclui i ON p.id = i.id_pedido
JOIN pratos pr ON i.id_prato = pr.id;


/* Funcionarios que atenderam pedidos */

SELECT f.nome AS funcionario_nome, p.id AS pedido_id, c.nome AS cliente_nome
FROM atende a
JOIN funcionarios f ON a.id_funcionario = f.id
JOIN pedidos p ON a.id_pedido = p.id
JOIN clientes c ON p.id_cliente = c.id;

/* Informacoes de reservas e mesas e clientes */
SELECT c.nome AS cliente_nome, m.capacidade AS mesa_capacidade, r.data_hora
FROM reservas r
JOIN clientes c ON r.id_cliente = c.id
JOIN mesas m ON r.id_mesa = m.id;
