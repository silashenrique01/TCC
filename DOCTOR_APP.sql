CREATE TABLE tcc.nivelusuario (
  idNivelUsuario int NOT NULL,
  Nivel varchar(12) DEFAULT NULL,
  PRIMARY KEY (idNivelUsuario)
);

CREATE TABLE tcc.usuario (
  nome varchar(25) DEFAULT NULL,
  sobrenome varchar(25) DEFAULT NULL,
  DataNasc varchar(11) DEFAULT NULL,
  sexo varchar(9) DEFAULT NULL,
  nacionalidade varchar(15) DEFAULT NULL,
  Telefone varchar(11) DEFAULT NULL,
  email varchar(25) DEFAULT NULL,
  CPF varchar(11) DEFAULT NULL,
  Endereco varchar(50) DEFAULT NULL,
  bairro varchar(20) DEFAULT NULL,
  UF varchar(2) DEFAULT NULL,
  municipio varchar(30) DEFAULT NULL,
  complemento varchar(30) DEFAULT NULL,
  IdUsuario int NOT NULL AUTO_INCREMENT,
  idNivelUsuario int DEFAULT NULL,
  PRIMARY KEY (IdUsuario),
  KEY idNivelUsuario (idNivelUsuario),
  CONSTRAINT usuario_ibfk_1 FOREIGN KEY (idNivelUsuario) REFERENCES nivelusuario (idNivelUsuario)
);

CREATE TABLE tcc.enfermeiro (
  chAmbulatorio int DEFAULT NULL,
  COREN int NOT NULL,
  chHospital int DEFAULT NULL,
  idNivelUsuario int DEFAULT NULL,
  IdUsuario int DEFAULT NULL,
  KEY IdUsuario (IdUsuario),
  CONSTRAINT enfermeiro_ibfk_2 FOREIGN KEY (IdUsuario) REFERENCES usuario (IdUsuario)
);

CREATE TABLE tcc.medico (
  especialidade varchar(30) DEFAULT NULL,
  CRM int NOT NULL,
  ChHospital int DEFAULT NULL,
  chAmbulatorio int DEFAULT NULL,
  idNivelUsuario int DEFAULT NULL,
  IdUsuario int DEFAULT NULL,
  KEY IdUsuario (IdUsuario),
  CONSTRAINT medico_ibfk_2 FOREIGN KEY (IdUsuario) REFERENCES usuario (IdUsuario)
);

CREATE TABLE tcc.paciente (
  sintomas text,
  Alergias varchar(50) DEFAULT NULL,
  idNivelUsuario int DEFAULT NULL,
  IdUsuario int DEFAULT NULL,
  KEY IdUsuario (IdUsuario),
  CONSTRAINT paciente_ibfk_2 FOREIGN KEY (IdUsuario) REFERENCES usuario (IdUsuario)
);