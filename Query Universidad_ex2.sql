SELECT d.nombre, p.nombre, p.apellido1, p.apellido2, p.id FROM universidad.persona p JOIN universidad.profesor pr ON p.id = pr.id_profesor JOIN universidad.departamento d ON pr.id_departamento = d.id ORDER BY d.nombre ASC, p.apellido1 ASC, p.apellido2 ASC, p.nombre ASC;
SELECT p.nombre, p.apellido1, p.apellido2 FROM universidad.persona p RIGHT JOIN universidad.profesor pr ON p.id = pr.id_profesor WHERE pr.id_departamento IS NULL;
SELECT DISTINCT d.nombre FROM universidad.departamento d LEFT JOIN universidad.profesor pr ON d.id = pr.id_departamento WHERE pr.id_profesor IS NULL;
SELECT DISTINCT p.nombre, p.apellido1, p.apellido2, a.id FROM universidad.persona p LEFT JOIN universidad.asignatura a ON p.id = a.id_profesor WHERE p.tipo = "profesor" AND a.id IS NULL;
SELECT a.nombre FROM universidad.asignatura a LEFT JOIN universidad.profesor pr on a.id_profesor = pr.id_profesor WHERE a.id_profesor IS NULL;
SELECT d.nombre FROM universidad.departamento d LEFT JOIN universidad.profesor pr ON d.id = pr.id_departamento LEFT JOIN universidad.asignatura a ON a.id_profesor = pr.id_profesor WHERE a.curso IS NULL;