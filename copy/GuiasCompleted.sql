```sql
	HACER UN TRUNCATE A UNA TABLA CON FOREIGN KEY MYSQL
	SET FOREIGN_KEY_CHECKS = 0; 
	TRUNCATE TABLE nombre_de_la_tabla; 
	SET FOREIGN_KEY_CHECKS = 1;
```


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

                    
                
/*Configurar Workbench con xammp
 https://www.youtube.com/watch?v=sGw4dWpPFTU&list=LLMekmHf8jji7mEJoZhFajeQ*/

/* Agregar y quitar contraseña root*/
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
-- mostrar todas las base de datos
show databases;

-- cuando lleva un auto_increment ya no se agrega en el insert
-- El insert hace que inserta los datos que en la tabla que tenemos

insert into prueba1(peso, nombre, fecha, comentarions) 
values (12.5, "Juanito", "2022-01-15", "asdfsdfdfdsfasdfsd" ); 
INSERT INTO prueba1 (peso, nombre, fecha, comentarios) 
VALUES ('30', 'Pedro', '2022-05-04', 'no lo se');
INSERT INTO prueba1 (peso, nombre, fecha, comentarios) 
VALUES ('35', 'Pedro', '2022-05-04', 'no lo se');

-- esto funciona cuando le agregas en la tabla un increment tambien funciona al sin incre
INSERT INTO prueba2(nombre,apellido,sueldo)
VALUES ("mattyu", "web", 23.4),
	    ("mendoza", "carmelo", 4.4); 
-- esto solo funciona cuando no le agregas un auto_increment
insert into prueba2 values("mish", "Mike", 12); 


-- muestra las tablas con el contenido o mmostrar todos lo campos
SELECT * FROM prueba1;



-- Muestra los datos de la columna peso
select peso from prueba1;

-- Muestra los datos de las dos columnas peso y nombre
select peso, nombre from prueba1;

-- Uso de la Where
select * from prueba1 where id_person = 2;
select * from prueba1 where nombre = "Juanito ";

-- Modificando todas las columnas 
UPDATE prueba1 
SET nombre = 'Maria', fecha = '2020-01-16', comentarions = 'Yo son programador'
WHERE (id_person = '4');

-- Modicando solo una columna
update prueba1 set nombre = "Mattyus" where (id_person = "4");
update prueba1 set comentarions = "Soy developer" where (id_person = "4");
UPDATE sales_rep SET comision = 2 WHERE numero=5; 
update sales_rep set nombre="sadfsd" where comision = 12;

-- Renicia en uno 
truncate table prueba2; 
-- continua el numero que sigue del id eliminado y elimina toda la fila
delete from prueba2;

-- Cambiar el nombre de una columna
--          nombre tabla          name_actual   new_name       el tipo de datos que tiene si es int o char ver en la tabla de creacion
alter table prueba1 change column  dfsgdfgsdf   comentarios   text;

-- Agregar una columna
--                               int not null signica que no tiene que ser null aparacera 0
alter table prueba1 add capital int not null;
alter table prueba1 add sueldo int;

-- cambiar el nombre de la tabla
alter table sales_rep rename cash_flow_specialist; 

-- Eliminar una columna
alter table prueba1 drop sueldo;

-- elimina la tabla
drop table salesrep12;

-- elimina la fila
delete from prueba1 where id=1;

SELECT * FROM prueba1;
update prueba1 set comentarios = "Este es el nuevo editado" where id_person = "1";

-- Uso de between = "Entre" 25 "y" 45
select * from prueba1 where peso between 25 and 45;

-- Uso de like   ( m% muestra solo los incios %o muestra al final %nuevo% que esta en medio)
select * from prueba1 where nombre like "%te%";

-- saca el total de la columna comision
select avg(comision)  as comsion from sales_rep;

-- Muestra la cantida de filas
select count(nombre) as nombre from sales_rep;
select count(*) from sales_rep; -- para buscar y ver el total de todo
SELECT MIN(comision) FROM sales_rep; --el valor minimo
SELECT MAX(comision) from sales_rep; -- el valor maximon;
-- Suma la totalidad de los que son int o double float;
select  sum(id) as total from juegos;
-- Describe la tabla para ver que tipo de tados lleva;
 describe juegos;

 -- cambiar el tipo de datos a la columna
ALTER TABLE sales_rep MODIFY column cumpleanio date;
-- CAMBIAR ORDEN DE COLUMNAS DE UNA TABLA EN MYSQL
ALTER TABLE sales_rep MODIFY column valor_mejor int AFTER  cumpleanio; 


-------------------------------------------------------------------->

/* SELECT 4- (2/4) ; 
 SELECT 1 AND 0;
 SELECT '4200' = '4200.0 '; 
  SELECT 'abc' = 'ABC';
SELECT NULL<=>0; 
 SELECT 4.5 BETWEEN 4 and 5; 
SELECT NULL IS NULL;
SELECT NULL IS not NULL;
 SELECT 5 BETWEEN 6 and 4;
select 'a' between 'b' and 'c';
SELECT 'abc' < 'b';
*/
