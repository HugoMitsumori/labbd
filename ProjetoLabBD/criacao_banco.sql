
CREATE TABLE usuario(
	login VARCHAR(254) PRIMARY KEY,
	email VARCHAR(254) UNIQUE NOT NULL,
	nome VARCHAR(254) NOT NULL,
	CPF  VARCHAR(11) UNIQUE NOT NULL,
	idade INT,
	profissao VARCHAR(254)
);

CREATE TABLE seguidor(
	login_seguidor VARCHAR(254) NOT NULL,
	login_seguido VARCHAR(254) NOT NULL,
	PRIMARY KEY (login_seguidor, login_seguido),
	FOREIGN KEY (login_seguidor) REFERENCES usuario(login)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (login_seguido) REFERENCES usuario(login)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE problema(
	id INT UNIQUE NOT NULL,
	criador VARCHAR(254) NOT NULL,
	descricao VARCHAR(254),
	categoria VARCHAR(254),
	prioridade INT NOT NULL,
	PRIMARY KEY (id, criador),
	FOREIGN KEY (criador) REFERENCES usuario(login)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

CREATE TABLE solucao(
	id INT UNIQUE NOT NULL,
	criador VARCHAR(254) NOT NULL,
	id_problema INT UNIQUE NOT NULL,
	descricao VARCHAR(254),
	PRIMARY KEY (id, criador, id_problema),
	FOREIGN KEY (criador) REFERENCES usuario(login)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	FOREIGN KEY (id_problema) REFERENCES problema(id)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE freelancer(
	login VARCHAR(254) PRIMARY KEY,
	avaliacao_media REAL,
	FOREIGN KEY (login) REFERENCES usuario(login)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE empresa(
	cnpj VARCHAR(14) PRIMARY KEY,
	nome VARCHAR(254) NOT NULL
);

CREATE TABLE contratante(
	login VARCHAR(254) UNIQUE NOT NULL,
	cnpj_empresa VARCHAR(14) UNIQUE NOT NULL,
	cargo VARCHAR(254),
	PRIMARY KEY (login, cnpj_empresa),
	FOREIGN KEY (login) REFERENCES usuario(login)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (cnpj_empresa) REFERENCES empresa(cnpj)
		ON DELETE RESTRICT
		ON UPDATE CASCADE
);

CREATE TABLE conhecimento(
	nome VARCHAR(254) PRIMARY KEY,
	descricao varchar(254)
);

CREATE TABLE conhecimentoFreelancer(
	login_freelancer VARCHAR(254) UNIQUE NOT NULL,
	nome_conhecimento VARCHAR(254) UNIQUE NOT NULL,
	certificados VARCHAR(254),
	PRIMARY KEY(login_freelancer, nome_conhecimento),
	FOREIGN KEY (login_freelancer) REFERENCES freelancer(login)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (nome_conhecimento) REFERENCES conhecimento(nome)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE servico(
	login_contratante VARCHAR(254) UNIQUE NOT NULL,
	codigo_servico INT UNIQUE NOT NULL,
	id_solucao_geradora INT,
	nome_servico VARCHAR(254) NOT NULL,
	data_inicio DATE NOT NULL,
	data_termino DATE,
	status VARCHAR(254) NOT NULL,
	preco REAL NOT NULL,
	avaliacao_final REAL,
	PRIMARY KEY (login_contratante, codigo_servico),
	FOREIGN KEY (login_contratante) REFERENCES contratante(login)
		ON DELETE RESTRICT
		ON UPDATE CASCADE,
	FOREIGN KEY (id_solucao_geradora) REFERENCES solucao(id)
		ON DELETE SET NULL
		ON UPDATE CASCADE
);

CREATE TABLE conhecimentoRequisitado(
	nome_conhecimento VARCHAR(254) UNIQUE NOT NULL,
	codigo_servico INT UNIQUE NOT NULL,
	PRIMARY KEY (nome_conhecimento, codigo_servico),
	FOREIGN KEY (nome_conhecimento) REFERENCES conhecimento(nome)
		ON DELETE CASCADE
		ON UPDATE CASCADE,
	FOREIGN KEY (codigo_servico) REFERENCES servico(codigo_servico)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

-- DROP TABLE conhecimentoRequisitado;
-- DROP TABLE servico;
-- DROP TABLE conhecimentoFreelancer;
-- DROP TABLE conhecimento;
-- DROP TABLE empregado;
-- DROP TABLE empresa;
-- DROP TABLE freelancer;
-- DROP TABLE solucao;
-- DROP TABLE problema;
-- DROP TABLE seguidor;
-- DROP TABLE usuario;