-- 1. Crear tabla de cabalgatas
CREATE TABLE cabalgatas (
    id_cabalgata NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    fecha DATE NOT NULL,
    ubicacion VARCHAR2(100)
);

-- 2. Crear tabla de jinetes
CREATE TABLE jinetes (
    id_jinete NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    edad NUMBER,
    experiencia_anos NUMBER
);

-- 3. Crear tabla de caballos
CREATE TABLE caballos (
    id_caballo NUMBER PRIMARY KEY,
    nombre VARCHAR2(100) NOT NULL,
    raza VARCHAR2(50),
    edad NUMBER
);

-- 4. Crear tabla de participaciones
CREATE TABLE participaciones (
    id_participacion NUMBER PRIMARY KEY,
    id_cabalgata NUMBER REFERENCES cabalgatas(id_cabalgata),
    id_jinete NUMBER REFERENCES jinetes(id_jinete),
    id_caballo NUMBER REFERENCES caballos(id_caballo),
    puesto NUMBER
);

---------------------------------------------------
-- Insertar datos de prueba
---------------------------------------------------

-- Insertar cabalgatas
INSERT INTO cabalgatas VALUES (1, 'Cabalgata del Sol', TO_DATE('2025-03-15', 'YYYY-MM-DD'), 'Salta');
INSERT INTO cabalgatas VALUES (2, 'Ruta de los Andes', TO_DATE('2025-04-10', 'YYYY-MM-DD'), 'Mendoza');

-- Insertar jinetes
INSERT INTO jinetes VALUES (1, 'Juan Pérez', 35, 10);
INSERT INTO jinetes VALUES (2, 'Ana Morales', 28, 6);
INSERT INTO jinetes VALUES (3, 'Carlos Ríos', 40, 15);

-- Insertar caballos
INSERT INTO caballos VALUES (1, 'Relámpago', 'Criollo', 8);
INSERT INTO caballos VALUES (2, 'Estrella', 'Árabe', 5);
INSERT INTO caballos VALUES (3, 'Tormenta', 'Appaloosa', 7);

-- Insertar participaciones
INSERT INTO participaciones VALUES (1, 1, 1, 1, 1);
INSERT INTO participaciones VALUES (2, 1, 2, 2, 2);
INSERT INTO participaciones VALUES (3, 2, 3, 3, 1);

COMMIT;
