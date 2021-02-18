
DROP DATABASE IF EXISTS cerveja;
CREATE DATABASE IF NOT EXISTS cerveja;
use cerveja;

-- TABELA USUARIO
CREATE TABLE IF NOT EXISTS usuario(
	id_usuario int not null auto_increment primary key,
    nome_usuario varchar(100) not null,
    senha varchar(50) not null,
    nome varchar(100) not null,
    sexo char(2) not null,
    data_nascimento date not null,
    telefone varchar(50) not null,
    cidade varchar(100) not null,
    estado char(2) not null,
    pais varchar(50) not null,
	email varchar(100) not null,
    permissao int not null
);

-- senha 1234
INSERT INTO usuario (id_usuario, nome_usuario, senha, nome, sexo, data_nascimento, telefone, cidade, estado, pais, email, permissao) 
	VALUES (1233, 'admin', '700c8b805a3e2a265b01c77614cd8b21', 'Administrador', 'M', '1955-12-08', '(11)33445566', 'São Paulo', 'SP', 'Brasil', 'admin@cerveja.com', 1),
			(2344, 'Sueli', '700c8b805a3e2a265b01c77614cd8b21', 'Sueli Guandalini', 'F', '1974-02-06', '(16)33327040', 'Araraquara', 'SP', 'Brasil','ueli@cerveja.com', 2),
            (3455, 'Nick', '700c8b805a3e2a265b01c77614cd8b21', 'Nick Welber', 'M', '1990-11-10', '(16)33326849', 'Araraquara', 'SP', 'Brasil', 'nick@cerveja.com', 2),
            (4566, 'Ellen', '700c8b805a3e2a265b01c77614cd8b21', 'Ellen Caroline Afonso', 'F', '1990-12-25', '(16)33328044', 'Araraquara', 'SP','Brasil', 'ellen@cerveja.com', 2),
            (5677, 'Guilherme', '700c8b805a3e2a265b01c77614cd8b21', 'Guilherme', 'M', '1986-12-08', '(16)33335678', 'Araraquara', 'SP','Brasil', 'guilherme@cerveja.com', 2);
            
-- TABELA ESTILO
CREATE TABLE IF NOT EXISTS estilo(
    id_estilo int not null auto_increment primary key,
    estilo VARCHAR(50) not null
);

INSERT INTO estilo (id_estilo, estilo) 
	VALUES (30, "Trigo"),
		   (31, "India Pale Ale"),
           (32, "Lager"),
           (33, "Pale Ale"),
           (34, "Strong Ale"),
           (35, "Sour"),
           (36, "Porter"),
           (37, "Stout");

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

INSERT INTO cerveja ( id_cerveja, imagem, nome_cerveja, volume, teor_alcool, amargor, temperatura, cod_estilo, preco) 
	VALUES (400, 'img/india1.jpg', 'Cerveja Hocus Pocus Pineapple Express American IPA', 500, '6.0', 40, '5 - 7', 33, '26.90'),
           (401, 'img/india2.jpg', 'Cerveja Wals Session Citra', 600, '3.9', 30, '8 - 12', 33, '13.59'),
           (402, 'img/india3.jpg', 'Cerveja Wals Niobium', 600, '9.0', 93, '8 - 12', 33, '15.99'),
           (403, 'img/india4.jpg', 'Cerveja Colorado Vixnu', 600, '9.5', 75, '8 - 12', 33, '12.79'),
           (404, 'img/india5.jpg', 'Cerveja Maniacs IPA', 355, '4.7', 30, '4 - 6', 33, '5.94'),
           (405, 'img/india6.jpg', 'Cerveja Dádiva Venice Beach Session IPA', 473, '4.5', 40, '8 - 12', 33, '25.90'),
           (406, 'img/india7.jpg', 'Cerveja Pratinha Pratipa', 500, '6.0', 65.2, '8 - 12', 33, '19.90'),
           (407, 'img/india8.jpg', 'Cerveja Cathedral Serena Session IPA', 473, '4.8', 30, '7 - 9', 33, '28.90'),
           (408, 'img/lager1.jpg', 'Cerveja Wals Lager', 473, '4.5', 17, '0 - 4', 32, '5.24'),
		   (409, 'img/lager2.jpg', 'Cerveja Imigração Pilsen Premium', 500, '4.8', 14, '0 - 4', 32, '10.90'),
           (410, 'img/lager3.jpg', 'Cerveja X Wals', 600, '5.0', 17, '0 - 4', 32, '11.99'),
           (411, 'img/lager4.jpg', 'Cerveja Albanos Pilsen', 473, '4.9', 12, '0 - 4', 32, '10.90'),
           (412, 'img/lager5.jpg', 'Cerveja Heilige Bohemian Pilsnen', 500, '5.1', 38, '0 - 4', 32, '16.90'),
           (413, 'img/lager6.jpg', 'Cerveja Three Monkeys Cool Lager', 500, '4.8', 30, '4 - 7', 32, '23.80'),
           (414, 'img/lager7.jpg', 'Cerveja Blondine Pivo Czech', 500, '5.0', 40, '4 - 8', 32, '19.42'),
           (415, 'img/lager8.jpg', 'Cerveja Blondine Bad Moose Lager', 500, '5.5', 26, '0 - 4', 32, '16.18'),
           (416, 'img/pale1.jpg', 'Cerveja Wals Verano', 600, '5.0', 25, '4 - 8', 31, '11.99'),
           (417, 'img/pale2.jpg', 'Cerveja Roleta Russa APA', 500, '5.2', 36, '4 - 8', 31, '28.90'),
           (418, 'img/pale3.jpg', 'Cerveja Krug APA Calúnia', 500, '5.4', 35, '6 - 8', 31, '25.90'),
           (419, 'img/pale4.jpg', 'Cerveja Blondine Felina', 500, '4.5', 27, '8 - 12', 31, '13.45'),
           (420, 'img/pale5.jpg', 'Cerveja Kud God Save The Queen', 600, '5.3', 20, '4 - 8', 31, '28.90'),
           (421, 'img/pale6.jpg', 'Cerveja Bohemia 838 Pale Ale', 300, '5.4', 40, '4 - 8', 31, '8.35'),
           (422, 'img/pale7.jpg', 'Cerveja Tupiniquim Premium Pale Ale', 350, '4.8', 32, '5 - 7', 31, '11.90'),
           (423, 'img/pale8.jpg', 'Cerveja Wals Verano', 600, '5.0', 25, '4 - 8', 31, '12.99'),
           (424, 'img/porter1.jpg', 'Cerveja Colorado Demoiselle', 600, '6.0', 22, '8 - 12', 36,'12.19'),
           (425, 'img/porter2.jpg', 'Cerveja Heilige Porter', 500, '6.5', 23, '8 - 12', 36, '20.50'),
           (426, 'img/porter3.jpg', 'Cerveja Paulistania Porter', 600, '6.0', 22, '8 - 12', 36, '11.50'),
           (427, 'img/porter4.jpg', 'Cerveja Capa Preta Porter Berry Raspberry', 473, '5.4', 22, '4 - 8', 36, '29.90'),
           (428, 'img/porter5.jpg', 'Cerveja Way Avelã Porter', 355, '5.6', 25, '6 - 10', 36, '27.80'),
           (429, 'img/porter6.jpg', 'Cerveja Tupiniquim Monjolo Imperial Porter', 310, '11.5', 35, '8 - 12', 36, '24.90'),
           (430, 'img/porter7.jpg', 'Cerveja Nortenha', 600, '6.0', 22, '8 - 12', 36, '18.30'),
           (431, 'img/porter8.jpg', 'Cerveja Way Avelã Porter', 355, '5.6', 25, '6 - 10', 36, '27.80'),
           (432, 'img/sour1.jpg', 'Cerveja Everbrew Guava Berry', 473, '4.0', null, '3 - 7', 35, '35.99'),
           (433, 'img/sour2.jpg', 'Cerveja Demonho Onde Está o Gole', 473, '7.0', null, '3 - 7', 35, '28.79'),
           (434, 'img/sour3.jpg', 'Cerveja Bodebrown FruttiSour', 473, '4.3', null, '3 - 7', 35, '25.19'),
           (435, 'img/sour4.jpg', 'Cerveja Blondine Tropical Caja Catharina Sour', 500, '3.8', null, '3 - 7', 35, '26.09'),
           (436, 'img/sour5.jpg', 'Cerveja Juan Caloto Los Embalos De Ragtime Mango Berliner Weisse', 473, '7.2', null, '3 - 5', 35, '31.49'),
           (437, 'img/sour6.jpg', 'Cerveja Blumenau Catharina Sour Pessego', 500, '4.1', null, '3 - 7', 35, '20.69'),
           (438, 'img/sour7.jpg', 'Cerveja Leuven Mystic Potion Sour Uva', 355, '5.0', null, '3 - 7', 35, '17.99'),
           (439, 'img/sour8.jpg', 'Cerveja Imigração Sour Belgian Lambic', 375, '5.5', null, '3 - 7', 35, '34.19'),
           (440, 'img/stout1.jpg', 'Cerveja Unicorn Stout', 473, '5.3', 8, '6 - 10', 37, '19.99'),
           (441, 'img/stout2.jpg', 'Cerveja Campinas Stout Andarilha', 500, '6.0', null, '6 - 10', 37, '21.59'),
           (442, 'img/stout3.jpg', 'Cerveja Antuérpia Nikita Cherry Hickey', 300, '11.3', 34, '8 - 12', 37, '32.99'),
           (443, 'img/stout4.jpg', 'Cerveja Tarantino Dry Stout', 473, '3.8', 15, '6 - 10', 37, '18.69'),
           (444, 'img/stout5.jpg', 'Cerveja Tupiniquim Chocolate Sweet Stout', 350, '5.6', 25, '8 - 12', 37, '19.99'),
           (445, 'img/stout6.jpg', 'Cerveja Blondine Volcano Coffe stout', 500, '7.5', 25, '6 - 10', 37, '28.58'),
           (446, 'img/stout7.jpg', 'Cerveja Blumenau Macuca Imperial Stout', 500, '10.5', 27, '6 - 10', 37, '26.99'),
           (447, 'img/stout8.jpg', 'Cerveja Saint Bier Stout', 600, '6.0', 40, '5 - 7', 37, '20.99'),
           (448, 'img/strong1.jpg', 'Cerveja Wals Quadruppel', 375, '11.0', 35, '8 - 12', 34, '19.99'),
           (449, 'img/strong2.jpg', 'Cerveja Blumenau 1850 Barley Wine', 500, '11.3', 53, '6 - 10', 34, '25.90'),
           (450, 'img/strong3.jpg', 'Cerveja Kwak', 330, '8.4', null, '8 - 12', 34, '31.92'),
           (451, 'img/strong4.jpg', 'Cerveja Kwak Belgian Golden Strong Ale', 750, '8.4', null, '8 - 12', 34, '84.92'),
           (452, 'img/strong5.jpg', 'Cerveja Leffe Royale', 330, '7.5', 10, '8 - 12', 34, '16.90'),
           (453, 'img/strong6.jpg', 'Cerveja Duvel', 330, '8.5', 33, '8 - 12', 34, '31.99'),
           (454, 'img/strong7.jpg', 'Cerveja Gouden Carolus Classic', 330, '8.5', 58, '8 - 12', 34, '28.75'),
           (455, 'img/strong8.jpg', 'Cerveja Wals Quadruppel', 375, '11.0', 35, '8 - 12', 34, '19.99'),
           (456, 'img/trigo1.jpg', 'Cerveja Colorado Appia', 600, '5.5', 10, '4 - 8', 30, '11.04'),
           (457, 'img/trigo2.jpg', 'Cerveja Colorado Amazônica', 410, '5.3', 10, '4 - 8', 30, '27.98'),
           (458, 'img/trigo3.jpg', 'Cerveja Praya Wit', 600, '5.3', 13, '5 - 7', 30, '9.90'),
           (459, 'img/trigo4.jpg', 'Cerveja Wals Belgian Witte', 600, '5.0', 20, '0 - 4', 30, '11.99'),
           (460, 'img/trigo5.jpg', 'Cerveja Dádiva Witbier', 310, '5.1', 13, '2 - 6', 30, '12.90'),
           (461, 'img/trigo6.jpg', 'Cerveja Flamingo Witbier', 600, '4.7', 11, '5 - 7', 30, '23.90'),
           (462, 'img/trigo7.jpg', 'Cerveja Krug Austria Hefe Weizen', 600, '4.8', 10, '5 - 7', 30, '20.90'),
           (463, 'img/trigo8.jpg', 'Cerveja Tupiniquim', 600, '5.5', 10, '4 - 8', 30, '26.90');
           
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

INSERT INTO nota ( id_nota, nota, cod_cerveja, cod_usuario) 
	VALUES (700, 3, 400, 2344),
		   (701, 2, 401, 3455),
		   (702, 5, 402, 4566),
           (703, 2, 445, 4566),
           (704, 3, 424, 5677),
           (705, 3, 402, 2344),
           (706, 5, 402, 5677);
           
        
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

INSERT INTO comentario ( id_comentario, descricao, horario, data, cod_cerveja, cod_usuario) 
	VALUES (600, 'A Pineapple Express possui lúpulo Mosaic e abacaxi. Esses dois ingredientes conferem um aroma “tropical”.
			Possui um amargor bem levinho, essa cerveja demonstra o potencial de uma IPA com adição de frutas.','10:30:00','2021-01-08', 400, 2344),
		   (601, 'A massiva quantidade de lúpulo americano Citra e base de malte fazem dessa Session IPA uma explosão de refrescância. 
           Possui amargor moderado e aroma cítrico.','11:30:00','2021-01-08', 401, 3455),
           (602, 'É uma Double IPA de espuma cremosa, coloração avermelhada e acentuado aroma de maracujá. Seus 93 IBU’s representam a massa 
           atômica de 92,9u do Nióbio, elemento que dá nome para a cerveja. Possui lúpulos Polaris.','18:20:00','2021-01-12', 402, 4566),
           (603, 'É uma cerveja do estilo inglês com adição de grãos de café 100% arábica. Coloração negra e espuma cremosa, tem aroma e sabor intenso 
           de café, com destaque para notas de tosta do malte, leve chocolate amargo e predomínio do café.','09:20:00','2021-01-15', 445, 4566),
           (604, 'Demoiselle é o nome de um dos aviões inventados por Santos Dummont. O café é tipicamente brasileiro, combinado com maltes importados,
           que dá o toque singular no sabor e no aroma desta preciosa cerveja.','09:20:00','2021-01-15', 424, 5677);
 