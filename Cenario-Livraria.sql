CREATE TABLE Cliente (
  PessoaFisica_livros_comprados VARCHAR(255) NOT NULL,
  PessoaFisica_CPF VARCHAR(10) NOT NULL,
  PessoaJuridica_livros_comprados VARCHAR(255) NOT NULL,
  PessoaJuridica_CNPJ VARCHAR(14) NOT NULL,
  INDEX Ciente_FKIndex1(PessoaJuridica_CNPJ, PessoaJuridica_livros_comprados),
  INDEX Ciente_FKIndex2(PessoaFisica_CPF, PessoaFisica_livros_comprados)
);

CREATE TABLE Compra (
  Livros_ISBN INTEGER UNSIGNED NOT NULL,
  data_compra DATE NULL,
  PRIMARY KEY(Livros_ISBN),
  INDEX Cliente_has_Livros_FKIndex2(Livros_ISBN)
);

CREATE TABLE Editora (
  codigo INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  endereço VARCHAR(255) NULL,
  telefone VARCHAR(100) NULL,
  nome_gerente VARCHAR(255) NULL,
  PRIMARY KEY(codigo)
);

CREATE TABLE Livros (
  ISBN INTEGER UNSIGNED NOT NULL,
  Editora_codigo INTEGER UNSIGNED NOT NULL,
  nome_autor VARCHAR(255) NOT NULL AUTO_INCREMENT,
  assunto VARCHAR(100) NULL,
  quant_estoque INTEGER UNSIGNED NULL,
  PRIMARY KEY(ISBN),
  INDEX Livros_FKIndex1(Editora_codigo)
);

CREATE TABLE PessoaFisica (
  CPF VARCHAR(10) NOT NULL AUTO_INCREMENT,
  livros_comprados VARCHAR(255) NOT NULL,
  nome VARCHAR(255) NULL,
  endereço INTEGER UNSIGNED NULL,
  telefone VARCHAR(100) NULL,
  PRIMARY KEY(CPF, livros_comprados)
);

CREATE TABLE PessoaJuridica (
  CNPJ VARCHAR(14) NOT NULL AUTO_INCREMENT,
  livros_comprados VARCHAR(255) NOT NULL,
  nome VARCHAR(100) NULL,
  endereço VARCHAR(100) NULL,
  telefone VARCHAR(255) NULL,
  PRIMARY KEY(CNPJ, livros_comprados)
);


