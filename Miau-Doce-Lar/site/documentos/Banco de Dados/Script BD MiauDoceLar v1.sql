CREATE DATABASE MiauDoceLar;

USE MiauDoceLar;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45),
dtNasc DATE,
email VARCHAR(45), -- CHECK
senha VARCHAR(8));

CREATE TABLE quizz(
idQuizz INT PRIMARY KEY AUTO_INCREMENT,
fkUsuarioQuizz INT,
CONSTRAINT fkQuizz FOREIGN KEY (fkUsuarioQuizz) REFERENCES usuario(idUsuario),
pontuacao INT);

CREATE TABLE pesquisaGatos(
idGato INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(30),
dtNasc DATE,
raca VARCHAR(15),
sexo CHAR(5),
cor VARCHAR(10), -- CHECK e mudar na modelagem
personalidade VARCHAR(15), -- mudar na modelagem
fkUsuario INT,
CONSTRAINT fkGatos FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario));

CREATE TABLE perguntasFormulario(
idPergunta INT PRIMARY KEY AUTO_INCREMENT,
pergunta VARCHAR(45));

CREATE TABLE opcoesRespostas(
idOpcao INT PRIMARY KEY AUTO_INCREMENT,
fkPergunta INT,
CONSTRAINT fkOpcaoPergunta FOREIGN KEY (fkPergunta) REFERENCES perguntasFormulario(idPergunta),
respostaOpcao VARCHAR(25));

CREATE TABLE respostasFormulario(
idResposta INT,
fkUsuario INT,
CONSTRAINT fkRespostas FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
CONSTRAINT chavePrimaria PRIMARY KEY (idResposta, fkUsuario),
fkPergunta INT,
CONSTRAINT fkRespostasPergunta FOREIGN KEY (fkPergunta) REFERENCES perguntasFormulario(idPergunta),
fkOpcao INT,
CONSTRAINT fkRespostasOpcao FOREIGN KEY (fkOpcao) REFERENCES opcoesRespostas(idOpcao));

INSERT INTO perguntasFormularios 

INSERT INTO opcoesRespostas

-- insert into empresa (razao_social, cnpj) values ('Empresa 1', '00000000000000');