-- Atualizar o telefone e cargo de um funcionário
UPDATE funcionarios
SET telefone = '11912345678', cargo = 'Supervisor'
WHERE id = 4;

-- Atualizar o preço de um prato
UPDATE pratos
SET preco = 30.00
WHERE id = 2;

-- Deletar um cliente específico
DELETE FROM clientes
WHERE id = 3;

-- Deletar uma reserva
DELETE FROM reservas
WHERE id = 5;
