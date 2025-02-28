CREATE DATABASE IF NOT EXISTS i9Storage;

USE i9Storage;

CREATE TABLE IF NOT EXISTS Empresa (
CNPJ char(11) primary key,
nome varchar(40),
dtAtivacao date 
);

CREATE TABLE IF NOT EXISTS Funcionario (
idMatricula int primary key,
nome varchar(70),
CPF char(11),
Cargo varchar(20),
dtAdmissao date,
fkEmpresa char(11),
CONSTRAINT empresa_funcionario foreign key (fkEmpresa) references Empresa(CNPJ)
);

CREATE TABLE IF NOT EXISTS Usuario(
fkMatricula int primary key,
email varchar(80)
);

CREATE TABLE IF NOT EXISTS Produto(
idProduto int primary key
);

CREATE TABLE IF NOT EXISTS Pratos(
idPrato int primary key
);

CREATE TABLE IF NOT EXISTS PedidoComanda(
idPedidoComanda int primary key
);