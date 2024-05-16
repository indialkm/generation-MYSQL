/***************************ATIVIDADE 01***************************************/
/*Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
Insira nesta tabela no mínimo 5 dados (registros).
Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e 
coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.*/


CREATE DATABASE db_rh;
USE db_rh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    salario decimal(10,2),
    datacontratacao DATE, 
	PRIMARY KEY(ID)
);

INSERT INTO tb_colaboradores(nome, cargo, salario, datacontratacao)
VALUES("Ana Clara Borges", "Desenvolvedora Front End Junior", 1900.000 , "2024-01-21"),
("Clara Silva", "Desenvolvedora Back End Junior", 1900.00 , "2024-01-21"),
("Liliana Santos", "Desenvolvedora  FullStack Senior", 3000.00 , "2024-01-21"),
("Marina santos", "Scrum Master", 15000.000 , "2024-01-21"),
("Maria Golçalvez", "Gerente de vendas", 22000.00 , "2024-01-21"),
("Katharina Duarte", "Product Owner", 55000.00 , "2024-01-21");

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;
UPDATE tb_colaboradores
SET cargo = "Desenvolvedora Front End Pleno" WHERE id = 1; 

/***************************ATIVIDADE 02***************************************/
/*Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/

CREATE DATABASE db_ecommerce;
USE db_ecommerce;

CREATE TABLE tb_produtos(
	id BIGINT AUTO_INCREMENT,
    nomedoproduto VARCHAR(255) NOT NULL,
	preco DECIMAL(6,2) NOT NULL,
    descricao VARCHAR(300),
    quantidade INT NOT NULL, 
    PRIMARY KEY(id)
);
INSERT INTO tb_produtos (nomedoproduto, preco, descricao, quantidade)
VALUES("Mouse", 50.00, "Um ótumo mouse", 10),
("Teclado", 70.00, "Um ótiumo teclado", 10),
("Placa de Vídeo", 1550.00, "Roda Tibia no liso", 10),
("Notebook", 3550.00, "Ótimo para estudis", 10),
("Luminária", 50.00, "Deixa claro quando está escruto", 10),
("Gabinete", 650.00, "É tão colorido que você vai se sentir em uma balada", 10),
("Monitor", 550.00, "4k", 10),
("AirFryer", 250.00, "É ótimo pra fazer lanchinho", 10);

SELECT * FROM tb_produtos WHERE preco < 500.00;
SELECT * FROM tb_produtos WHERE preco > 500.00;

UPDATE tb_produtos
SET descricao = "Um ótimo mouse tem luzinha também" WHERE id = 1;


/***************************ATIVIDADE 03***************************************/
/*
Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes 
para se trabalhar com o serviço dessa escola.
Insira nesta tabela no mínimo 8 dados (registros).
Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
Ao término atualize um registro desta tabela através de uma query de atualização.
Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) 
e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.
*/
CREATE DATABASE db_escola;
USE db_escola;

CREATE TABLE tb_alunos(
	matricula BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    curso VARCHAR(255) NOT NULL,
    datadeinicio DATE,
    PRIMARY KEY(matricula)
)AUTO_INCREMENT=1000;

INSERT INTO tb_Alunos(nome, nota, curso, datadeinicio)
VALUES("Alice", 9.8, "Ensino Fundamental", "2024-05-12"),
("Bernando", 10.0, "Ensino Fundamental", "2024-05-12"),
("Camila", 8.5, "Ensino Fundamental", "2024-05-12"),
("Daniela", 10.0, "Ensino médio", "2024-05-12"),
("Elvis", 5.6, "Ensino médio", "2024-05-12"),
("Fabricio", 7.8, "Ensino médio", "2024-05-12"),
("Heitor", 4.2, "Ensino médio", "2024-05-12"),
("Ingra", 10.0, "Ensino Fundamental", "2024-05-12");

SELECT * FROM tb_Alunos;
SELECT * FROM tb_Alunos WHERE nota < 7.0;
SELECT * FROM tb_Alunos WHERE nota > 7.0;

UPDATE tb_Alunos
SET nota = 5.7 WHERE matricula = 1006;