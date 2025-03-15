-- Criando o banco de dados
CREATE DATABASE loja;
USE loja;

-- Criando tabelas
CREATE TABLE clientes(
	cod_cliente int primary key auto_increment,
    nome varchar(100) not null,
    endereco varchar(100) not null,
    cidade varchar(30) not null,
    cep int not null
);

CREATE TABLE pedidos(
	num_pedido int primary key auto_increment,
    data_pedido datetime not null,
    item varchar(150) ,
    valor float not null,
    cod_cliente int,
    foreign key (cod_cliente) references clientes(cod_cliente)
);

-- Inserindo informações
insert into clientes(cod_cliente, nome, endereco, cidade, cep)
values
	(50843, 'Bruno Costa Lima', 'Rua tal', 'São Paulo, SP', 69696969);
    
insert into pedidos(num_pedido, data_pedido, item, valor, cod_cliente)
values
	();
    
-- Teste
select * from clientes;
select * from pedidos;