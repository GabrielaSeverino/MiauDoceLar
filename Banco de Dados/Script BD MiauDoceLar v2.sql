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
pergunta VARCHAR(155); -- mudar na modelagem

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

INSERT INTO perguntasFormulario VALUES
(null, "Qual é a sua cor de pelagem de gato favorita?"),
(null, "Se você tem ou já teve um gato, qual é a cor predominante da pelagem dele?"),
(null, "Qual foi o primeiro critério que pensou ao decidir adotar um gato? (Ou pensou para quando futuramente adotar)?"),
(null, "Você já ouviu falar em crenças que associam alguma cor de pelagem de gato a sorte ou azar?"),
(null, "Você tem gatos? Se sim, quantos gatinhos?"),
(null, "Você acredita que o sexo do gato também está relacionado a certas características de personalidade? (Por exemplo, gatas femêas são mais limpas que os gatos machos)"),
(null, "Você pegou seu gatinho quando ele tinha quanto tempo de vida?"),
(null, "Você sabia que depois dos gatos adultos, os gatos pretos têm as taxas de adoção mais baixas em comparação aos gatos de pelagens de outras cores?"),
(null, "Você acredita que a cor da pelagem de um gato está associada a certas características de personalidade? (Por exemplo, gatos ruivos são mais apocalípticos)"),
(null, "Você já teve ou atualmente tem um gato preto?");

INSERT INTO opcoesRespostas VALUES
(null, ),
(null, ),
(null, ),
(null, ),
(null, ),
(null, ),
(null, ),
(null, ),
(null, ),
(null, )

-- insert into empresa (razao_social, cnpj) values ('Empresa 1', '00000000000000');