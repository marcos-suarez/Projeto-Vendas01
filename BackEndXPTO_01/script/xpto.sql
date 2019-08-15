create database xpto;

create table xpto.usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  login VARCHAR(255),
  senha VARCHAR(255),
  status VARCHAR(255),
  tipo VARCHAR(255),
  primary key (id));

create table xpto.pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  cpf VARCHAR(255),
  tipo VARCHAR(255),
  email VARCHAR(255),
  primary key (id));

create table xpto.usuarios_pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  idPessoa BIGINT,
  idUsuario BIGINT, 
  observacao VARCHAR(255),
  primary key (id));

ALTER TABLE xpto.usuarios_pessoas ADD CONSTRAINT FK_PES_USU_ID FOREIGN KEY (IDPESSOA) REFERENCES xpto.PESSOAS (ID);

ALTER TABLE xpto.usuarios_pessoas ADD CONSTRAINT FK_USU_PES_ID FOREIGN KEY (IDUSUARIO) REFERENCES xpto.USUARIOS (ID);  

INSERT INTO `xpto`.`pessoas` (`id`, `nome`, `cpf`, `tipo`, `email`) VALUES ('1', 'Alexandre Bittencourt Faria', '13508122859', 'Prof', 'abittencourtfaria@gmail.com');
INSERT INTO `xpto`.`pessoas` (`id`, `nome`, `cpf`, `tipo`, `email`) VALUES ('2', 'Lais Helena Scuracchio Bittencourt Faria', '123456789', 'Func', 'lais.scuracchio@gmail.com');

INSERT INTO `xpto`.`usuarios` (`id`, `login`, `senha`, `status`, `tipo`) VALUES ('1', 'BITTENCOURT', 'ABFABF010101', 'ATIVO', 'ADM');
INSERT INTO `xpto`.`usuarios` (`id`, `login`, `senha`, `status`, `tipo`) VALUES ('2', 'SCURACCHIO', 'ABFABF010101', 'ATIVO', 'VISITANTE');

INSERT INTO `xpto`.`usuarios_pessoas` (`id`, `idPessoa`, `idUsuario`, `observacao`) VALUES ('1', '1', '1', 'TESTE BITTENCOURT');
INSERT INTO `xpto`.`usuarios_pessoas` (`id`, `idPessoa`, `idUsuario`, `observacao`) VALUES ('2', '2', '2', 'TESTE LAIS');
