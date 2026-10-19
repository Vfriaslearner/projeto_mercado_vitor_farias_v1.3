CREATE DATABASE banco_quitandaria_goda;
USE banco_quitandaria_goda;

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (75) NOT NULL,
    categoria VARCHAR (50) NOT NULL,
    preco DECIMAL (10,2) NOT NULL,
    quantidade_estoque INT NOT NULL
);

CREATE TABLE clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL UNIQUE,
    email VARCHAR (100) NOT NULL UNIQUE,
    telefone VARCHAR (15) NOT NULL ,
    cpf CHAR (11) UNIQUE,
    endereco VARCHAR (200) NOT NULL
);

CREATE TABLE vendas (
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    data_venda DATETIME NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

CREATE TABLE fornecedores (
    id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL UNIQUE,
    email VARCHAR (100) NOT NULL,
    telefone VARCHAR (15) NOT NULL,
    cnpj VARCHAR (14) UNIQUE
);

CREATE TABLE estoque (
    id_estoque INT AUTO_INCREMENT PRIMARY KEY,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)

);

CREATE TABLE  funcionarios (
    id_funcionario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR (100) NOT NULL,
    email VARCHAR (100) NOT NULL UNIQUE,
    telefone VARCHAR (15) NOT NULL,
    cpf CHAR (11) UNIQUE,
    cargo VARCHAR (50) NOT NULL,
    salario DECIMAL (10,2) NOT NULL
);



