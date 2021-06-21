create database db_farmacia_do_bem;
use db_farmacia_do_bem;

create table tb_categoria(
id bigint primary key auto_increment,
nome varchar(255) not null, 
promocao boolean not null
);
insert into tb_categoria(nome,  promocao) values("Cosméticos", true);
insert into tb_categoria(nome,  promocao) values("Suplementos Alimentares",  false);
insert into tb_categoria(nome,  promocao) values("Higiene Pessoal",  false);
insert into tb_categoria(nome,  promocao) values("Genéricos",  true);
insert into tb_categoria(nome,  promocao) values("Intimos",  true);

select * from tb_categoria;

create table tb_produto(
id bigint primary key auto_increment,
nome varchar(255) not null,
preco decimal(10,2) not null, 
receita boolean not null,
publicoAlvo varchar(255),
id_categoria bigint not null,
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_produto(nome,  preco, receita, publicoAlvo, id_categoria) 
values("tintura para cabelo", 15.50, false, "Mulheres", 1);

insert into tb_produto(nome,  preco, receita, publicoAlvo, id_categoria) 
values("creme para barbear", 18.90, false, "Homens", 1);

insert into tb_produto(nome,  preco, receita, publicoAlvo, id_categoria) 
values("absorvente", 12, false, "Mulheres", 5);

insert into tb_produto(nome,  preco, receita, id_categoria) 
values("shampoo", 15, false, 3);

insert into tb_produto(nome,  preco, receita,  id_categoria) 
values("camisinha", 6.70, false, 5);

insert into tb_produto(nome,  preco, receita,  id_categoria) 
values("Rémedio para Dor", 9, true , 4);

insert into tb_produto(nome,  preco, receita, id_categoria) 
values("Escova de dentes", 14, false, 3);

insert into tb_produto(nome,  preco, receita, publicoAlvo, id_categoria) 
values("Lenços Umedecidos", 10, false, "Crianças", 3);

select * from tb_produto
where preco > 15 ;

select * from tb_produto
where preco between 5 and 15 ;

select nome as Produto from tb_produto
where nome like "c%" ;

select tb_produto.nome as PRODUTO, tb_produto.preco as R$, tb_produto.publicoAlvo as ALVO,
tb_categoria.nome as CATEGORIA
from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria 
where tb_produto.preco > 10; 

select tb_produto.nome as PRODUTO, tb_categoria.nome as CATEGORIA
from tb_produto
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria 
where tb_categoria.nome like "Higiene%"; 