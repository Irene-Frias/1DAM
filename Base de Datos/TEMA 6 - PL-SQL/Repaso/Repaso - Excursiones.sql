SET SERVEROUTPUT ON;

-- 1
CREATE OR REPLACE PROCEDURE aumentoSalarial (eDNI VARCHAR2)
AS 
    ctdExcursiones NUMBER(4);
    salarioAnterior NUMBER(6,2);
    incrementoSalario NUMBER(6,2);
    salarioNuevo NUMBER(6,2);
BEGIN
    SELECT COUNT(*) INTO ctdExcursiones FROM excursion WHERE empleado = eDNI;
    
    SELECT salario INTO salarioAnterior FROM excursion WHERE empleado = eDNI;
    incrementosalario := ctdexcursiones * 15;
    
    UPDATE empleado
    SET salario = salario + incrementoSalario
    WHERE dni = eDNI;
    
    DBMS_OUTPUT.PUT_LINE('El DNI del empleado es: ' || eDNI);
    DBMS_OUTPUT.PUT_LINE('El salario anterior es: ' || salarioanterior);
    DBMS_OUTPUT.PUT_LINE('Número de excursiones : ' || ctdExcursiones);
    DBMS_OUTPUT.PUT_LINE('El incremento salarial es: ' || incrementoSalario);
    DBMS_OUTPUT.PUT_LINE('El nuevo salario es: ' || salarioNuevo);
    
END aumentoSalarial;


-- 2
CREATE OR REPLACE FUNCTION rutasUtilizadas (nombreRecurso VARCHAR2)
    RETURN NUMBER;
IS
    totalRutas NUMBER(3);
BEGIN
    SELECT COUNT(*) INTO totalRutas FROM recurso r, usa u 
        WHERE r.codigo = u.recurso AND r.nombre = nombreRecurso;
    RETURN totalRutas;
END rutasUtilizadas;    


-- 3 
CREATE OR REPLACE PROCEDURE listadoExcursion (eCodigo VARCHAR2)
AS 
    CURSOR cExcursiones IS
        SELECT u.nombre, u.apellidos, u.dni, u.telefono, e.fecha_h_inicio
        FROM excursion
        WHERE r.usuario = u.codigo_u
        AND r.excursion = e.codigo_e
        AND e.codigo_e = eCodigo;
    vExcur cExcursiones%ROWTYPE;
BEGIN
    OPEN cExcursiones;
    
    FETCH cExcursiones INTO vExcur;
    
    WHILE cExcursiones%FOUND 
        LOOP
            DBMS_OUTPUT.PUT_LINE((vEx.nombre)      || (' ') ||
                                (vEx.apellidos)   || (' ') || 
                                (vEx.dni)         || (' ') || 
                                (vEx.telefono)    || (' ') || 
                                (vEx.fecha_h_inicio));
            FETCH cExcursiones INTO vExcur;    
    END LOOP;
    CLOSE cExcursiones;
END listadoExcursion;


-- 4
CREATE OR REPLACE TRIGGER borrarUsuario
    BEFORE DELETE ON usuario
    FOR EACH NOW
BEGIN 
    INSERT INTO usuarios_borrados
    VALUES(:OLD.dni, :OLD.nombre, :OLD.telefono, CURRENT_DATE);
END borrarUsuario;

