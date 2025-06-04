-- Tabla departamentos
CREATE TABLE departamentos (
    id_dep NUMBER PRIMARY KEY,
    nombre_dep VARCHAR2(50)
);

-- Tabla empleados
CREATE TABLE empleados (
    id_emp NUMBER PRIMARY KEY,
    nombre VARCHAR2(50),
    oficio VARCHAR2(30),
    salario NUMBER(8, 2),
    comision NUMBER(8, 2),
    id_dep NUMBER REFERENCES departamentos(id_dep)
);

-- Tabla clientes
CREATE TABLE clientes (
    id_cli NUMBER PRIMARY KEY,
    nombre_cli VARCHAR2(50),
    id_vendedor NUMBER REFERENCES empleados(id_emp)
);

-- Tabla gestión
CREATE TABLE gestion (
    nombre_cliente VARCHAR2(50),
    nombre_vendedor VARCHAR2(50)
);

-- Tabla empleados2
CREATE TABLE empleados2 (
    id_dep NUMBER PRIMARY KEY,
    num_empleados NUMBER
);


-- Departamentos
INSERT INTO departamentos VALUES (10, 'CONTABILIDAD');
INSERT INTO departamentos VALUES (20, 'VENTAS');
INSERT INTO departamentos VALUES (30, 'RRHH');

-- Empleados
INSERT INTO empleados VALUES (1, 'Laura Pérez', 'VENDEDOR', 1500, 200, 20);
INSERT INTO empleados VALUES (2, 'Carlos Ruiz', 'VENDEDOR', 1800, 150, 20);
INSERT INTO empleados VALUES (3, 'Marta López', 'CONTABLE', 1600, NULL, 10);
INSERT INTO empleados VALUES (4, 'Luis Gómez', 'ANALISTA', 2100, NULL, 30);
INSERT INTO empleados VALUES (5, 'Sofía Torres', 'VENDEDOR', 1400, 180, 20);
INSERT INTO empleados VALUES (6, 'Raúl Ramírez', 'CONTABLE', 1550, NULL, 10);

-- Clientes
INSERT INTO clientes VALUES (101, 'Frutería Sol', 1);
INSERT INTO clientes VALUES (102, 'Panadería San Juan', 2);
INSERT INTO clientes VALUES (103, 'Lácteos Norte', 5);
