
DROP DATABASE IF EXISTS cerveja;
CREATE DATABASE IF NOT EXISTS cerveja;
use cerveja;

-- TABELA USUARIO
CREATE TABLE IF NOT EXISTS usuario(
	id_usuario int not null auto_increment primary key,
    nome_usuario varchar(100) not null,
    senha_usuario varchar(50) not null,
    nome_completo varchar(100) not null,
    sexo char(1),
    data_nascimento date not null,
    telefone varchar(50),
    cidade varchar(100),
    estado char(2),
    pais varchar(50),
	email varchar(100) not null,
    permissao int not null
);

-- senha 1234
INSERT INTO usuario (nome_usuario, senha_usuario, nome_completo, sexo, data_nascimento, telefone, cidade, estado, pais, email, permissao) 
	VALUES ('admin', '700c8b805a3e2a265b01c77614cd8b21', 'Administrador', 'M', '1955-12-08', '(11)33445566', 'São Paulo', 'SP', 'Brasil', 'admin@cerveja.com', 1),
			('Sueli', '700c8b805a3e2a265b01c77614cd8b21', 'Sueli Guandalini', 'F', '1974-02-06', '(16)33327040', 'Araraquara', 'SP', 'Brasil','ueli@cerveja.com', 2),
            ('Nick', '700c8b805a3e2a265b01c77614cd8b21', 'Nick Welber', 'M', '1992-05-13', '(16)33326849', 'Araraquara', 'SP', 'Brasil', 'nick@cerveja.com', 2),
            ('Ellen', '700c8b805a3e2a265b01c77614cd8b21', 'Ellen Caroline Afonso', 'F', '1990-12-25', '(16)33328044', 'Araraquara', 'SP','Brasil', 'ellen@cerveja.com', 2);
            
-- TABELA ESTILO
CREATE TABLE IF NOT EXISTS estilo(
    id_estilo int not null auto_increment primary key,
    estilo VARCHAR(50) not null
);

INSERT INTO estilo (estilo) 
	VALUES ("Trigo"),
		   ("India Pale Ale"),
           ("Lager"),
           ("Pale Ale"),
           ("Strong Ale"),
           ("Sour"),
           ("Porter"),
           ("Stout");

-- TABELA CERVEJAS            
CREATE TABLE IF NOT EXISTS cerveja(
	id_cerveja int not null auto_increment primary key,
    imagem varchar(500) not null,
    nome_cerveja varchar(100) not null,
    volume int not null,
	teor_alcool float(6,2) not null,
    amargor int,
    temperatura varchar(50) not null,
    cod_estilo int not null,
    preco float(6 , 2) not null,
    FOREIGN KEY (cod_estilo) REFERENCES estilo(id_estilo)
);

INSERT INTO cerveja (imagem, nome_cerveja, volume, teor_alcool, amargor, temperatura, cod_estilo, preco) 
	VALUES ('img_upload/india1.jpg', 'Cerveja Hocus Pocus Pineapple Express American IPA', 500, '6.0', 40, '5 - 7', 4, '26.90'),
           ('img_upload/india2.jpg', 'Cerveja Wals Session Citra', 600, '3.9', 30, '8 - 12', 4, '13.59'),
           ('img_upload/india3.jpg', 'Cerveja Wals Niobium', 600, '9.0', 93, '8 - 12', 4, '15.99'),
           ('img_upload/india4.jpg', 'Cerveja Colorado Vixnu', 600, '9.5', 75, '8 - 12', 4, '12.79'),
           ('img_upload/india5.jpg', 'Cerveja Maniacs IPA', 355, '4.7', 30, '4 - 6', 4, '5.94'),
           ('img_upload/india6.jpg', 'Cerveja Dádiva Venice Beach Session IPA', 473, '4.5', 40, '8 - 12', 4, '25.90'),
           ('img_upload/india7.jpg', 'Cerveja Pratinha Pratipa', 500, '6.0', 65.2, '8 - 12', 4, '19.90'),
           ('img_upload/india8.jpg', 'Cerveja Cathedral Serena Session IPA', 473, '4.8', 1, '7 - 9', 4, '28.90'),
           ('img_upload/lager1.jpg', 'Cerveja Wals Lager', 473, '4.5', 17, '0 - 4', 3, '5.24'),
		   ('img_upload/lager2.jpg', 'Cerveja Imigração Pilsen Premium', 500, '4.8', 14, '0 - 4', 3, '10.90'),
           ('img_upload/lager3.jpg', 'Cerveja X Wals', 600, '5.0', 17, '0 - 4', 3, '11.99'),
           ('img_upload/lager4.jpg', 'Cerveja Albanos Pilsen', 473, '4.9', 12, '0 - 4', 3, '10.90'),
           ('img_upload/lager5.jpg', 'Cerveja Heilige Bohemian Pilsnen', 500, '5.1', 38, '0 - 4', 3, '16.90'),
           ('img_upload/lager6.jpg', 'Cerveja Three Monkeys Cool Lager', 500, '4.8', 30, '4 - 7', 3, '23.80'),
           ('img_upload/lager7.jpg', 'Cerveja Blondine Pivo Czech', 500, '5.0', 40, '4 - 8', 3, '19.42'),
           ('img_upload/lager8.jpg', 'Cerveja Blondine Bad Moose Lager', 500, '5.5', 26, '0 - 4', 3, '16.18'),
           ('img_upload/pale1.jpg', 'Cerveja Wals Verano', 600, '5.0', 25, '4 - 8', 2, '11.99'),
           ('img_upload/pale2.jpg', 'Cerveja Roleta Russa APA', 500, '5.2', 36, '4 - 8', 2, '28.90'),
           ('img_upload/pale3.jpg', 'Cerveja Krug APA Calúnia', 500, '5.4', 35, '6 - 8', 2, '25.90'),
           ('img_upload/pale4.jpg', 'Cerveja Blondine Felina', 500, '4.5', 27, '8 - 12', 2, '13.45'),
           ('img_upload/pale5.jpg', 'Cerveja Kud God Save The Queen', 600, '5.3', 20, '4 - 8', 2, '28.90'),
           ('img_upload/pale6.jpg', 'Cerveja Bohemia 838 Pale Ale', 300, '5.4', 40, '4 - 8', 2, '8.35'),
           ('img_upload/pale7.jpg', 'Cerveja Tupiniquim Premium Pale Ale', 350, '4.8', 32, '5 - 7', 2, '11.90'),
           ('img_upload/pale8.jpg', 'Cerveja Wals Verano', 600, '5.0', 25, '4 - 8', 2, '12.99'),
           ('img_upload/porter1.jpg', 'Cerveja Colorado Demoiselle', 600, '6.0', 22, '8 - 12', 7,'12.19'),
           ('img_upload/porter2.jpg', 'Cerveja Heilige Porter', 500, '6.5', 23, '8 - 12', 7, '20.50'),
           ('img_upload/porter3.jpg', 'Cerveja Paulistania Porter', 600, '6.0', 22, '8 - 12', 7, '11.50'),
           ('img_upload/porter4.jpg', 'Cerveja Capa Preta Porter Berry Raspberry', 473, '5.4', 22, '4 - 8', 7, '29.90'),
           ('img_upload/porter5.jpg', 'Cerveja Way Avelã Porter', 355, '5.6', 25, '6 - 10', 7, '27.80'),
           ('img_upload/porter6.jpg', 'Cerveja Tupiniquim Monjolo Imperial Porter', 310, '11.5', 35, '8 - 12', 7, '24.90'),
           ('img_upload/porter7.jpg', 'Cerveja Nortenha', 600, '6.0', 22, '8 - 12', 7, '18.30'),
           ('img_upload/porter8.jpg', 'Cerveja Way Avelã Porter', 355, '5.6', 25, '6 - 10', 7, '27.80'),
           ('img_upload/sour1.jpg', 'Cerveja Everbrew Guava Berry', 473, '4.0', null, '3 - 7', 6, '35.99'),
           ('img_upload/sour2.jpg', 'Cerveja Demonho Onde Está o Gole', 473, '7.0', null, '3 - 7', 6, '28.79'),
           ('img_upload/sour3.jpg', 'Cerveja Bodebrown FruttiSour', 473, '4.3', null, '3 - 7', 6, '25.19'),
           ('img_upload/sour4.jpg', 'Cerveja Blondine Tropical Caja Catharina Sour', 500, '3.8', null, '3 - 7', 6, '26.09'),
           ('img_upload/sour5.jpg', 'Cerveja Juan Caloto Los Embalos De Ragtime Mango Berliner Weisse', 473, '7.2', null, '3 - 5', 6, '31.49'),
           ('img_upload/sour6.jpg', 'Cerveja Blumenau Catharina Sour Pessego', 500, '4.1', null, '3 - 7', 6, '20.69'),
           ('img_upload/sour7.jpg', 'Cerveja Leuven Mystic Potion Sour Uva', 355, '5.0', null, '3 - 7', 6, '17.99'),
           ('img_upload/sour8.jpg', 'Cerveja Imigração Sour Belgian Lambic', 375, '5.5', null, '3 - 7', 6, '34.19'),
           ('img_upload/stout1.jpg', 'Cerveja Unicorn Stout', 473, '5.3', 8, '6 - 10', 8, '19.99'),
           ('img_upload/stout2.jpg', 'Cerveja Campinas Stout Andarilha', 500, '6.0', null, '6 - 10', 8, '21.59'),
           ('img_upload/stout3.jpg', 'Cerveja Antuérpia Nikita Cherry Hickey', 300, '11.3', 34, '8 - 12', 8, '32.99'),
           ('img_upload/stout4.jpg', 'Cerveja Tarantino Dry Stout', 473, '3.8', 15, '6 - 10', 8, '18.69'),
           ('img_upload/stout5.jpg', 'Cerveja Tupiniquim Chocolate Sweet Stout', 350, '5.6', 25, '8 - 12', 8, '19.99'),
           ('img_upload/stout6.jpg', 'Cerveja Blondine Volcano Coffe stout', 500, '7.5', 25, '6 - 10', 8, '28.58'),
           ('img_upload/stout7.jpg', 'Cerveja Blumenau Macuca Imperial Stout', 500, '10.5', 27, '6 - 10', 8, '26.99'),
           ('img_upload/stout8.jpg', 'Cerveja Saint Bier Stout', 600, '6.0', 40, '5 - 7', 8, '20.99'),
           ('img_upload/strong1.jpg', 'Cerveja Wals Quadruppel', 375, '11.0', 35, '8 - 12', 5, '19.99'),
           ('img_upload/strong2.jpg', 'Cerveja Blumenau 1850 Barley Wine', 500, '11.3', 53, '6 - 10', 5, '25.90'),
           ('img_upload/strong3.jpg', 'Cerveja Kwak', 330, '8.4', null, '8 - 12', 5, '31.92'),
           ('img_upload/strong4.jpg', 'Cerveja Kwak Belgian Golden Strong Ale', 750, '8.4', null, '8 - 12', 5, '84.92'),
           ('img_upload/strong5.jpg', 'Cerveja Leffe Royale', 330, '7.5', 10, '8 - 12', 5, '16.90'),
           ('img_upload/strong6.jpg', 'Cerveja Duvel', 330, '8.5', 33, '8 - 12', 5, '31.99'),
           ('img_upload/strong7.jpg', 'Cerveja Gouden Carolus Classic', 330, '8.5', 58, '8 - 12', 5, '28.75'),
           ('img_upload/strong8.jpg', 'Cerveja Wals Quadruppel', 375, '11.0', 35, '8 - 12', 5, '19.99'),
           ('img_upload/trigo1.jpg', 'Cerveja Colorado Appia', 600, '5.5', 10, '4 - 8', 1, '11.04'),
           ('img_upload/trigo2.jpg', 'Cerveja Colorado Amazônica', 410, '5.3', 10, '4 - 8', 1, '27.98'),
           ('img_upload/trigo3.jpg', 'Cerveja Praya Wit', 600, '5.3', 13, '5 - 7', 1, '9.90'),
           ('img_upload/trigo4.jpg', 'Cerveja Wals Belgian Witte', 600, '5.0', 20, '0 - 4', 1, '11.99'),
           ('img_upload/trigo5.jpg', 'Cerveja Dádiva Witbier', 310, '5.1', 13, '2 - 6', 1, '12.90'),
           ('img_upload/trigo6.jpg', 'Cerveja Flamingo Witbier', 600, '4.7', 11, '5 - 7', 1, '23.90'),
           ('img_upload/trigo7.jpg', 'Cerveja Krug Austria Hefe Weizen', 600, '4.8', 10, '5 - 7', 1, '20.90'),
           ('img_upload/trigo8.jpg', 'Cerveja Tupiniquim', 600, '5.5', 10, '4 - 8', 1, '26.90');
           
DROP VIEW IF EXISTS view_cerveja;
CREATE VIEW view_cerveja As
SELECT cerveja.id_cerveja 'id_cerveja', 
		cerveja.imagem 'imagem',
		cerveja.nome_cerveja 'nome_cerveja',
        cerveja.volume 'volume', 
		cerveja.teor_alcool 'teor_alcool',
		cerveja.amargor 'amargor',
        cerveja.temperatura 'temperatura',
		estilo.estilo 'estilo', 
		cerveja.preco 'preco'
FROM cerveja INNER JOIN estilo ON cerveja.cod_estilo = estilo.id_estilo;
SELECT * FROM view_cerveja;          
           
	-- TABELA NOTA            
CREATE TABLE IF NOT EXISTS nota(
	id_nota int not null auto_increment primary key,
    nota int not null,
    cod_cerveja int not null,
    cod_usuario int not null,
    FOREIGN KEY (cod_cerveja) REFERENCES cerveja(id_cerveja),
    FOREIGN KEY (cod_usuario) REFERENCES usuario(id_usuario)
);

INSERT INTO nota (nota, cod_cerveja, cod_usuario) 
	VALUES (3, 1, 1),
		   (2, 2, 2),
		   (5, 3, 3),
           (2, 46, 3),
           (3, 25, 4),
           (3, 3, 1),
           (5, 3, 2);
           
        
/*Cálculo da nota média e quantidade de notas que a cerveja recebeu.*/
DROP VIEW IF EXISTS view_nota;
CREATE VIEW view_nota As
SELECT cerveja.id_cerveja 'id_cerveja', 
	   cerveja.nome_cerveja 'nome',
	   round(avg(nota),2) as 'media',
       count(*) as 'qtd_notas'
FROM nota INNER JOIN cerveja ON cerveja.id_cerveja = nota.cod_cerveja
group by cerveja.nome_cerveja;
SELECT * FROM view_nota;

	-- TABELA COMENTARIO            
CREATE TABLE IF NOT EXISTS comentario(
	id_comentario int not null auto_increment primary key,
    descricao varchar(500) not null,
    horario time not null,
    data date not null,
    cod_cerveja int not null,
    cod_usuario int not null,
    FOREIGN KEY (cod_cerveja) REFERENCES cerveja(id_cerveja),
	FOREIGN KEY (cod_usuario) REFERENCES usuario(id_usuario)
);

INSERT INTO comentario (descricao, horario, data, cod_cerveja, cod_usuario) 
	VALUES ('A Pineapple Express possui lúpulo Mosaic e abacaxi. Esses dois ingredientes conferem um aroma “tropical”.
			Possui um amargor bem levinho, essa cerveja demonstra o potencial de uma IPA com adição de frutas.','10:30:00','2021-01-08', 1, 1),
		   ('A massiva quantidade de lúpulo americano Citra e base de malte fazem dessa Session IPA uma explosão de refrescância. 
           Possui amargor moderado e aroma cítrico.','11:30:00','2021-01-08', 2, 2),
           ('É uma Double IPA de espuma cremosa, coloração avermelhada e acentuado aroma de maracujá. Seus 93 IBU’s representam a massa 
           atômica de 92,9u do Nióbio, elemento que dá nome para a cerveja. Possui lúpulos Polaris.','18:20:00','2021-01-12', 3, 3),
           ('É uma cerveja do estilo inglês com adição de grãos de café 100% arábica. Coloração negra e espuma cremosa, tem aroma e sabor intenso 
           de café, com destaque para notas de tosta do malte, leve chocolate amargo e predomínio do café.','09:20:00','2021-01-15', 46, 4),
           ('Demoiselle é o nome de um dos aviões inventados por Santos Dummont. O café é tipicamente brasileiro, combinado com maltes importados,
           que dá o toque singular no sabor e no aroma desta preciosa cerveja.','09:20:00','2021-01-15', 25, 4);
 