create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint primary key auto_increment,
categoria varchar(255) not null,
professor varchar(255) not null
);
insert into tb_categoria(categoria, professor) values("Back-End", "João Vitor");
insert into tb_categoria(categoria, professor) values("Front-End", "Eduardo Lima");
insert into tb_categoria(categoria, professor) values("Banco de Dados", "Mariana Gomes");
insert into tb_categoria(categoria, professor) values("Ciências de Dados", "Luiz Ricardo");
insert into tb_categoria(categoria, professor) values("Programação", "Marta Pereira");

select * from tb_categoria;

create table tb_curso(
id bigint primary key auto_increment,
curso varchar(255) not null,
tempoTotal int(5) not null,
periodo varchar(255) not null,
preco decimal(10,2) not null ,
id_categoria bigint not null,
foreign key(id_categoria) references tb_categoria(id) 
);

insert into tb_curso(curso, tempoTotal, periodo, preco, id_categoria)
values("Html/css", 2, "Noturno", 500, 2);

insert into tb_curso(curso, tempoTotal, periodo, preco, id_categoria)
values("Python", 3, "Tarde", 1000, 1);

insert into tb_curso(curso, tempoTotal, periodo, preco, id_categoria)
values("Java", 12, "Noturno", 3500, 5);

insert into tb_curso(curso, tempoTotal, periodo, preco, id_categoria)
values("Data-Analytics", 6, "Manhã", 2400, 4);

insert into tb_curso(curso, tempoTotal, periodo, preco, id_categoria)
values("MySql", 4, "Noturno", 750, 3);

insert into tb_curso(curso, tempoTotal, periodo, preco, id_categoria)
values("UX/UI", 5, "Noturno", 800, 2);

insert into tb_curso(curso, tempoTotal, periodo, preco, id_categoria)
values("BootStrap", 2, "Tarde", 350, 2);

insert into tb_curso(curso, tempoTotal, periodo, preco, id_categoria)
values("C-Sharp", 5, "Noturno", 1250, 5);

select * from tb_curso 
where preco > 500;

select * from tb_curso 
where preco between  500 and 1500;

select * from tb_curso
inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria ;

select tb_curso.curso as CURSO, tb_curso.preco as R$, tb_categoria.categoria as CATEGORIA 
from tb_curso 
inner join tb_categoria on tb_categoria.id = tb_curso.id_categoria
where tb_categoria.id = 2 ;