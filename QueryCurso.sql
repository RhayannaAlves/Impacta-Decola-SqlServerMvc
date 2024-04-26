create database dbCurso;

use dbCurso;

create table tbl_cursos (
	idcurso int,
	curso varchar(80) not null,
	modalidade varchar(50) not null,
	duracao varchar(50),
	constraint pk_idcurso primary key(idcurso),
);

create table tbl_alunos (
	idaluno int,
	nome varchar(100) not null,
	idcurso int,
	email varchar(100) not null,
	constraint pk_idaluno primary key(idaluno),
	constraint fk_idcurso foreign key(idcurso)
	references  tbl_cursos (idcurso) 
);

select * from tbl_cursos
select * from tbl_alunos


Insert into tbl_cursos (idcurso, curso, modalidade, duracao)
Values
( 1, 'Análise e Desenvolvimento de Sistemas', 'EAD', '2 anos'),
( 2, 'Tecnologia da Informação', 'Presencial', '4 anos');


Insert into tbl_alunos (idaluno, nome, idcurso, email)
Values
( 101, 'Maria Ferreira', 2, 'maria.f@hotmail.com'),
( 102, 'João Alves', 1, 'j.alves@gmail.com');