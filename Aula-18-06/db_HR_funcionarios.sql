create database db_RH;
use db_RH;

create table tb_funcionarios(
id bigint primary key auto_increment,
nome varchar(255) not null,
rg varchar(9) not null unique,
cargo varchar(255) not null,
salario decimal(6,2) not null,
hrExtra int
);

insert into tb_funcionarios(nome, rg, cargo, salario, hrExtra) values("Maria de Souza", 482762789, "Gerente", 5000, 15);
insert into tb_funcionarios(nome, rg, cargo, salario, hrExtra) values("Marcos de Souza", 484462789, "Gerente", 5000, 15);
insert into tb_funcionarios(nome, rg, cargo, salario, hrExtra) values("Ana Oliveira", 412762709, "Secretária", 2800, 10);
insert into tb_funcionarios(nome, rg, cargo, salario, hrExtra) values("Geroge daCunha", 227283826, "Estagiário", 1000, 0);
insert into tb_funcionarios(nome, rg, cargo, salario, hrExtra) values("Danilo", 332762789, "Desenvolvedor Pleno", 8000, 7);
insert into tb_funcionarios(nome, rg, cargo, salario, hrExtra) values("Pamela", 222762789, "Desenvolvedor sênior", 9900, 3);

select * from tb_funcionarios 
where salario > 2000;

select * from tb_funcionarios 
where salario < 2000;

update tb_funcionarios set nome = "George da Cunha"
where id = 4;

update tb_funcionarios set cargo = "Desenvolvedor Junior"
where id = 4;

select * from tb_funcionarios ;