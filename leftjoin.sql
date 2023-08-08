create database left_join;
use left_join;

create table clientes(
id_clientes int not null auto_increment,
nome_cliente varchar(50),
nome_contato varchar(50),
endereco varchar(50),
cidade varchar(50),
cep int,
pais varchar(50),
primary key (id_clientes)
);

create table pedidos(
id_pedidos int not null auto_increment,
id_cliente int,
nome_funcionario varchar(50),
data_pedido date,
transportadora varchar(50),
primary key (id_pedidos)
);

insert into clientes(nome_cliente, nome_contato, endereco, cidade, cep, pais)
values ('Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Alemanha');
insert into clientes(nome_cliente, nome_contato, endereco, cidade, cep, pais)
values ('Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'A. de la Constitución 2222', 'México DF', '05021', 'Mexico');
insert into clientes(nome_cliente, nome_contato, endereco, cidade, cep, pais)
values ('Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico');

insert into pedidos(id_cliente, nome_funcionario, data_pedido, transportadora)
values ('2', 'Bernardo', '2023-08-01', '3');
insert into pedidos(id_cliente, nome_funcionario, data_pedido, transportadora)
values ('1', 'Vitor', '2023-08-01', '1');
insert into pedidos(id_cliente, nome_funcionario, data_pedido, transportadora)
values ('3', 'Maria Eduarda', '2023-08-01', '2');

SELECT pedidos.data_pedido, clientes.nome_cliente
FROM pedidos
LEFT JOIN clientes ON pedidos.id_cliente = clientes.id_clientes;
