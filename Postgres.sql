CREATE DATABASE ESCOLA;
--No Pgadmim só há uma conexão com um database por vez, por isso 
--não utilizei o comando USE ESCOLA.
create table alunos (
	id_aluno SERIAL PRIMARY KEY,
	nome varchar(50) not null,
	email varchar(254)not null,
	endereco varchar(150) not null
);

insert into alunos
(id_aluno, nome, email, endereco)
values
('Juliana Gueira','ju@gmail.com','Rua Nobel da Paz, 615, Gorel-SP');

select * from alunos;
