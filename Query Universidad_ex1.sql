SELECT apellido1, apellido2, nombre FROM universidad.persona ORDER BY apellido1 ASC, apellido2 ASC, nombre ASC;
SELECT nombre, apellido1, apellido2 FROM universidad.persona p WHERE p.tipo = "alumno" AND p.telefono IS NULL; 
SELECT nombre, apellido1, apellido2 FROM universidad.persona p WHERE p.tipo = "alumno" AND YEAR(p.fecha_nacimiento) = 1999;
SELECT nombre, apellido1, apellido2 FROM universidad.persona p WHERE p.tipo = "profesor" AND p.telefono IS NULL AND p.nif LIKE "%k";
SELECT nombre FROM universidad.asignatura a WHERE a.cuatrimestre = 1 AND a.curso = 3 AND a.id_grado = 7; 
SELECT p.apellido1, p.apellido2, p.nombre, d.nombre FROM universidad.persona p JOIN universidad.profesor pr ON  p.id = pr.id_profesor JOIN universidad.departamento d ON pr.id_departamento = d.id ORDER BY p.apellido1, p.apellido2, p.nombre;
SELECT a.nombre, c.anyo_inicio, c.anyo_fin FROM universidad.asignatura a JOIN universidad.alumno_se_matricula_asignatura m ON a.id = m.id_asignatura JOIN universidad.curso_escolar c ON c.id = m.id_curso_escolar JOIN universidad.persona p ON m.id_alumno = p.id WHERE p.nif = "26902806M"; 
SELECT DISTINCT d.nombre FROM universidad.departamento d JOIN universidad.profesor pr ON d.id = pr.id_departamento JOIN universidad.asignatura a ON pr.id_profesor = a.id_profesor JOIN universidad.grado g ON a.id_grado = g.id WHERE g.nombre = "Grado en Ingeniería Informática (Plan 2015)";
SELECT DISTINCT p.nombre, p.apellido1, p.apellido2 FROM universidad.persona p JOIN universidad.alumno_se_matricula_asignatura m ON p.id = m.id_alumno JOIN universidad.curso_escolar c ON c.id = m.id_curso_escolar WHERE c.anyo_inicio = 2018 AND c.anyo_fin = 2019;
