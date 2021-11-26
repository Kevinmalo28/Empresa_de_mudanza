create table ARTICULOS_DE_MUDANZA (
   ID_ARTICULOS_DE_MUDANZA INT4                 not null,
   ID_VEHICULOS         INT4                 null,
   ID_CLIENTES          INT4                 null,
   ASESOR__RESPONSABLE_MUDANZA VARCHAR(20)          not null,
   OBJETO_DE_MUDANZA    VARCHAR(20)          not null,
   CANTIDAD             DECIMAL(10)          not null,
   PESO                 DECIMAL(10)          not null,
   constraint PK_ARTICULOS_DE_MUDANZA primary key (ID_ARTICULOS_DE_MUDANZA)
);

insert into ARTICULOS_DE_MUDANZA(ID_ARTICULOS_DE_MUDANZA,ID_VEHICULOS,ID_CLIENTES,ASESOR__RESPONSABLE_MUDANZA,OBJETO_DE_MUDANZA,CANTIDAD,PESO)
values(1,1,1,'Luigi','Muebles',5,20);
insert into ARTICULOS_DE_MUDANZA(ID_ARTICULOS_DE_MUDANZA,ID_VEHICULOS,ID_CLIENTES,ASESOR__RESPONSABLE_MUDANZA,OBJETO_DE_MUDANZA,CANTIDAD,PESO)
values(2,2,2,'Robert','Camas',15,30);
insert into ARTICULOS_DE_MUDANZA(ID_ARTICULOS_DE_MUDANZA,ID_VEHICULOS,ID_CLIENTES,ASESOR__RESPONSABLE_MUDANZA,OBJETO_DE_MUDANZA,CANTIDAD,PESO)
values(3,3,3,'Francisco','Cocina',6,74);

-----------------------------------------------------------------------------------------------------------------							

create table ASESORES (
   ID_ASESORES          INT4                 not null,
   ID_EMPRESA_MATRIZ    INT4                 null,
   ID_SUCURSALES        INT4                 null,
   NOMBRE               VARCHAR(20)          not null,
   APELLIDO             VARCHAR(20)          not null,
   CEDULA_DE__IDENTIDAD VARCHAR(10)          not null,
   DIRECCION            VARCHAR(20)          not null,
   FECHA_DE_NACIMIENTO  DATE                 not null,
   INGRESO              DATE                 not null,
   TIEMPO_DE_EXPERIENCIA   VARCHAR(20)          not null,
   constraint PK_ASESORES primary key (ID_ASESORES)
);

insert into ASESORES(ID_ASESORES,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA_DE__IDENTIDAD,DIRECCION,FECHA_DE_NACIMIENTO,INGRESO,TIEMPO_DE_EXPERIENCIA)
values(1,1,1,'Juan','Sánchez',1358764298,'Manta','1998-10-28','2020-12-10', '11 meses');
insert into ASESORES(ID_ASESORES,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA_DE__IDENTIDAD,DIRECCION,FECHA_DE_NACIMIENTO,INGRESO,TIEMPO_DE_EXPERIENCIA)
values(2,1,2,'Fernando','Macias',1358794217,'Quito','1976-04-14','2019-04-25','2 años 7 meses');
insert into ASESORES(ID_ASESORES,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA_DE__IDENTIDAD,DIRECCION,FECHA_DE_NACIMIENTO,INGRESO,TIEMPO_DE_EXPERIENCIA)
values(3,1,3,'Saul','Gonzales',1315294403,'Montecristi','2002-02-04','2021-03-06','8 meses');

-----------------------------------------------------------------------------------------------------------------	
create table CLIENTES (
   ID_CLIENTES          INT4                 not null,
   ID_EMPRESA_MATRIZ    INT4                 null,
   ID_SUCURSALES        INT4                 null,
   NOMBRE               VARCHAR(20)          not null,
   APELLIDO             VARCHAR(20)          not null,
   CEDULA               VARCHAR(10)          not null,
   DIRECCION            VARCHAR(25)          not null,
   CELULAR              VARCHAR(10)          not null,
   CORREO               VARCHAR(30)          not null,
   USO_DE_SERVICIOS_DE_LA_EMPRESA VARCHAR(20)          not null,
   constraint PK_CLIENTES primary key (ID_CLIENTES)
);

insert into CLIENTES (ID_CLIENTES ,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA,DIRECCION,CELULAR,CORREO,USO_DE_SERVICIOS_DE_LA_EMPRESA )
values(1,1,1,'Carlos','Zambrano',1357894129,'Ambato','0987654321','carloszambrano@gmail.com','9');
insert into CLIENTES (ID_CLIENTES ,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA,DIRECCION,CELULAR,CORREO,USO_DE_SERVICIOS_DE_LA_EMPRESA )
values(2,1,2,'Mario','García',1308972455,'Manta','0985241796','mariogarcia@gmail.com','4');
insert into CLIENTES (ID_CLIENTES ,ID_EMPRESA_MATRIZ, ID_SUCURSALES,NOMBRE,APELLIDO,CEDULA,DIRECCION,CELULAR,CORREO,USO_DE_SERVICIOS_DE_LA_EMPRESA )
values(3,1,3,'Josue','Loor',1302579641,'Cuenca','0994753641','josueloor@gmail.com','5');

-----------------------------------------------------------------------------------------------------------------	

create table EMPRESA__MATRIZ_ (
   ID_EMPRESA_MATRIZ    INT4                 not null,
   ASESORES_MATRIZ      VARCHAR(20)          not null,
   NOMBRE_EMPRESA       VARCHAR(20)          not null,
   DIRECCION_EMPRESA    VARCHAR(20)          not null,
   TELEFONO_EMPRESA     VARCHAR(10)          not null,
   CORREO_EMPRESA       VARCHAR(30)          not null,
   CIUDAD_EMPRESA       VARCHAR(20)          not null,
   constraint PK_EMPRESA__MATRIZ_ primary key (ID_EMPRESA_MATRIZ)
);


insert into EMPRESA__MATRIZ_  (ID_EMPRESA_MATRIZ  ,ASESORES_MATRIZ,NOMBRE_EMPRESA,DIRECCION_EMPRESA,TELEFONO_EMPRESA,CORREO_EMPRESA,CIUDAD_EMPRESA)
values(1,1,'Mudmar','Barrio Jocay J6','0980584698','mudmarmatriz@gmail.com','Manta');

-----------------------------------------------------------------------------------------------------------------

	
create table MANTENIMIENTO (
   ID_MANTENIMIENTO     INT4                 not null,
   ID_VEHICULOS         INT4                 null,
   TIPO_DE_MANTENIMIENTO VARCHAR(20)          not null,
   FECHA_DE_MANTENIMIENTO DATE                 not null,
   FECHA_FIN_MANTENIMIENTO DATE                 not null,
   constraint PK_MANTENIMIENTO primary key (ID_MANTENIMIENTO)
);



insert into MANTENIMIENTO(ID_MANTENIMIENTO,ID_VEHICULOS ,TIPO_DE_MANTENIMIENTO,FECHA_DE_MANTENIMIENTO,FECHA_FIN_MANTENIMIENTO)
values(1,1,'Cambio de bujías','2020-02-25','2020-02-26');
insert into MANTENIMIENTO(ID_MANTENIMIENTO,ID_VEHICULOS ,TIPO_DE_MANTENIMIENTO,FECHA_DE_MANTENIMIENTO,FECHA_FIN_MANTENIMIENTO)
values(1,1,'Cambio de aceite','2021-04-17','2021-04-17');
insert into MANTENIMIENTO(ID_MANTENIMIENTO,ID_VEHICULOS ,TIPO_DE_MANTENIMIENTO,FECHA_DE_MANTENIMIENTO,FECHA_FIN_MANTENIMIENTO)
values(1,1,'Cambio de parabrisas','2021-02-11','2021-02-13');


-----------------------------------------------------------------------------------------------------------------


create table SUCURSALES (
   ID_SUCURSALES        INT4                 not null,
   ID_EMPRESA_MATRIZ    INT4                 null,
   ASESORES_SUCURSAL    VARCHAR(20)          not null,
   TELEFONO             VARCHAR(10)          not null,
   DIRECCION            VARCHAR(20)          not null,
   CORREO               VARCHAR(30)          not null,
   CIUDAD_SUCURSAL      VARCHAR(20)          not null,
   constraint PK_SUCURSALES primary key (ID_SUCURSALES)
);

insert into SUCURSALES (ID_SUCURSALES ,ID_EMPRESA_MATRIZ, ASESORES_SUCURSAL,TELEFONO,DIRECCION,CORREO,CIUDAD_SUCURSAL)
values(1,1,'Pedro','0999456712','Las Piñas','mudmarguayas@gmail.com','Guayas');
insert into SUCURSALES (ID_SUCURSALES ,ID_EMPRESA_MATRIZ, ASESORES_SUCURSAL,TELEFONO,DIRECCION,CORREO,CIUDAD_SUCURSAL)
values(2,1,'Dalember','0987654321','Avda Quito','mudmarambato@gmail.com','Ambato');
insert into SUCURSALES (ID_SUCURSALES ,ID_EMPRESA_MATRIZ, ASESORES_SUCURSAL,TELEFONO,DIRECCION,CORREO,CIUDAD_SUCURSAL)
values(3,1,'Anthony','0985671247','La Florita','mudmarloja@gmail.com','Loja');


-----------------------------------------------------------------------------------------------------------------

create table VEHICULOS_EMPRESA (
   ID_VEHICULOS         INT4                 not null,
   ID_EMPRESA_MATRIZ    INT4                 null,
   TIPO_DE_VEHICULO     VARCHAR(20)          not null,
   PLACA_VEHICULO       VARCHAR(10)          not null,
   COLOR_VEHICULO       VARCHAR(20)          not null,
   constraint PK_VEHICULOS_EMPRESA primary key (ID_VEHICULOS)
);


insert into VEHICULOS_EMPRESA (ID_VEHICULOS ,ID_EMPRESA_MATRIZ, TIPO_DE_VEHICULO,PLACA_VEHICULO,COLOR_VEHICULO)
values(1,1,'Camioneta 4x4','GIR0258','Negro');
insert into VEHICULOS_EMPRESA (ID_VEHICULOS ,ID_EMPRESA_MATRIZ, TIPO_DE_VEHICULO,PLACA_VEHICULO,COLOR_VEHICULO)
values(1,1,'Camion','JGR0258','Blanco');
insert into VEHICULOS_EMPRESA (ID_VEHICULOS ,ID_EMPRESA_MATRIZ, TIPO_DE_VEHICULO,PLACA_VEHICULO,COLOR_VEHICULO)
values(1,1,'Taxi ','MBB0365','Amarillo');