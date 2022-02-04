-- Configurar Workbench con xammp
-- https://www.youtube.com/watch?v=sGw4dWpPFTU&list=LLMekmHf8jji7mEJoZhFajeQ

-- Agregar y quitar contraseña root
ALTER USER 'root'@'localhost' identified BY 'admin';
ALTER USER 'root'@'localhost' identified BY '';
-- SET SQL_SAFE_UPDATES=0; para desactivar mode safe de workbech

-- Usar la base de datos
use prueba;

-- crear la tabla
create table prueba1(
id_person int auto_increment primary key,
peso float,
nombre char(50),
fecha date,
comentarions text
);

-- descripcion de la tabla sql
describe prueba1;

-- mostrar todas las tablas de mi base de datos
show tables;
show databases;

-- cuando lleva un auto_increment ya no se agrega en el insert
-- El insert hace que inserta los datos que en la tabla que tenemos
insert into prueba1(peso, nombre, fecha, comentarions) values (12.5, "Juanito", "2022-01-15", "asdfsdfdfdsfasdfsd" ); 
INSERT INTO prueba.prueba1 (peso, nombre, fecha, comentarios) VALUES ('30', 'Pedro', '2022-05-04', 'no lo se');
INSERT INTO prueba.prueba1 (peso, nombre, fecha, comentarios) VALUES ('35', 'Pedro', '2022-05-04', 'no lo se');


-- muestra las tablas con el contenido o mmostrar todos lo campos
SELECT * FROM prueba.prueba1;

-- Muestra los datos de la columna peso
select peso from prueba1;

-- Muestra los datos de las dos columnas peso y nombre
select peso, nombre from prueba1;

-- Uso de la Where
select * from prueba1 where id_person = 2;
select * from prueba1 where nombre = "Juanito ";

-- Modificando todas las columnas 
UPDATE prueba.prueba1 SET nombre = 'Maria', fecha = '2020-01-16', comentarions = 'Yo son programador' WHERE (id_person = '4');

-- Modicando solo una columna
update prueba.prueba1 set nombre = "Mattyus" where (id_person = "4");
update prueba.prueba1 set comentarions = "Soy developer" where (id_person = "4");

-- Cambiar el nombre de una columna
--          nombre tabla          name_actual   new_name       el tipo de datos que tiene si es int o char ver en la tabla de creacion
alter table prueba1 change column  dfsgdfgsdf   comentarios   text;

-- Agregar una columna
--                               int not null signica que no tiene que ser null aparacera 0
alter table prueba1 add capital int not null;
alter table prueba1 add sueldo int;

-- Eliminar una columna
alter table prueba1 drop sueldo;

SELECT * FROM prueba.prueba1;
update prueba.prueba1 set comentarios = "Este es el nuevo editado" where (id_person = "1");

-- Uso de between = "Entre" 25 "y" 45
select * from prueba1 where peso between 25 and 45;

-- Uso de like   ( m% muestra solo los incios %o muestra al final %nuevo% que esta en medio)
select * from prueba1 where nombre like "%te%";


/*<?php

function getConexion()
{
    $server   = "localhost";
    $username = "root";
    $password = "admin";
    //$dataBase = "alertguatedb";
    $dataBase = "energuate";

    $link = mysqli_connect($server, $username, $password, $dataBase);

    if (!$link) {
        die("Problemas al seleccionar la base de datos: " . mysqli_connect_errno());
    }
    mysqli_set_charset($link, "utf8");

    return $link;
}
*/
















