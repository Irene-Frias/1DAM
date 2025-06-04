
SET SERVEROUTPUT ON;

-- 1
DECLARE 
    num NUMBER(2);
BEGIN
    num := 23;
    DBMS_OUTPUT.PUT_LINE('El número de dos dígitos es ' || num);
END;

-- 2
DECLARE 
    PI CONST NUMBER := 3.141592;
BEGIN
    DBMS_OUTPUT.PUT_LINE('El número PI es ' || PI);
END;


-- 3
DECLARE 
    v_apellido empleados.apellido%TYPE;
BEGIN
    v_apellido := 'Gutiérrez';
    DBMS_OUTPUT.PUT_LINE('El apellido es ' || v_apellido);
END;


-- 4
DECLARE 
    salario empleados.salario%TYPE := 1200;
BEGIN
    DBMS_OUTPUT.PUT_LINE('El salario es ' || salario);
END;


-- 5
DECLARE 
    empleado empleados%TYPE;
BEGIN
    SELECT * INTO empleado 
    FROM empleados 
    WHERE numEmpl = 1;
    
    DBMS_OUTPUT.PUT_LINE('El empleado ' || empleado.apellido || ' con salario ' || empleado.salario);
END;


-- 6
DECLARE 
    TYPE Datos_empleado IS RECORD (
        num_empl EMPLEADOS.numEmpl%TYPE,
        apellido EMPLEADOS.apellido%TYPE
    );
    emp Datos_empleado;
BEGIN
    emp.num_empl := 1;
    emp.apellido := 'Gutiérrez';

    DBMS_OUTPUT.PUT_LINE('Empleado n.º ' || emp.num_empl || ' - Apellido: ' || emp.apellido);
END;


-- 7
DECLARE 
    CUROSR emplVendedor IS
        SELECT apellido, salario 
        FROM emepleados 
        WHERE oficio = 'Vendedor');
    v_apellido empleados.apellido%ROWTYPE;
    v_salario empleados.salario%ROWTYPE;
BEGIN
    OPEN emplVendedor;
        LOOP
            FETCH emplVendedor INTO v_apellido, v_salario;
            EXIT WHEN emplVendedtor%NOTFOUND;
            
            DBMS_OUTPUT.PUT_LINE('El empleado con ' || v_apellido || ' con salario ' || v_salario);
        END LOOP;
    CLOSE emplVendedor;    
END;


-- 8
DECLARE 
     v_oficio EMPLEADOS.oficio%TYPE := 'Vendedor'; 

    CUROSR emplVendedor IS
        SELECT apellido, salario 
        FROM emepleados 
        WHERE oficio = v_oficio;
    v_apellido empleados.apellido%ROWTYPE;
    v_salario empleados.salario%ROWTYPE;
BEGIN
    OPEN emplVendedor;
        LOOP
            FETCH emplVendedor INTO v_apellido, v_salario;
            EXIT WHEN emplVendedtor%NOTFOUND;
            
            DBMS_OUTPUT.PUT_LINE('El empleado con ' || v_apellido || ' con salario ' || v_salario);
        END LOOP;
    CLOSE emplVendedor;    
END;


-- 9
DECLARE 
    v_oficio EMPLEADOS.oficio%TYPE := 'Rey'; 
    CUROSR emplVendedor IS
        SELECT apellido, salario 
        FROM emepleados 
        WHERE oficio = v_oficio;
BEGIN
    OPEN emplVendedor;
        LOOP
            FETCH emplVendedor INTO v_apellido, v_salario;
            EXIT WHEN emplVendedtor%NOTFOUND;
            
            DBMS_OUTPUT.PUT_LINE('El empleado con ' || v_apellido || ' con salario ' || v_salario);
        END LOOP;
    CLOSE emplVendedor;    
END;


