create database db_ecomerce;
use db_ecomerce;


create table produtos(
id_produto bigint primary key auto_increment,
categoria varchar(255) not null,
nome varchar(255) not null,
preco decimal(10,2) not null,
qtdEstoque int(10)
);

insert into produtos(categoria, nome, preco, qtdEstoque)  values('Monitor','Hp 24', 550 , 20);
insert into produtos(categoria, nome, preco, qtdEstoque)  values('ssd', 'HD Ssd 480gb', 309.5, 10);
insert into produtos(categoria, nome, preco, qtdEstoque)  values('Ssd','HD Ssd 240gb', 188 ,  15);
insert into produtos(categoria, nome, preco, qtdEstoque)  values('Ssd','HD Ssd 100gb', 135 ,  20);
insert into produtos(categoria, nome, preco, qtdEstoque)  values('PenDrive','Sata 32gb', 24.9 ,  50);
insert into produtos(categoria, nome, preco, qtdEstoque)  values('PenDrive','Kingston 32gb', 30 ,  40);
insert into produtos(categoria, nome, preco, qtdEstoque)  values('Monitor','Sansung 29', 700 ,  30);
insert into produtos(categoria, nome, preco, qtdEstoque)  values('Teclado','Philco ', 199 ,  28);

select * from produtos
where preco > 500;

select * from produtos
where preco < 500;

update produtos set qtdEstoque = qtdEstoque + 5
where id_produto = 3 ;

select categoria as CATEGORIA, nome as NOME, preco as  R$ from produtos;
