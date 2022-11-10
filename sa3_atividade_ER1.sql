--criação do banco de dados
CREATE DATABASE TesteSegurancaFS12SA3ER1;

--colocar o banco de dados em uso
USE TesteSegurancaFS12SA3ER1;

--criação de uma tabela para armazenar usuários
CREATE TABLE Usuarios
(
	Id INT PRIMARY KEY IDENTITY,
	Email VARCHAR(100) UNIQUE NOT NULL,
	Senha VARCHAR(50) NOT NULL
);

--consulta a todos os dados da tabela criada
SELECT * FROM Usuarios;

--cadastrar um usuário no banco de dados
INSERT INTO Usuarios VALUES ('jose@email.com',1212);
INSERT INTO Usuarios VALUES ('nuvem@email.com',1234);
INSERT INTO Usuarios VALUES ('beta2@email.com',1212);
INSERT INTO Usuarios VALUES ('lara@email.com',2345);
INSERT INTO Usuarios VALUES ('prima@email.com',3456);
INSERT INTO Usuarios VALUES ('uva@email.com',4567);
INSERT INTO Usuarios VALUES ('pedra@email.com',5678);
INSERT INTO Usuarios VALUES ('carmen@email.com',6789);
INSERT INTO Usuarios VALUES ('silas@email.com',7890);
INSERT INTO Usuarios VALUES ('odre@email.com',1314);

--hasheando dados em uma consulta
--hashbytes(dois argumentos - 1-o tipo de criptografia(algoritmo) e o 2-o campo a criptografar(hashear)
SELECT id, Email, HASHBYTES('MD2', Senha) FROM Usuarios;

SELECT id, Email, HASHBYTES('MD2', Senha) FROM Usuarios WHERE Id = 1;

SELECT id, Email, HASHBYTES('MD2', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 2;

SELECT id, Email, HASHBYTES('MD4', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 3;

SELECT id, Email, HASHBYTES('MD5', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 4;

SELECT id, Email, HASHBYTES('SHA', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 5;

SELECT id, Email, HASHBYTES('SHA1', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 6;

SELECT id, Email, HASHBYTES('SHA2_256', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 7;

SELECT id, Email, HASHBYTES('SHA2_512', Senha) AS 'Senha Hash' FROM Usuarios WHERE Id = 8;


