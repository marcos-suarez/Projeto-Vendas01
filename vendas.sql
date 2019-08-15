create database vendas;

create table vendas.usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  login VARCHAR(255),
  senha VARCHAR(255),
  status VARCHAR(255),
  tipo VARCHAR(255),
  primary key (id));

create table vendas.pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  cpf VARCHAR(255),
  tipo VARCHAR(255),
  email VARCHAR(255),
  primary key (id));

create table vendas.usuarios_pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  idPessoa BIGINT,
  idUsuario BIGINT, 
  observacao VARCHAR(255),
  primary key (id));
  
create table vendas.clientes (
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    cpf VARCHAR(255),
    datanasc VARCHAR(255),
    cidade VARCHAR(255),
    tempofid BIGINT, 
    contato VARCHAR(255),
    primary key(id));
    
create table vendas.estoque (
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome_est VARCHAR(255),
    aluguel FLOAT,
    contas FLOAT,
    primary key(id));

create table vendas.produto (
	id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    tipo VARCHAR(255),
    qtd BIGINT,
    valor FLOAT,
    peso FLOAT,
    primary key(id));
    
create table vendas.pedido (
	id BIGINT NOT NULL AUTO_INCREMENT,
    idCli BIGINT,	
    idProd BIGINT,
    idEst BIGINT,
    dat DATE,
    valor FLOAT,
    primary key(id));

ALTER TABLE vendas.usuarios_pessoas ADD CONSTRAINT FK_PES_USU_ID FOREIGN KEY (IDPESSOA) REFERENCES vendas.PESSOAS (ID);
ALTER TABLE vendas.usuarios_pessoas ADD CONSTRAINT FK_USU_PES_ID FOREIGN KEY (IDUSUARIO) REFERENCES vendas.USUARIOS (ID);  

ALTER TABLE vendas.pedido ADD CONSTRAINT FK_PED_ID_CLI FOREIGN KEY (IDCLI) REFERENCES vendas.CLIENTES(ID);
ALTER TABLE vendas.pedido ADD CONSTRAINT FK_PED_ID_PROD FOREIGN KEY (IDPROD) REFERENCES vendas.PRODUTO(ID);
ALTER TABLE vendas.pedido ADD CONSTRAINT FK_PED_ID_EST FOREIGN KEY (IDEST) REFERENCES vendas.ESTOQUE(ID);

INSERT INTO `vendas`.`pessoas` (`id`, `nome`, `cpf`, `tipo`, `email`) VALUES ('1', 'Alexandre Bittencourt Faria', '13508122859', 'Prof', 'abittencourtfaria@gmail.com');
INSERT INTO `vendas`.`pessoas` (`id`, `nome`, `cpf`, `tipo`, `email`) VALUES ('2', 'Marcos Augusto Suarez Bezerra', '123456789', 'Alun', 'marcos_augusto_suarez@yahoo.com.br');

INSERT INTO `vendas`.`usuarios` (`id`, `login`, `senha`, `status`, `tipo`) VALUES ('1', 'BITTENCOURT', 'ABFABF010101', 'ATIVO', 'ADM');
INSERT INTO `vendas`.`usuarios` (`id`, `login`, `senha`, `status`, `tipo`) VALUES ('2', 'SUAREZ', '123456', 'ATIVO', 'ADM');

INSERT INTO `vendas`.`usuarios_pessoas` (`id`, `idPessoa`, `idUsuario`, `observacao`) VALUES ('1', '1', '1', 'TESTE BITTENCOURT');
INSERT INTO `vendas`.`usuarios_pessoas` (`id`, `idPessoa`, `idUsuario`, `observacao`) VALUES ('2', '2', '2', 'TESTE LAIS');

INSERT INTO `vendas`.`clientes`(`id`,`nome`,`cpf`,`datanasc`,`cidade`,`tempofid`,`contato`) VALUES ('1','Leticia Freitas','142.145.584-52','10/10/1965','São Paulo','6','11-985412587');
INSERT INTO `vendas`.`clientes`(`id`,`nome`,`cpf`,`datanasc`,`cidade`,`tempofid`,`contato`) VALUES ('2','Marcos Augusto','162.135.984-12','10/10/1995','São Paulo','2','11-985412582');
INSERT INTO `vendas`.`clientes`(`id`,`nome`,`cpf`,`datanasc`,`cidade`,`tempofid`,`contato`) VALUES ('3','Luis Felippe','322.325.984-02','10/10/1999','São Paulo','1','11-985412532');
INSERT INTO `vendas`.`estoque`(`id`,`nome_est`,`aluguel`,`contas`) VALUES ('1','Quitandinha','1500','1200');
INSERT INTO `vendas`.`estoque`(`id`,`nome_est`,`aluguel`,`contas`) VALUES ('2','Mercadão','2500','1300');
INSERT INTO `vendas`.`produto`(`id`,`nome`,`tipo`,`qtd`,`valor`,`peso`) VALUES ('1','Cebola','Alimento','7','2.50','10');
INSERT INTO `vendas`.`produto`(`id`,`nome`,`tipo`,`qtd`,`valor`,`peso`) VALUES ('2','Batata','Alimento','2','1.70','7');
INSERT INTO `vendas`.`produto`(`id`,`nome`,`tipo`,`qtd`,`valor`,`peso`) VALUES ('3','Cenoura','Alimento','2','2.00','6');
INSERT INTO `vendas`.`produto`(`id`,`nome`,`tipo`,`qtd`,`valor`,`peso`) VALUES ('4','Salsinha','Alimento','5','1.50','2');
INSERT INTO `vendas`.`produto`(`id`,`nome`,`tipo`,`qtd`,`valor`,`peso`) VALUES ('5','Banana','Alimento','1','5.50','15');
INSERT INTO `vendas`.`pedido`(`id`,`idCli`,`idProd`,`idEst`,`dat`,`valor`) VALUES('1','1','1','1','2019-06-10','2500');