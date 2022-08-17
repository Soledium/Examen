-- consulta 1

SELECT rut, estudiante.nombre, apellido_pat, apellido_mat, codigo_curso, comuna.nombre
	FROM estudiante, comuna
    where codigo_curso = '0012' and estudiante.codigo_comuna = comuna.codigo_comuna;

-- consulta 2

SELECT codigo_curso, fecha_inicio, fecha_termno, descripcion, duracion_horas
	FROM curso, plan_formativo;

-- consulta 3

SELECT DISTINCT plan_formativo.descripcion, COUNT(plan_modulo.codigo_plan_formativo) as cantidad
    FROM plan_formativo, modulo, plan_modulo
        WHERE plan_formativo.codigo_plan_formativo = plan_modulo.codigo_plan_formativo AND plan_modulo.codigo_modulo = modulo.codigo_modulo
        GROUP BY plan_formativo.descripcion;

-- consulta 4

SELECT plan_formativo.codigo_plan_formativo, plan_formativo.descripcion, modulo.codigo_modulo, modulo.descripcion
    FROM modulo, plan_formativo, plan_modulo
        WHERE plan_formativo.descripcion LIKE '%FullStack%';

