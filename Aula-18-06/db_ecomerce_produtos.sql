create database db_ecomerce;
use db_ecomerce;

create table tb_produtos(
id bigint primary key auto_increment,
categoria varchar(255) not null,
nome varchar(255) not null,
preco decimal(6,2) not null,
qtdEstoque int
);

insert into tb_produtos( categoria,nome, preco,  qtdEstoque) values('Monitor','Hp 24', 550 , 20);
insert into tb_produtos( categoria,nome, preco,  qtdEstoque) values('ssd', 'HD Ssd 480gb', 309.5, 10);
insert into tb_produtos(categoria, nome, preco,  qtdEstoque) values('Ssd','HD Ssd 240gb', 188 ,  15);
insert into tb_produtos( categoria,nome, preco,  qtdEstoque) values('Ssd','HD Ssd 100gb', 135 ,  20);
insert into tb_produtos( categoria,nome, preco,  qtdEstoque) values('PenDrive','Sata 32gb', 24.9 ,  50);
insert into tb_produtos( categoria,nome, preco, qtdEstoque) values('PenDrive','Kingston 32gb', 30 ,  40);
insert into tb_produtos(categoria, nome, preco,  qtdEstoque) values('Monitor','Sansung 29', 700 ,  30);
insert into tb_produtos(categoria, nome, preco,  qtdEstoque) values('Teclado','Philco ', 199 ,  28);

select * from tb_produtos
where preco > 500;

select * from tb_produtos
where preco < 500;

update tb_produtos set qtdEstoque = qtdEstoque + 5
where id = 3;

select * from tb_produtos;
