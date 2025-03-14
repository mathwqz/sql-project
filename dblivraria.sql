-- Banco de dados de livraria
-- Este banco de dados será para gerenciar os livros

-- Criar banco de dados
CREATE DATABASE livraria;

-- Criar tabela de livros
CREATE TABLE livros (
    ID_Livro INT PRIMARY KEY,
    Titulo VARCHAR(255),
    Autor VARCHAR(255),
    Editora VARCHAR(255),
    Endereço_Editora VARCHAR(255),
    Categpria VARCHAR(255)
);

-- Criar tabela de editoras
CREATE TABLE Editoras (
ID_Editoras SERIAL PRIMARY KEY,
Nome VARCHAR(255),
Endereço VARCHAR(255)
);
ALTER TABLE livros 
ADD ID_Editora INT REFERENCES Editoras(ID_Editoras);

ALTER TABLE livros
DROP COLUMN Editora,
DROP COLUMN Endereço_Editora;

-- Criar tabela de categorias
CREATE TABLE Categorias (
ID_Categoria SERIAL PRIMARY KEY,
Nome VARCHAR(255)
);

ALTER TABLE Livros
ADD COLUMN ID_Categoria INT REFERENCES
Categorias(ID_Categoria);

ALTER TABLE Livros
DROP COLUMN Categoria;