create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint primary key auto_increment,
nome varchar(255),
classe varchar(255)
);

insert into tb_classe(nome, classe) values("Flamejante", "Fogo");
insert into tb_classe(nome, classe) values("Gongelante", "Gelo");
insert into tb_classe(nome, classe) values("Molhado", "Água");
insert into tb_classe(nome, classe) values("Estrondoso", "Relâmpago");
insert into tb_classe(nome, classe) values("Verde", "Floresta");

create table tb_personagem(
id bigint primary key auto_increment,
nome varchar(255) not null,
forcaAtaque int(6) not null,
forcaDefesa int(6) not null,
poderEspecial varchar(255),
id_classe bigint not null,
FOREIGN KEY (id_classe) REFERENCES tb_classe (id)
);

insert into tb_personagem(nome, forcaAtaque, forcaDefesa, poderEspecial, id_classe) values("Thor", 500, 400, "Martelo de Trovão", 4);
insert into tb_personagem(nome, forcaAtaque, forcaDefesa, poderEspecial, id_classe) values("Aqua", 300, 350, "Ondas Gigantes", 3);
insert into tb_personagem(nome, forcaAtaque, forcaDefesa, poderEspecial, id_classe) values("Raiden", 450, 420, "Raio de Trovão", 4);
insert into tb_personagem(nome, forcaAtaque, forcaDefesa, poderEspecial, id_classe) values("Jhonny", 280, 100, "Floresta Negra", 5);
insert into tb_personagem(nome, forcaAtaque, forcaDefesa, poderEspecial, id_classe) values("Dragonate", 520, 450, "Rugido Flamejante", 1);
insert into tb_personagem(nome, forcaAtaque, forcaDefesa, poderEspecial, id_classe) values("Eva", 388, 300, "Fruto Proibido", 5);
insert into tb_personagem(nome, forcaAtaque, forcaDefesa, poderEspecial, id_classe) values("Shark", 330, 400, "Mordida Fatal", 3);
insert into tb_personagem(nome, forcaAtaque, forcaDefesa, poderEspecial, id_classe) values("Flam", 400, 360, "Chama Dourada", 1);

select * from tb_personagem
where forcaAtaque > 400;

select * from tb_personagem
where forcaDefesa between 400 and 500;

select nome as NOME, forcaAtaque as ATAQUE, forcaDefesa as DEFESA, poderEspecial as "GOLPE ESPECIAL" 
from tb_personagem
where nome like "D%" ;

select tb_personagem.nome , tb_personagem.forcaAtaque ,
tb_personagem.forcaDefesa ,  tb_classe.classe
from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.id_classe;

select tb_personagem.nome as NOME, tb_classe.classe as CLASSE 
from tb_personagem 
inner join tb_classe on tb_classe.id = tb_personagem.id_classe
where tb_classe.id = 1 ;



