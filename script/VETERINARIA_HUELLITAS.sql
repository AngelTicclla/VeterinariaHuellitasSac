-- ---------------------------------------------------------------------
-- Creación de la base de datos
-- ---------------------------------------------------------------------
CREATE DATABASE BD_VETERINARIA_HUELLITAS;

-- ---------------------------------------------------------------------
-- Cambiar a la base de datos creada
-- ---------------------------------------------------------------------
USE BD_VETERINARIA_HUELLITAS;

-- ---------------------------------------------------------------------
-- Creación de tablas
-- ---------------------------------------------------------------------
CREATE TABLE TB_CITA (
  idCita int NOT NULL AUTO_INCREMENT,
  fecha_cita date NOT NULL,
  idMascota int NOT NULL,
  PRIMARY KEY (idCita)
);

CREATE TABLE TB_CLIENTE (
  idCliente int NOT NULL AUTO_INCREMENT,
  nombres_cliente varchar(50) NOT NULL,
  apellidos_cliente varchar(50) NOT NULL,
  dni_cliente char(8) NOT NULL,
  email_cliente varchar(30) UNIQUE NOT NULL,
  telefono_cliente varchar(15) NOT NULL,
  contraseña_cliente varchar(20) NOT NULL,
  PRIMARY KEY (idCliente)
);

CREATE TABLE TB_CONTROL_SERVICIO (
  idControlServicio int NOT NULL AUTO_INCREMENT,
  fecha_control date NOT NULL,
  idMascota int NOT NULL,
  idMedico varchar(15) NOT NULL,
  PRIMARY KEY (idControlServicio)
);

CREATE TABLE TB_CONTROL_SERVICIO_MASCOTA (
  idControlServicio int NOT NULL,
  idServicio int NOT NULL
);

CREATE TABLE TB_EMPLEADO (
  idEmpleado varchar(15) NOT NULL,
  nombre_empleado varchar(50) NOT NULL,
  direccion_empleado varchar(50) NOT NULL,
  telefono_empleado int NOT NULL,
  email_empleado varchar(30) NOT NULL,
  estado_empleado int NOT NULL,
  PRIMARY KEY (idEmpleado)
);

CREATE TABLE TB_FACTURA (
  idFactura int NOT NULL AUTO_INCREMENT,
  fecha_factura date NOT NULL,
  hora_factura time NOT NULL,
  idControlServicio int NOT NULL,
  PRIMARY KEY (idFactura)
);

CREATE TABLE TB_HISTORIAL (
  idMascota int NOT NULL,
  fechaseg_historial date,
  idControlServicio int NOT NULL
);

CREATE TABLE TB_MASCOTA (
  idMascota int NOT NULL AUTO_INCREMENT,
  nombre_mascota varchar(20) NOT NULL,
  especie_mascota varchar(20) NOT NULL,
  raza_mascota varchar(20) NOT NULL,
  tamaño_mascota varchar(10) NOT NULL,
  fechanac_mascota date NOT NULL,
  idCliente int NOT NULL,
  PRIMARY KEY (idMascota)
);

CREATE TABLE TB_MEDICO (
  idMedico varchar(15) NOT NULL,
  nombre_medico varchar(50) NOT NULL,
  direccion_medico varchar(50) NOT NULL,
  telefono_medico int NOT NULL,
  email_medico varchar(30) NOT NULL,
  estado_medico int NOT NULL,
  PRIMARY KEY (idMedico)
);

CREATE TABLE TB_SERVICIO (
  idServicio int NOT NULL AUTO_INCREMENT,
  descripcion_servicio text NOT NULL,
  precio_servicio float NOT NULL,
  tipo_servicio varchar(15) NOT NULL,
  periodicidad_servicio date DEFAULT NULL,
  estado_servicio int NOT NULL,
  PRIMARY KEY (idServicio)
);

CREATE TABLE TB_PRODUCTO (
	idProducto int NOT NULL AUTO_INCREMENT,
    /*foto_producto mediumblob NOT NULL,*/
    descripcion_producto text NOT NULL,
    precio_producto decimal(18,2) NOT NULL,
    cantidad_producto int NOT NULL,
    precio_total decimal(18,2) NOT NULL,
    idCliente int NOT NULL,
    primary key (idProducto)
);

-- ---------------------------------------------------------------------
-- Creación de llaves foráneas
-- ---------------------------------------------------------------------
ALTER TABLE TB_CONTROL_SERVICIO
  ADD FOREIGN KEY (idMascota) REFERENCES TB_MASCOTA (idMascota) ON UPDATE CASCADE,
  ADD FOREIGN KEY (idMedico) REFERENCES TB_MEDICO (idMedico) ON UPDATE CASCADE;

ALTER TABLE TB_CONTROL_SERVICIO_MASCOTA
  ADD FOREIGN KEY (idServicio) REFERENCES TB_SERVICIO (idServicio) ON UPDATE CASCADE,
  ADD FOREIGN KEY (idControlServicio) REFERENCES TB_CONTROL_SERVICIO (idControlServicio) ON UPDATE CASCADE;

ALTER TABLE TB_FACTURA
  ADD FOREIGN KEY (idControlServicio) REFERENCES TB_CONTROL_SERVICIO (idControlServicio) ON UPDATE CASCADE;

ALTER TABLE TB_HISTORIAL
  ADD FOREIGN KEY (idMascota) REFERENCES TB_MASCOTA (idMascota) ON UPDATE CASCADE,
  ADD FOREIGN KEY (idControlServicio) REFERENCES TB_CONTROL_SERVICIO (idControlServicio) ON UPDATE CASCADE;

ALTER TABLE TB_MASCOTA
  ADD FOREIGN KEY (idCliente) REFERENCES TB_CLIENTE (idCliente) ON UPDATE CASCADE;

ALTER TABLE TB_PRODUCTO
  ADD FOREIGN KEY (idCliente) REFERENCES TB_CLIENTE (idCliente) ON UPDATE CASCADE;

-- ---------------------------------------------------------------------
-- Inserción de datos
-- ---------------------------------------------------------------------

INSERT INTO TB_CLIENTE (nombres_cliente, apellidos_cliente, dni_cliente, email_cliente, telefono_cliente, contraseña_cliente) VALUES
('MARCO', 'BELTRAN', '12345678', 'marcobeltran97@gmail.com', '987654321', '1234');

SELECT * FROM TB_CLIENTE WHERE email_cliente = 'marcobeltran97@gmail.com' AND contraseña_cliente = '1234';









