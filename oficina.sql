-- criação do banco de dados para o cenário de oficina

-- drop database oficina;
create database oficina;
use oficina;

-- criar tabela clientes

create table cliente(
		CPF varchar (11) primary key,
		Nome varchar(45),
		Telefone varchar(45),
		Endereço varchar(45),
		RG varchar(45),
        Email varchar(45),     
        
        
		constraint unique_cpf_client unique (CPF)
);

-- criar tabela veiculo

create table veiculo(
		Placa varchar(10) primary key not null,
        classification_kids bool default false,
        category enum('Eletrônico', 'Vestuário', 'Brinquedos', 'Alimentos', 'Móveis') not null,
        avaliação float default 0,
        size varchar(10)
        
);


-- criar tabela ordem de serviço
create table ordemServico(
		idOrdemServico int auto_increment primary key,
        Servico enum('S', 'N'),
		Revisao enum('S', 'N'),        
		TrocaPecaNome varchar(45),
		ConsertoPecaNome varchar(45),
        DataEmissao date,
        DataConclusao date,
        ValorPeca double,
        ValorMaoDeObra double,
        ValorTotal double,
        Orcamento_Realizado enum('S', 'N'),
        OS_Aprovada enum('S', 'N'),
        ServicoExecutado enum('S', 'N'), 
        StatusServico varchar(45)
        
);


-- criar tabela mecanico
create table mecanico(
		idMecanico varchar(45) primary key,
		NomeMec varchar (45) not null,
		EndereçoMec varchar (255),
        EspecialidadeMec varchar (45)
);

-- criar tabela equipe
create table equipe(
		idEquipeMecanico varchar (45) primary key,
        NomeEquipe varchar (255)		
);


show tables;