
 CREATE TABLE juegos(
 id int NOT NULL AUTO_INCREMENT primary key, 
 juegoname varchar(255) DEFAULT NULL
 ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8; 
 
 INSERT INTO juegos VALUES ('1', 'Final Fantasy VII'),
 ('2', 'Zelda: A link to the past'),
 ('3', 'Crazy Taxy'),
 ('4', 'Donkey Kong Country'),
 ('5', 'Fallout 4'),
 ('6', 'Saints Row III'),
 ('7', 'La taba'); 
 
 CREATE TABLE juegousuario ( 
 id_usuario int(11) NOT NULL,
 id_juego int(11) NOT NULL, 
 UNIQUE KEY id_user_juego (ID_usuario, ID_juego)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8;   
 
 INSERT INTO juegousuario VALUES ('1', '1'),
 ('1', '2'),
 ('1', '3'),
 ('1', '4'),
 ('1', '6'),
 ('1', '7'),
 ('2', '3'),
 ('2', '7'),
 ('4', '1'),
 ('4', '2'),
 ('4', '4'),
 ('4', '7'); 
 
 CREATE TABLE usuarios ( 
 id int NOT NULL AUTO_INCREMENT primary key, 
 username varchar(255) DEFAULT NULL
 ) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8; 
 
 INSERT INTO usuarios  VALUES ('1', 'vichaunter'),
  ('3', 'jaimito'),
  ('4', 'ataulfo');
 SET FOREIGN_KEY_CHECKS=1;
 
 select * from juegos;
 select  sum(id) as total from juegos;
 describe juegos;
 select usuarios.username, juegos.juegoname from usuarios
 inner join juegousuario on usuarios.id = juegousuario.ID_usuario
 inner join juegos on juegos.id = juegousuario.ID_juego; 
