
SET SERVEROUTPUT ON;

-- 1
BEGIN
    UPDATE empleados
    SET comision = comision + (salario * 0.05)
    WHERE UPPER(oficio) = 'VENDEDOR';
END;


-- 2
DECLARE
    CURSOR cur_vendedores IS
        SELECT id_emp, salario, comision
        FROM empleados WHERE oficio = 'VENDEDOR';
    v_id empleados.id_emp%TYPE;
    v_salario empleados.salario%TYPE;
    v_comision empleados.comision%TYPE;
BEGIN
    FOR vend IN cur_vendedores LOOP
        UPDATE empleados
        SET comision = vend.comision + (vend.salario * 0.05)
        WHERE id_emp = vend.id_emp;
    END LOOP;
END;


-- 3
DECLARE
    v_nombre empleados.nombre%TYPE;
    v_salario empleados.salario%TYPE;
BEGIN
    FOR reg IN (SELECT nombre, salario 
    FROM empleados WHERE id_dep = 10) 
    LOOP
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || reg.nombre || ' | Sueldo: ' || reg.salario);
    END LOOP;
END;


-- 4
DECLARE
    v_num NUMBER := 1; -- Simulamos entrada
    CURSOR cur_conta IS
        SELECT nombre, salario FROM empleados WHERE id_dep = 10;
    v_count NUMBER := 0;
BEGIN
    FOR reg IN cur_conta LOOP
        EXIT WHEN v_count >= v_num;
        DBMS_OUTPUT.PUT_LINE('Nombre: ' || reg.nombre || ' | Sueldo: ' || reg.salario);
        v_count := v_count + 1;
    END LOOP;
END;


-- 5
BEGIN
    INSERT INTO gestion(nombre_cliente, nombre_vendedor)
    SELECT c.nombre_cli, e.nombre
    FROM clientes c
    JOIN empleados e ON c.id_vendedor = e.id_emp;
END;


-- 6
BEGIN
    INSERT INTO empleados2(id_dep, num_empleados)
    SELECT id_dep, COUNT(*) FROM empleados GROUP BY id_dep;
END;


-- 7
DECLARE
    CURSOR cur_dep IS SELECT DISTINCT id_dep FROM empleados;
    v_id_dep empleados.id_dep%TYPE;
    v_emp_id empleados.id_emp%TYPE;
BEGIN
    FOR dep IN cur_dep LOOP
        SELECT id_emp INTO v_emp_id
        FROM empleados
        WHERE id_dep = dep.id_dep AND salario = (SELECT MIN(salario) FROM empleados WHERE id_dep = dep.id_dep);

        UPDATE empleados SET salario = salario * 0.95 WHERE id_emp = v_emp_id;
    END LOOP;
END;


-- 8
DECLARE
    v_id NUMBER := 2;  -- Entrada simulada
    v_existe NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_existe FROM empleados WHERE id_emp = v_id;

    IF v_existe > 0 THEN
        UPDATE empleados SET comision = NVL(comision, 0) + 50 WHERE id_emp = v_id;
        DBMS_OUTPUT.PUT_LINE('Comisión actualizada.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Empleado no existe.');
    END IF;
END;


-- 9
DECLARE
    v_id NUMBER := 99;  -- Entrada simulada
    v_existe NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_existe FROM empleados WHERE id_emp = v_id;

    IF v_existe = 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Empleado no existe.');
    ELSE
        UPDATE empleados SET comision = NVL(comision, 0) + 50 WHERE id_emp = v_id;
        DBMS_OUTPUT.PUT_LINE('Comisión actualizada.');
    END IF;
END;

