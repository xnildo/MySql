create database rh_empresa;
use rh_empresa;

create table funcionarios(
id_func bigint primary key auto_increment,
nome varchar(255) not null,
rg varchar(9) not null unique,
cargo varchar(255) not null,
salario decimal(6,2) not null,
hrExtra int(3)
);

insert into funcionarios(nome, rg, cargo, salario, hrExtra) values("Maria de Souza", 482762789, "Gerente", 5000, 15);
insert into funcionarios(nome, rg, cargo, salario, hrExtra) values("Marcos de Souza", 484462789, "Gerente", 5000, 15);
insert into funcionarios(nome, rg, cargo, salario, hrExtra) values("Ana Oliveira", 412762709, "Secretária", 2800, 10);
insert into funcionarios(nome, rg, cargo, salario, hrExtra) values("Geroge daCunha", 227283826, "Estagiário", 1000, 0);
insert into funcionarios(nome, rg, cargo, salario, hrExtra) values("Danilo", 332762789, "Desenvolvedor Pleno", 8000, 7);
insert into funcionarios(nome, rg, cargo, salario, hrExtra) values("Pamela", 222762789, "Desenvolvedor sênior", 9900, 3);

select * from funcionarios 
where salario > 2000;

select * from funcionarios 
where salario < 2000;

update funcionarios set nome = "George da Cunha"
where id_func = 4;

update funcionarios set cargo = "Desenvolvedor Junior"
where id_func = 4;

select * from funcionarios ;