CREATE DATABASE MiauDoceLar;

USE MiauDoceLar;

CREATE TABLE usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
dtNasc DATE NOT NULL,
email VARCHAR(45) UNIQUE NOT NULL,
CONSTRAINT chkEmail CHECK (email LIKE ( '%@%.%')),
senha VARCHAR(8) NOT NULL);

-- CREATE TABLE quizz(
-- idQuizz INT PRIMARY KEY AUTO_INCREMENT,
-- fkUsuarioQuizz INT NOT NULL,
-- CONSTRAINT fkQuizz FOREIGN KEY (fkUsuarioQuizz) REFERENCES usuario(idUsuario),
-- pontuacao INT NOT NULL);

-- CREATE TABLE pesquisaGatos(
-- idGato INT PRIMARY KEY AUTO_INCREMENT,
-- nome VARCHAR(30) NOT NULL,
-- dtNasc DATE NOT NULL,
-- raca VARCHAR(15) NOT NULL,
-- sexo CHAR(5) NOT NULL,
-- cor VARCHAR(10) NOT NULL,
-- personalidade VARCHAR(15) NOT NULL,
-- fkUsuario INT NOT NULL,
-- CONSTRAINT fkGatos FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario));

CREATE TABLE perguntasFormulario(
idPergunta INT PRIMARY KEY AUTO_INCREMENT,
pergunta VARCHAR(200) NOT NULL); 

-- CREATE TABLE opcoesRespostas(
-- idOpcao INT PRIMARY KEY AUTO_INCREMENT,
-- fkPergunta INT NOT NULL,
-- CONSTRAINT fkOpcaoPergunta FOREIGN KEY (fkPergunta) REFERENCES perguntasFormulario(idPergunta),
-- respostaOpcao VARCHAR(80) NOT NULL);

CREATE TABLE respostasFormulario(
idResposta INT PRIMARY KEY AUTO_INCREMENT,
fkUsuario INT NOT NULL,
CONSTRAINT fkRespostas FOREIGN KEY (fkUsuario) REFERENCES usuario(idUsuario),
-- CONSTRAINT chavePrimaria PRIMARY KEY (idResposta, fkUsuario),
fkPergunta INT NOT NULL,
CONSTRAINT fkRespostasPergunta FOREIGN KEY (fkPergunta) REFERENCES perguntasFormulario(idPergunta),
-- fkOpcao INT NOT NULL,
-- CONSTRAINT fkRespostasOpcao FOREIGN KEY (fkOpcao) REFERENCES opcoesRespostas(idOpcao)
);

-- INSERT INTO perguntasFormulario VALUES
-- (null, "Qual é a sua cor de pelagem de gato favorita?"),
-- (null, "Qual foi o primeiro critério que pensou ao decidir adotar um gato? (Ou pensou para quando futuramente adotar)?"),
-- (null, "Se você tem ou teve um gato, qual é a cor predominante da pelagem dele?"),
-- (null, "Você já ouviu falar em crenças que associam alguma cor de pelagem de gato a sorte ou azar?"),
-- (null, "Você tem gatos? Se sim, quantos gatinhos?"),
-- (null, "Você acredita que o sexo do gato também está relacionado a certas características de personalidade? (Por exemplo, gatas femêas são mais limpas que os gatos machos)?"),
-- (null, "Você pegou seu gatinho quando ele tinha quanto tempo de vida?"),
-- (null, "Você sabia que depois dos gatos adultos, os gatos pretos têm as taxas de adoção mais baixas em comparação aos gatos de pelagens de outras cores?"),
-- (null, "Você acredita que a cor da pelagem de um gato está associada a certas características de personalidade? (Por exemplo, gatos ruivos são mais apocalípticos)?"),
-- (null, "Você já teve ou atualmente tem um gato preto?");

-- INSERT INTO opcoesRespostas VALUES
-- (null, 1, "Branco"),
-- (null, 1, "Cinza"),
-- (null, 1, "Laranja"),
-- (null, 1, "Preto"),
-- (null, 1, "Tricolor ou Bicolor"),
-- (null, 1, "Rajado ou Escaminha"),
-- (null, 1, "Tipo Siamês (degradê de marrons)"),
-- (null, 2, "Idade específica (filhote)"),
-- (null, 2, "Cor de pelagem específica (Branco, ruivo, bicolor, tricolor ou escaminha)"),
-- (null, 2, "Sexo específico (Macho)"),
-- (null, 2, "Idade específica (Adulto)"),
-- (null, 2, "Sexo específico (Femêa)"),
-- (null, 2, "Cor de pelagem específica (Marrom, cinza, preto ou frajola)"),
-- (null, 2, "Não cheguei a pensar nisso"),
-- (null, 3, "Branco"),
-- (null, 3, "Cinza"),
-- (null, 3, "Laranja"),
-- (null, 3, "Preto"),
-- (null, 3, "Marrom"),
-- (null, 3, "Ainda não tenho um gato"),
-- (null, 4, "Sim"),
-- (null, 4, "Não"),
-- (null, 5, "1"),
-- (null, 5, "2"),
-- (null, 5, "3"),
-- (null, 5, "4 ou mais"),
-- (null, 5, "Não tenho gato"),
-- (null, 6, "Sim"),
-- (null, 6, "Não"),
-- (null, 7, "Menos de 6 meses"),
-- (null, 7, "Entre 6 meses e 1 ano"),
-- (null, 7, "1 ano ou mais"),
-- (null, 7, "Não tenho gato"),
-- (null, 8, "Sim"),
-- (null, 8, "Não"),
-- (null, 8, "Não cheguei a pensar nisso"),
-- (null, 9, "Sim"),
-- (null, 9, "Não"),
-- (null, 10, "Sim"),
-- (null, 10, "Não"),
-- (null, 10, "Pretendo adotar um no futuro");