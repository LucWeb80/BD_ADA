-- Tabela de clientes
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    telefone VARCHAR(20),
    email VARCHAR(100),
    data_nascimento DATE
);

-- Tabela de funcionários
CREATE TABLE funcionarios (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    cpf VARCHAR(14),
    telefone VARCHAR(20),
    cargo VARCHAR(50)
);

-- Tabela de mesas
CREATE TABLE mesas (
    id INT PRIMARY KEY,
    capacidade INT
);

-- Tabela de pratos
CREATE TABLE pratos (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10, 2)
);

-- Tabela de pedidos
CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    id_cliente INT,
    data_hora TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

-- Tabela de reservas
CREATE TABLE reservas (
    id INT PRIMARY KEY,
    id_cliente INT,
    id_mesa INT,
    data_hora TIMESTAMP,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id),
    FOREIGN KEY (id_mesa) REFERENCES mesas(id)
);

-- Tabela de associação de funcionários que atendem pedidos
CREATE TABLE atende (
    id INT PRIMARY KEY,
    id_funcionario INT,
    id_pedido INT,
    FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id)
);

-- Tabela de associação entre pedidos e pratos (muitos-para-muitos)
CREATE TABLE inclui (
    id INT PRIMARY KEY,
    id_pedido INT,
    id_prato INT,
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id),
    FOREIGN KEY (id_prato) REFERENCES pratos(id)
);
