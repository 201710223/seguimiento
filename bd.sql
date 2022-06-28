ALTER USER 'root'@'localhost' 
IDENTIFIED WITH mysql_native_password BY '12345';
flush privileges;

create database tese;
use tese;

create table solicitud(
id_solicitud int null,
num_reporte int null,
estado varchar (20),
fecha varchar (10), 
descripcion varchar (50)
);

insert into solicitud values(01, 5642,'finalizado','09/05/2022','descripcion');
insert into solicitud values(02, 4561,'pendiente','10/03/2021','descripcion');
insert into solicitud values(03, 7894,'finalizado','02/02/2012','descripcion');
insert into solicitud values(04, 8462,'enviado','09/05/2022','descripcion');
insert into solicitud values(05, 7891,'pendiente','15/07/2015','descripcion');

insert into solicitud values(06, 5612,'finalizado','06/03/2016','descripcion');
insert into solicitud values(07, 5618,'pendiente','09/03/2016','descripcion');
insert into solicitud values(08, 8456,'finalizado','05/01/2012','descripcion');
insert into solicitud values(09, 4563,'enviado','05/01/2012','descripcion');
insert into solicitud values(10, 5627,'pendiente','10/04/2016','descripcion');

insert into solicitud values(11, 7895,'finalizado','12/07/2022','descripcion');
insert into solicitud values(12, 9634,'pendiente','16/12/2022','descripcion');
insert into solicitud values(13, 9745,'finalizado','18/11/2021','descripcion');
insert into solicitud values(14, 8465,'enviado','23/06/2021','descripcion');
insert into solicitud values(15, 6578,'pendiante','25/05/2022','descripcion');

insert into solicitud values(16, 1234,'enviado','06/11/2017','descripcion');
insert into solicitud values(17, 4321,'enviado','08/09/2017','descripcion');
insert into solicitud values(18, 5694,'finalizado','06/06/2021','descripcion');
insert into solicitud values(19, 4965,'pendiente','04/02/2012','descripcion');
insert into solicitud values(20, 1122,'enviado','03/11/2013','descripcion');


use tese;
show variables like 'secure_file_priv';
show global variables like 'local_infile';

load data infile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\TablaSolisitud.txt' into table solicitud fields terminated by ';' lines terminated by '\n';
select * from solicitud into outfile 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\TablaSolisitud.txt' fields terminated by ';' lines terminated by '\n'; 

use tese;
select * from solicitud;

use tese;
drop table rol;
