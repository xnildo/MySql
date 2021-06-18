create database db_escola;
use db_escola;

create table alunos(
  id_aluno int  primary key auto_increment,
  nome varchar(255) not null,
  idade int not null,
  curso varchar(255) not null,
  semestre int,
  nota decimal not null
  
);

insert into alunos(nome, idade, curso, semestre, nota) values('João', 27, 'Arquitetura', 4, 9);
insert into alunos(nome, idade, curso, semestre, nota) values('Maria', 18, 'Análise e Desenvolvimento de Sistemas', 2, 8.7);
insert into alunos(nome, idade, curso, semestre, nota) values('Pamela', 27, 'Culinároa', 5, 6.5);
insert into alunos(nome, idade, curso, semestre, nota) values('Rogéro', 37, 'Engenharia', 4, 7);
insert into alunos(nome, idade, curso, semestre, nota) values('Gabriela', 20, 'Artes', 1, 8.4);
insert into alunos(nome, idade, curso, semestre, nota) values('Juliana', 22, 'Ciências da Computação', 3, 5.9 );
insert into alunos(nome, idade, curso, semestre, nota) values('Arnaldo', 29, 'Arquitetura', 4, 7.7);
insert into alunos(nome, idade, curso, semestre, nota) values('Danilo', 27, 'Full Stack', 1, 9.5);

select * from alunos
where nota > 7;


select * from alunos
where nota < 7;

update alunos set semestre =  2
where id_aluno = 3;

select * from alunos;
