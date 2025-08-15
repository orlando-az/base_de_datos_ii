-- ============================================================
-- SAMPLE DATA (Seed) – University Theme
-- ============================================================

-- Students
INSERT INTO student (first_name,last_name,email,city,enrollment_date,status) VALUES
 ('Ana','Torres','ana.torres@mail.com','Tarija','2025-02-10','active'),
 ('Luis','Ramos','luis.ramos@mail.com','La Paz','2025-02-15','active'),
 ('Sofia','Gomez','sofia.gomez@mail.com','Santa Cruz','2025-02-20','inactive'),
 ('Carlos','Perez','carlos.perez@mail.com','Cochabamba','2025-03-01','active'),
 ('Maria','Lopez','maria.lopez@mail.com','Tarija','2025-03-05','graduated'),
 ('Andres','Quispe','andres.quispe@mail.com','La Paz','2025-03-10','active'),
 ('Lucia','Medina','lucia.medina@mail.com','Santa Cruz','2025-03-12','active'),
 ('Pablo','Gutierrez','pablo.gtz@mail.com','Sucre','2025-03-15','inactive'),
 ('Erika','Flores','erika.flores@mail.com','La Paz','2025-03-18','active'),
 ('Diego','Arce','diego.arce@mail.com','Tarija','2025-03-20','active');

-- Instructors
INSERT INTO instructor (full_name,department,salary) VALUES
 ('Dr. Julio Vargas','Computer Science',9500),
 ('MSc. Carla Nina','Mathematics',8200),
 ('Ing. Marco Salazar','Information Systems',8800),
 ('Lic. Paula Rivera','Humanities',7000),
 ('PhD. Alicia Rojas','Computer Science',12000);

-- Courses
INSERT INTO course (name,credits,department) VALUES
 ('Databases I',4,'Computer Science'),
 ('Databases II',4,'Computer Science'),
 ('Linear Algebra',3,'Mathematics'),
 ('Operating Systems',4,'Information Systems'),
 ('Academic Writing',2,'Humanities'),
 ('Data Structures',4,'Computer Science');

-- Class Sections
INSERT INTO class_section (course_id,instructor_id,start_date,end_date,modality,campus) VALUES
 (1,1,'2025-03-10','2025-07-10','onsite','Central'),
 (2,5,'2025-03-12','2025-07-12','online','Virtual'),
 (3,2,'2025-03-15','2025-07-15','onsite','North'),
 (4,3,'2025-03-18','2025-07-18','onsite','Central'),
 (5,4,'2025-03-20','2025-05-20','online','Virtual'),
 (6,1,'2025-03-22','2025-07-22','onsite','Central'),
 (2,5,'2025-04-01','2025-08-01','onsite','South'),
 (3,2,'2025-04-05','2025-08-05','online','Virtual');

-- Enrollments
INSERT INTO enrollment (student_id,section_id,enrolled_on,status,grade) VALUES
 (1,1,'2025-03-10','completed',85.5),
 (1,2,'2025-03-12','enrolled',NULL),
 (2,3,'2025-03-16','completed',78.0),
 (2,4,'2025-03-19','enrolled',NULL),
 (3,5,'2025-03-22','withdrawn',NULL),
 (4,1,'2025-03-11','completed',91.0),
 (4,6,'2025-03-23','enrolled',NULL),
 (5,2,'2025-03-13','completed',88.0),
 (6,4,'2025-03-20','completed',69.0),
 (7,6,'2025-03-25','enrolled',NULL),
 (8,3,'2025-03-18','completed',55.0),
 (9,7,'2025-04-02','enrolled',NULL),
 (10,8,'2025-04-06','enrolled',NULL),
 (3,3,'2025-04-10','completed',81.0),
 (6,2,'2025-04-12','completed',74.5);
