
DROP DATABASE IF EXISTS cerveja;
CREATE DATABASE IF NOT EXISTS cerveja;
use cerveja;

-- TABELA USUARIO
CREATE TABLE IF NOT EXISTS usuario(
	id_usuario int not null auto_increment primary key,
    nome_usuario varchar(100) not null,
    senha varchar(50) not null,
    nome varchar(100) not null,
    data_nascimento date not null,
    telefone varchar(50) not null,
    cidade varchar(100) not null,
    estado char(2) not null,
    pais varchar(50) not null,
	email varchar(100) not null,
    permissao int not null
);

-- senha 1234
INSERT INTO usuario (id_usuario, nome_usuario, senha, nome, data_nascimento, telefone, cidade, estado, pais, email, permissao) 
	VALUES (1, "admin", "700c8b805a3e2a265b01c77614cd8b21", "Administrador", '1955-12-08', '(11)33445566', 'São Paulo', 'SP', 'Brasil', "admin@cerveja.com", 1),
			(2, "Sueli", "700c8b805a3e2a265b01c77614cd8b21", "Sueli Guandalini", '1974-02-06', '(16)33327040', 'Araraquara', 'SP', 'Brasil',"sueli@cerveja.com", 2),
            (3, "Nick", "700c8b805a3e2a265b01c77614cd8b21", "Nick Welber", '1990-11-10', '(16)33326849', 'Araraquara', 'SP', 'Brasil', "nick@cerveja.com", 2),
            (4, "Ellen", "700c8b805a3e2a265b01c77614cd8b21", "Ellen Caroline Afonso", '1990-12-25', '(16)33328044', 'Araraquara', 'SP','Brasil', "ellen@cerveja.com", 2),
            (5, "Guilherme", "700c8b805a3e2a265b01c77614cd8b21", "Guilherme", '1986-12-08', '(16)33335678', 'Araraquara', 'SP','Brasil', "guilherme@cerveja.com", 2);
            
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
    imagem varchar(200) not null,
    nome varchar(255) not null,
    volume int not null,
	teor_alcool float(2 , 2) not null,
    amargor float(2 , 2),
    temperatura varchar(255) not null,
    cod_estilo int not null,
    FOREIGN KEY (cod_estilo) REFERENCES estilo(id_estilo)
);

INSERT INTO cerveja ( id, imagem, nome, volume, teor_alcool, amargor, temperatura, cod_estilo) 
	VALUES (40, "img/india1.jpg", "Cerveja Hocus Pocus Pineapple Express American IPA", 500, 6.0, 40, "5o - 7o", 33),
           (41, "img/india2.jpg Cerveja Wals Session Citra", 600, 3.9, 30, "8o - 12o", 33),
           (42, "img/india3.jpg", "Cerveja Wals Niobium", 600, 9.0, 93, "8o - 12o", 33),
           (43, "img/india4.jpg", "Cerveja Colorado Vixnu", 600, 9.5, 75, "8o - 12o", 33),
           (44, "img/india5.jpg", "Cerveja Maniacs IPA", 355, 4.7, 30, "4o - 6o", 33),
           (46, "img/india6.jpg", "Cerveja Dádiva Venice Beach Session IPA", 473, 4.5, 40, "8o - 12o", 33),
           (47, "img/india7.jpg", "Cerveja Pratinha Pratipa", 500, 6.0, 65.2, "8o - 12o", 33),
           (48, "img/india8.jpg", "Cerveja Cathedral Serena Session IPA", 473, 4.8, 30, "7o - 9o", 33),
           (49, "img/lager1.jpg", "Cerveja Wals Lager", 473, 4.5, 17, "0o - 4o", 32),
		   (50, "img/lager2.jpg", "Cerveja Imigração Pilsen Premium", 500, 4.8, 14, "0o - 4o", 32),
           (51, "img/lager3.jpg", "Cerveja X Wals", 600, 5.0, 17, "0o - 4o", 32),
           (52, "img/lager4.jpg", "Cerveja Alabanos Pilsen", 473, 4.9, 12, "0o - 4o", 32),
           (53, "img/lager5.jpg", "Cerveja Heilige Bohemian Pilsnen", 500, 5.1, 38, "0o - 4o", 32),
           (54, "img/lager6.jpg", "Cerveja", 473, 4.8, 30, "7o - 9o", 32),lager6,//
           (55, "img/lager7.jpg", "Cerveja Blondine Pivo Czech", 500, 5.0, 40, "4o - 8o", 32),
           (56, "img/lager8.jpg", "Cerveja Blondine Bad Moose Lager", 500, 5.5, 26, "0o - 4o", 32),
           (57, "img/pale1.jpg", "Cerveja Wals Verano", 600, 5.0, 25, "4o - 8o", 31),
           (58, "img/pale2.jpg", "Cerveja Roleta Russa APA", 500, 5.2, 36, "4o - 8o", 31),
           (59, "img/pale3.jpg", "Cerveja Krug APA Calúnia", 500, 5.4, 35, "6o - 8o", 31),
           (60, "img/pale4.jpg", "Cerveja Bolndine Felina", 500, 4.5, 27, "8o - 12o", 31),
           (61, "img/pale5.jpg", "Cerveja Kud God Save The Queen", 600, 5.3, 20, "4o - 8o", 31),
           (62, "img/pale6.jpg", "Cerveja Bohemia 838 Pale Ale", 300, 5.4, 40, "4o - 8o", 31),
           (63, "img/pale7.jpg", "Cerveja Tupiniquim Premium Pale Ale", 350, 4.8, 32, "5o - 7o", 31),
           (64, "img/pale8.jpg", "Cerveja Wals Verano", 600, 5.0, 25, "4o - 8o", 31),
           (65, "img/porter1.jpg", "Cerveja Colorado Demoiselle", 600, 6.0, 22, "8o - 12o", 36),
           (66, "img/porter2.jpg", "Cerveja Heilige Porter", 500, 6.5, 23, "8o - 12o", 36),
           (67, "img/porter3.jpg", "Cerveja Paulistania Porter", 600, 6.0, 22, "8o - 12o", 36),
           (68, "img/porter4.jpg", "Cerveja Capa Preta Porter Berry Raspberry", 473, 5.4, 22, "4o - 8o", 36),
           (69, "img/porter5.jpg", "Cerveja Way Avelã Porter", 355, 5.6, 25, "6o - 10o", 36),
           (70, "img/porter6.jpg", "Cerveja Tupiniquim Monjolo Imperial Porter", 310, 10.5, 35, "8o - 12o", 36),
           (71, "img/porter7.jpg", "Cerveja Nortenha", 600, 6.0, 22, "8o - 12o", 36),
           (72, "img/porter8.jpg", "Cerveja Way Avelã Porter", 355, 5.6, 25, "6o - 10o", 36),
           (73, "img/sour1.jpg", "Cerveja Everbrew Guava Berry", 473, 4.0, null, "3o - 7o", 35),
           (74, "img/sour2.jpg", "Cerveja Demonho Onde Está o Gole", 473, 7.0, null, "3o - 7o", 35),
           (75, "img/sour3.jpg", "Cerveja Bodebrown FruttiSour", 473, 4.3, null, "3o - 7o", 35),
           (76, "img/sour4.jpg", "Cerveja Blondine Tropical Caja Catharina Sour", 500, 3.8, null, "3o - 7o", 35),
           (77, "img/sour5.jpg", "Cerveja Juan Caloto Los Embalos De Ragtime Mango Berliner Weisse", 473, 7.2, null, "3o - 5o", 35),
           (78, "img/sour6.jpg", "Cerveja Blumenau Catharina Sour Pessego", 500, 4.1, null, "3o - 7o", 35),
           (79, "img/sour7.jpg", "Cerveja Leuven Mystic Potion Sour Uva", 355, 5.0, null, "3o - 7o", 35),
           (80, "img/sour8.jpg", "Cerveja Imigração Sour Belgian Lambic", 375, 5.5, null, "3o - 7o", 35),
           (81, "img/stout1.jpg", "Cerveja Unicorn Stout", 473, 5.3, 8, "6o - 10o", 37),
           (82, "img/stout2.jpg", "Cerveja Campinas Stout Andarilha", 500, 6.0, null, "6o - 10o", 37),
           (83, "img/stout3.jpg", "Cerveja Antuérpia Nikita Cherry Hickey", 300, 11.3, 34, "8o - 12o", 37),
           (84, "img/stout4.jpg", "Cerveja Tarantino Dry Stout", 473, 3.8, 15, "6o - 10o", 37),
           (85, "img/stout5.jpg", "Cerveja Tupiniquim Chocolate Sweet Stout", 350, 5.6, 25, "8o - 12o", 37),
           (86, "img/stout6.jpg", "Cerveja Blondine Volcano Coffe stout", 500, 7.5, 25, "6o - 10o", 37),
           (87, "img/stout7.jpg", "Cerveja Blumenau Macuca Imperial Stout", 500, 10.5, 27, "6o - 10o", 37),
           (88, "img/stout8.jpg","Cerveja Saint Bier Stout", 600, 6.0, 40, "5o - 7o", 37),
           (89, "img/strong1.jpg", "Cerveja Wals Quadruppel", 375, 11.0, 35, "8o - 12o", 34),
           (90, "img/strong2.jpg", "Cerveja Blumenau 1850 Barley Wine", 500, 11.3, 53, "6o - 10o", 34),
           (91, "img/strong3.jpg", "Cerveja Kwak", 330, 8.4, null, "8o - 12o", 34),
           (92, "img/strong4.jpg", "Cerveja Kwak Belgian Golden Strong Ale", 750, 8.4, null, "8o - 12o", 34),
           (93, "img/strong5.jpg", "Cerveja Leffe Royale", 330, 7.5, 10, "8o - 12o", 34),
           (94, "img/strong6.jpg", "Cerveja Duvel", 330, 8.5, 33, "8o - 12o", 34),
           (95, "img/strong7.jpg", "Cerveja Gouden Carolus Classic", 330, 8.5, 58, "8o - 12o", 34),
           (96, "img/strong8.jpg", "Cerveja Wals Quadruppel", 375, 11.0, 35, "8o - 12o", 34),
           (97, "img/trigo1.jpg", "Cerveja Colorado Appia", 600, 5.5, 10, "4o - 8o", 30),
           (98, "img/trigo2.jpg", "Cerveja Colorado Amazônica", 410, 5.3, 10, "4o - 8o", 30),
           (99, "img/trigo3.jpg", "Cerveja Praya Wit", 600, 5.3, 13, "5o - 7o", 30),
           (100, "img/trigo4.jpg", "Cerveja Wals Belgian Witte", 600, 5.0, 20, "0o - 4o", 30),
           (101, "img/trigo5.jpg", "Cerveja Dádiva Witbier", 310, 5.1, 13, "2o - 6o", 30),
           (102, "img/trigo6.jpg", "Cerveja Flamingo Witbier", 600, 4.7, 11, "5o - 7o", 30),
           (103, "img/trigo7.jpg", "Cerveja Krug Austria Hefe Weizen", 600, 4.8, 10, "5o - 7o", 30),
           (104, "img/trigo8.jpg", "Cerveja Tupiniquim", 600, 5.5, 10, "4o - 8o", 30),
           
           
	-- TABELA NOTA            
CREATE TABLE IF NOT EXISTS nota(
	id_nota int not null auto_increment primary key,
    nota char(2) not null,
    qtde_votos int not null,
	media float(2 , 2) not null,
    cod_cerveja int not null,
    FOREIGN KEY (cod_cerveja) REFERENCES cerveja(id_cerveja)
);
   
	-- TABELA COMENTARIO            
CREATE TABLE IF NOT EXISTS comentario(
	id_comentario int not null auto_increment primary key,
    comentario varchar(100) not null,
    qtde_votos int not null,
    horario time not null,
    data date not null,
    cod_cerveja int not null,
    cod_usuario int not null,
    FOREIGN KEY (cod_cerveja) REFERENCES cerveja(id_cerveja),
	FOREIGN KEY (cod_usuario) REFERENCES usuario(id_usuario)
);

