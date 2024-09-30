-- Inserir registros na tabela de clientes
INSERT INTO clientes (id, nome, cpf, telefone, email, data_nascimento) VALUES
(1, 'Ana Silva', '123.456.789-00', '11999999999', 'ana.silva@email.com', '1990-05-12'),
(2, 'João Pereira', '987.654.321-00', '11988888888', 'joao.pereira@email.com', '1985-07-20'),
(3, 'Maria Souza', '456.789.123-00', '11977777777', 'maria.souza@email.com', '1992-09-15'),
(4, 'Carlos Santos', '789.123.456-00', '11966666666', 'carlos.santos@email.com', '1988-11-05'),
(5, 'Luana Costa', '321.654.987-00', '11955555555', 'luana.costa@email.com', '1995-03-10');

-- Inserir registros na tabela de funcionarios
INSERT INTO funcionarios (id, nome, cpf, telefone, cargo) VALUES
(1, 'Paula Oliveira', '111.222.333-00', '11933333333', 'Garçon'),
(2, 'Felipe Nunes', '444.555.666-00', '11944444444', 'Garçon'),
(3, 'Gabriel Ramos', '777.888.999-00', '11922222222', 'Cozinheiro'),
(4, 'Isabela Lima', '000.111.222-00', '11911111111', 'Gerente'),
(5, 'Rafael Alves', '333.444.555-00', '11900000000', 'Auxiliar de Cozinha');

-- Inserir registros na tabela de mesas
INSERT INTO mesas (id, capacidade) VALUES
(1, 4),
(2, 2),
(3, 6),
(4, 8),
(5, 4);

-- Inserir registros na tabela de pratos
INSERT INTO pratos (id, nome, descricao, preco) VALUES
(1, 'Pizza Margherita', 'Pizza com tomate, queijo e manjericão', 40.00),
(2, 'Hambúrguer', 'Hambúrguer artesanal com queijo cheddar', 25.00),
(3, 'Salmão Grelhado', 'Salmão grelhado com legumes', 50.00),
(4, 'Risoto de Funghi', 'Risoto com cogumelos funghi', 35.00),
(5, 'Bolo de Chocolate', 'Bolo de chocolate com cobertura', 15.00);

-- Inserir registros na tabela de pedidos
INSERT INTO pedidos (id, id_cliente, data_hora) VALUES
(1, 1, '2024-09-25 12:30:00'),
(2, 2, '2024-09-25 13:00:00'),
(3, 3, '2024-09-25 13:15:00'),
(4, 4, '2024-09-25 14:00:00'),
(5, 5, '2024-09-25 14:30:00');

-- Inserir registros na tabela de reservas
INSERT INTO reservas (id, id_cliente, id_mesa, data_hora) VALUES
(1, 1, 1, '2024-09-26 19:00:00'),
(2, 2, 2, '2024-09-26 20:00:00'),
(3, 3, 3, '2024-09-26 21:00:00'),
(4, 4, 4, '2024-09-26 19:30:00'),
(5, 5, 5, '2024-09-26 20:30:00');

-- Inserir registros na tabela de atende
INSERT INTO atende (id, id_funcionario, id_pedido) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

-- Inserir registros na tabela de inclui (pedido x prato)
INSERT INTO inclui (id, id_pedido, id_prato) VALUES
(1, 1, 1),
(2, 1, 5),
(3, 2, 2),
(4, 3, 3),
(5, 4, 4);
