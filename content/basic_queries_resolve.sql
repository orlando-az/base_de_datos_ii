-- ============================================================
-- CONTENIDO
-- Cubre: SELECT, WHERE, LIKE/ILIKE, BETWEEN, IN, JOINs, GROUP BY/HAVING,
-- ORDER BY, LIMIT/OFFSET
-- ============================================================

-- 1) SELECT simple – sin filtros ni condiciones
SELECT id, first_name, last_name, city
FROM student;

SELECT id, full_name, department
FROM instructor;

-- 2) WHERE – operadores de comparación y lógicos
SELECT id, first_name, last_name, city
FROM student
WHERE city = 'La Paz' AND status <> 'inactive';

SELECT id, first_name, last_name, status
FROM student
WHERE status != 'graduated' AND enrollment_date >= DATE '2025-03-10';

-- 3) LIKE / ILIKE
SELECT id, first_name, last_name
FROM student
WHERE last_name LIKE 'G%';  -- empieza con G

SELECT id, full_name
FROM instructor
WHERE full_name ILIKE '%rojas%';  -- coincidencia sin distinción de mayúsculas/minúsculas

-- 4) BETWEEN (fechas y números)
SELECT id, course_id, start_date, end_date
FROM class_section
WHERE start_date BETWEEN DATE '2025-03-10' AND DATE '2025-03-20';

SELECT student_id, grade
FROM enrollment
WHERE grade BETWEEN 70 AND 90;

-- 5) IN / NOT IN
SELECT id, full_name, department
FROM instructor
WHERE department IN ('Computer Science','Mathematics');

SELECT id, city, status
FROM student
WHERE city NOT IN ('Tarija','La Paz');

-- 6) JOINs con alias
-- INNER JOIN
SELECT s.first_name || ' ' || s.last_name AS student,
       c.name AS course,
       cs.modality,
       cs.campus
FROM enrollment e
JOIN student s      ON s.id = e.student_id
JOIN class_section cs ON cs.id = e.section_id
JOIN course c       ON c.id = cs.course_id
ORDER BY student, course;

-- LEFT JOIN
SELECT s.id, s.first_name, s.last_name, e.section_id
FROM student s
LEFT JOIN enrollment e ON e.student_id = s.id
ORDER BY s.id, e.section_id NULLS LAST;

-- RIGHT JOIN
SELECT cs.id AS section_id, c.name AS course, e.student_id
FROM enrollment e
RIGHT JOIN class_section cs ON cs.id = e.section_id
JOIN course c ON c.id = cs.course_id
ORDER BY cs.id, e.student_id NULLS LAST;

-- FULL JOIN
SELECT s.id AS student_id, e.section_id
FROM student s
FULL JOIN enrollment e ON e.student_id = s.id
ORDER BY student_id NULLS LAST, section_id NULLS LAST;

-- 7) GROUP BY + HAVING
SELECT c.name AS course, COUNT(e.id) AS enrollments
FROM course c
JOIN class_section cs ON cs.course_id = c.id
LEFT JOIN enrollment e ON e.section_id = cs.id
GROUP BY c.name
ORDER BY enrollments DESC, course;

SELECT s.city, AVG(e.grade) AS avg_grade, COUNT(*) AS completed_count
FROM enrollment e
JOIN student s ON s.id = e.student_id
WHERE e.status = 'completed' AND e.grade IS NOT NULL
GROUP BY s.city
HAVING AVG(e.grade) >= 75
ORDER BY avg_grade DESC;

-- 8) ORDER BY + LIMIT/OFFSET
SELECT id, full_name, salary
FROM instructor
ORDER BY salary DESC
LIMIT 3;

SELECT id, full_name, salary
FROM instructor
ORDER BY salary DESC
LIMIT 3 OFFSET 3;

-- 9) ORDER BY con manejo de valores NULL
SELECT id, student_id, section_id, grade
FROM enrollment
ORDER BY grade IS NULL, grade DESC;
