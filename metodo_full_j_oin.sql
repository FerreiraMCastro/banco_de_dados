
-- **Criando as tabelas disciplinas e alunos
 create table disciplinas(
	id_disciplina serial primary key,
	nome_disciplina varchar(50) not null,
	nome_professor varchar(50) not null
);

 create table alunos(
 	id_alunos serial primary key,
 	nome_alunos varchar(50) not null,
 	disciplinas_id int,
 	foreign key (disciplinas_id)
 	 references disciplinas
	 			(id_disciplina) 
 );

--Inserindo dados nas tabelas

 insert into disciplinas
 (nome_disciplina, nome_professor)
 	values('POO', 'Bia Tavares');

 insert into alunos(nome_alunos, disciplinas_id)
 values('Malu',1);

--Moatrando as tabelas
select nome_alunos, nome_disciplina from alunos
left join disciplinas on disciplinas.id_disciplina = alunos.disciplinas_id
union
select nome_alunos, nome_disciplina from alunos
right join disciplinas 
	on disciplinas.id_disciplina = alunos.disciplinas_id;

--Simplificando a consulta com FULL JOIN

select nome_alunos, nome_disciplina 
from alunos
full join disciplinas on disciplinas.id_disciplina = alunos.disciplinas_id;
