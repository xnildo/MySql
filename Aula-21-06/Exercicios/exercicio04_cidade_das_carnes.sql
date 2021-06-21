create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino",true);
insert into tb_categoria (descricao, ativo) values ("Suino",true);
insert into tb_categoria (descricao, ativo) values ("Aves",true);
insert into tb_categoria (descricao, ativo) values ("pertence feijoada",true);
insert into tb_categoria (descricao, ativo) values ("imbutidos",true);
insert into tb_categoria (descricao, ativo) values ("soja",true);
insert into tb_categoria (descricao, ativo) values ("outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("ASA",40.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha",20.00,30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("coxa de frango",20.00,30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon",30.00,30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("hamburguer",60.00,30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim",20.00,30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango",25.00,30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco",20.00,30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame",18.00,30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("medalhao",50.00,30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("mocoto",20.00,30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("chuleta",20.00,30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("acendedor de churrasqueira",20.00,30);
insert into tb_produtos (nome, preco, qtProduto) values ("soprador de churrasqueira",35.00,30);

select * from tb_produtos;

-- ordem crescente por nome
select * from tb_produtos order by nome;

-- ordem decrescente por nome
select * from tb_produtos order by nome desc;

-- selecionar se os 2 forem 
select * from tb_produtos 
where preco > 20 and categoria_id = 1;

-- selecionar se os um ou outro  forem
select * from tb_produtos 
where preco > 20 or categoria_id = 1;

-- selecionar se os não  forem
select * from tb_produtos 
where not categoria_id = 1;

-- usando o LIKE 
select * from tb_produtos 
where nome like "%ha%";

-- usando o IN  preços de 20, 30 ,40
select * from tb_produtos 
where preco in (20, 30 ,40);

-- usando o Betwen precos entre 20 e 40
select * from tb_produtos 
where preco between 20 and 40;

-- usando o Betwen com datas
select * from tb_produtos 
where dtvalidade between '2021-11-07' and '2021-11-15'
order by dtvalidade, nome;

-- contar produtos com count()
select count(*) from tb_produtos;

select count(categoria_id) from tb_produtos;

-- somar os precos de todos produtos com sum()
select sum(preco) from tb_produtos;

-- retorna a média do preços
select avg(preco) as preco_medio from tb_produtos;

-- retorna a média do preços de todas as categorias
select categoria_id, avg(preco) as preco_medio from tb_produtos group by categoria_id;

-- valor maximo , o maior preço
select max(preco) from tb_produtos;

-- valor minimo , o menor preço
select min(preco)  from tb_produtos;


-- nome e preco maior 
select nome , preco from tb_produtos where preco = (select max(preco) from tb_produtos);


-- INNER JOIN 
select tb_produtos.nome , tb_produtos.preco ,tb_produtos.qtproduto, 
tb_categoria.descricao ,tb_categoria.ativo 
from tb_produtos
inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- RIGHT JOIN 
select tb_produtos.nome , tb_produtos.preco ,tb_produtos.qtproduto ,
tb_categoria.descricao ,tb_categoria.ativo 
from tb_produtos
right join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;


-- LEFT JOIN 
select tb_produtos.nome , tb_produtos.preco ,tb_produtos.qtproduto ,
tb_categoria.descricao ,tb_categoria.ativo 
from tb_produtos
left join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;





