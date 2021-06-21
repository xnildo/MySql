create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint primary key auto_increment,
nome varchar(255) not null,
descricao varchar(255) 
);
insert into tb_categoria(nome, descricao) values("Acabamento", "Para obras fase final ou pequenas reformas");
insert into tb_categoria(nome, descricao) values("Elétrica", "Elétrica Geral da obra ou Residencia");
insert into tb_categoria(nome, descricao) values("Hidráulica", "Encanamentos e partes Hidráulica da obra");
insert into tb_categoria(nome, descricao) values("Pintura", "Estética da Obra ");
insert into tb_categoria(nome, descricao) values("Decoração", "Materiais e itens para decoração");

create table tb_produto(
id bigint primary key auto_increment,
nome varchar(255) not null,
preco decimal(10,2) not null, 
qtdEstoque bigint(10),
descricao varchar(255),
id_categoria bigint not null,
foreign key(id_categoria) references tb_categoria(id)
);
insert into tb_produto(nome, preco, qtdEstoque, descricao, id_categoria) 
values("Areia", 150, 1000, "agregado miúdo resultante da fragmentação de rochas como basalto, quartzo, sílica, calcário, granito e gnaisse", 1);

insert into tb_produto(nome, preco, qtdEstoque, descricao, id_categoria) 
values("Pedra Brita", 160, 2000, "agregado graúdo resultante da fragmentação mecânica de rochas como basalto, granito, gnaisse e calcário", 1);

insert into tb_produto(nome, preco, qtdEstoque, descricao, id_categoria) 
values("Argamassa", 15.45, 345, "A argamassa é uma massa homogênea com propriedades de aderência e endurecimento", 1);

insert into tb_produto(nome, preco, qtdEstoque, descricao, id_categoria) 
values("Tinta", 180, 200, "A tinta é uma substância líquida, comumente pigmentada, utilizada como revestimento e acabamento de paredes e esquadrias em geral", 4);

insert into tb_produto(nome, preco, qtdEstoque, descricao, id_categoria) 
values("Canos", 25, 500, "Eles fazem o transporte da água da rua para a caixa d’água e os pontos de uso como chuveiros e torneiras", 3);

insert into tb_produto(nome, preco, qtdEstoque, descricao, id_categoria) 
values("Fio", 450, 300, "Fazem a ligação da eletricidade para a residencia", 2);

insert into tb_produto(nome, preco, qtdEstoque, descricao, id_categoria) 
values("Pia ", 248.88, 60, "Usadas em banheiros e cozinhas ", 5);

insert into tb_produto(nome, preco, qtdEstoque, descricao, id_categoria) 
values("Texturas", 55, 570, "Aplicadas nas paredes  como uma pintura", 5);

select * from tb_produto 
where preco > 50;

select * from tb_produto 
where preco between  50 and 200;

select * from tb_produto 
where nome like "a%";

select * from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria ;

select tb_produto.nome as Nome, tb_produto.preco as R$, tb_categoria.nome as Categoria 
from tb_produto 
inner join tb_categoria on tb_categoria.id = tb_produto.id_categoria
where tb_categoria.nome = "Acabamento" ;
