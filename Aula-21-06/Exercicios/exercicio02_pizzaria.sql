create database db_pizzaria_legal;
use db_pizzaria_legal;

create table tb_categoria(
id bigint primary key auto_increment,
tamanho varchar(255) not null,
formaPagamento varchar(255) not null, 
retirar boolean not null
);

insert into tb_categoria(tamanho, formaPagamento, retirar ) values("Médio", "Cartão Crédito", false);
insert into tb_categoria(tamanho, formaPagamento, retirar ) values("Grande", "Cartão Crédito", true);
insert into tb_categoria(tamanho, formaPagamento, retirar ) values("Pequeno", "Pix", true);
insert into tb_categoria(tamanho, formaPagamento, retirar ) values("Grande", "Dinheiro", false);
insert into tb_categoria(tamanho, formaPagamento, retirar ) values("Médio", "Cartão Débito", false);


create table tb_pizza(
id bigint primary key auto_increment,
sabor varchar(255) not null,
preco decimal(10,2) not null,
ingredientes varchar(255), 
bordaRecheada boolean,
id_categoria bigint not null,
foreign key(id_categoria) references tb_categoria(id)
);

insert into tb_pizza(sabor, preco, ingredientes, bordaRecheada, id_categoria)
values("Portuguesa", 38.50, "presunto, queijo, tomate, pimentão, ovo cozido, cebola ", true, 1);

insert into tb_pizza(sabor, preco, ingredientes, bordaRecheada, id_categoria)
values("Bahiana", 35, "Molho de tomate, mussarela, calabresa ralada, molho de pimenta, tomate, azeitona e orégano. ", true, 2);

insert into tb_pizza(sabor, preco, ingredientes, bordaRecheada, id_categoria)
values("Marguerita", 40.99, "molho de tomate, manjericão, rodelas de tomate fresco, azeitona, queijo muçarela e orégano salpicado", false, 1);

insert into tb_pizza(sabor, preco, ingredientes, bordaRecheada, id_categoria)
values("Frango com catupiry", 33.99, "queijo muçarela, frango, catupiry, sálvia e molho de tomate", false, 1);

insert into tb_pizza(sabor, preco, ingredientes, bordaRecheada, id_categoria)
values("Pão de alho", 39.50, "alho, requeijão, queijo e salsinha", true, 4);

insert into tb_pizza(sabor, preco, ingredientes,bordaRecheada, id_categoria)
values("Carne seca com banana", 42, "carne seca sem sal e picada, cebolinha verde, banana-nanica em rodelas e requeijão", true, 1);

insert into tb_pizza(sabor, preco, ingredientes,bordaRecheada, id_categoria)
values("Mexicana", 44.50, "nachos, carne moída apimentada e uma mistura de queijos cheddar, muçarela e requeijão", false, 3);

insert into tb_pizza(sabor, preco, ingredientes, bordaRecheada, id_categoria)
values("Alcachofra", 37.20, "muçarela de búfala, corações de alcachofra e azeitonas fatiadas", false, 2);

select * from tb_categoria;

select * from tb_pizza
where preco > 35;

select * from tb_pizza
where preco between 35 and 40;

select * from tb_pizza
where sabor like "c%";

select tb_pizza.sabor as SABOR, tb_pizza.preco as R$, tb_categoria.tamanho as TAMANHO
from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria 
where tb_categoria.tamanho = "Médio"; 

select tb_pizza.preco as R$,  tb_categoria.formaPagamento as "FORMA PAGAMENTO"
from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.id_categoria 
where tb_categoria.formaPagamento like "Cartao%"; 