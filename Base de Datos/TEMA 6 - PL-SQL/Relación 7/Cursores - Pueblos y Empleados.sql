SET SERVEROUTPUT ON;

/* 
 *  Apartado 1 	 -	BD:	Pueblos
*/

-- 1 
CREATE OR REPLACE PROCEDURE clasifica
IS 
    CURSOR cPueblos IS SELECT * FROM pueblos vPueblos cPueblos%ROWTYPE;
BEGIN
    EXECUTE IMMEDIATE 'CREATE TABLE pp AS (SELECT * FROM pueblos WHERE 1 = 2)';
    EXECUTE IMMEDIATE 'CREATE TABLE pm AS (SELECT * FROM pueblos WHERE 1 = 2)';
    EXECUTE IMMEDIATE 'CREATE TABLE pg AS (SELECT * FROM pueblos WHERE 1 = 2)';
    
    OPEN cPueblos;
    
    FETCH cPueblos INTO vPueblo;
    
    WHILE cPueblos%FOUND 
        LOOP
            IF (vPueblo.pob_total < 10000) THEN
                EXECUTE IMMEDIATE 'INSERT INTO pp SELECT * FROM pueblos WHERE codigo = :codigo' 
                    USING vPueblo.codigo;
            ELSIF (vpueblo.pob_total >= 10000 AND vpueblo.pob_total <= 50000) THEN
                EXECUTE IMMEDIATE 'INSERT INTO pm SELECT * FROM pueblos WHERE codigo = :codigo'
                    USING vPueblo.codigo;
            ELSE
                EXECUTE IMMEDIATE 'INSERT INTO pg SELECT * FROM pueblos WHERE codigo = :codigo'
                    USING vPueblo.codigo;
            END IF;   
            
            FETCH cPueblos INTO vPueblo;              
        END LOOP;
    
    CLOSE cPueblo;
END clasifica;
    


/* 
 *  Apartado 2 	 -	BD:	Empleados 
*/

-- 2
CREATE OR REPLACE PROCEDURE actualizaLimite
IS 
    porcentaje NUMBER(10,3);
    CURSOR cEmpleados IS SELECT numempl, (ventas/cuota) as ratio 
        FROM empleados vEmpleados cEmpleados%ROWTYPE;
BEGIN
 OPEN cEmpleados;
    
    FETCH cEmpleados INTO vEmpleado;
    
    WHILE cEmpleados%FOUND 
        LOOP
            IF (vEmpleado.ratio < 10000) THEN
                porcentaje := 0.9;
            ELSIF vEmpleado.ratio >= 0.5 AND vEmpleado.ratio < 1 THEN 
                porcentaje := 0.92;
            ELSIF vEmpleado.ratio = 1 THEN
                porcentaje := 1.03;
            ELSIF vEmpleado.ratio > 1 AND vEmpleado.ratio < 1.5 THEN
                porcentaje := 1.06;
            ELSE 
                porcentaje := 1.145;
            END IF;        
            
            UPDATE cliente 
            SET limite_credito = limite_credito * porcentaje
            WHERE repclie = v.Empleado.numempl;
            
            FETCH cEmpleados INTO vEmpleado;
        END LOOP;
        
    CLOSE cEmpleados;
END actualizaLimite;

