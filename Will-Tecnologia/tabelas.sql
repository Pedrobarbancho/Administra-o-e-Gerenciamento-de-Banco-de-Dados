-- Criação de tabelas

create table usuario(
id int IDENTTITY(1,1) PRIMARY KEY,
nome varchar(30) unique NOT NULL,
senha varchar(255) NOT NULL,
perfil varchar(20) NOT NULL,
);

create table logs(
id_logs int IDENTITY(1,1) PRIMARY KEY,
usuario varchar(30) unique,
acao_realizada varchar(50),
data_evento datetime DEFAULT GETDATE(), -- Pegar a data automatico
ip_maquina varchar(12),
foreign key (usuario) references usuario (nome)
);

create table clientes(
id_cliente int IDENTITY(1,1) PRIMARY KEY,
nome_cliente varchar(100) NOT NULL,
email varchar(100) unique NOT NULL,
cpf varchar(255) unique NOT NULL,
telefone varchar(14) unique NOT NULL,
cidade varchar(40) NULL,
usuario_cadastrado varchar(30) unique,
data_cadastro datetime DEFAULT GETDATE(),
status_cliente varchar(20)
);

create table vendas(
id_venda int IDENTITY(1,1) PRIMARY KEY,
id_cliente int ,
quantidade_itens int NOT NULL,
valor_venda int NOT NULL,
vendedor_responsavel varchar(20) NULL,
data_venda datetime DEFAULT GETDATE(),
statos_venda varchar(15),
forma_pagamento varchar(15),
foreign key (id_cliente) references clientes (id_cliente)
);


create table historicos(
id_historico int IDENTITY(1,1) PRIMARY KEY,
id_cliente int,
nome_cliente varchar(100),
email varchar(100),
data_arquivo datetime NOT NULL,
motivo_arquivo varchar(50) NOT NULL,
tempo_cliente datetime NOT NULL,
foreign key (id_cliente) references clientes (id_cliente),
foreign key (email) references clientes (email),
);

create table backups(
id_backup int IDENTITY(1,1) PRIMARY KEY,
nome_arquivo varchar(50),
tamanho_arquivo	varchar(10),
data_backup datetime DEFAULT GETDATE(),
status_backup varchar(20),
);

create table sensores(
id_leitura int IDENTITY(1,1) PRIMARY KEY,
id_sensor varchar(25),
setor varchar(15),
temperatura real,
umidade real,
data_leitura datetime DEFAULT GETDATE() 
);