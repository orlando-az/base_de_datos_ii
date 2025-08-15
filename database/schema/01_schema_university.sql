-- ============================================================
-- SCHEMA – University Theme (PostgreSQL)
-- ============================================================

CREATE TABLE student (
  id              SERIAL PRIMARY KEY,
  first_name      VARCHAR(40) NOT NULL,
  last_name       VARCHAR(40) NOT NULL,
  email           VARCHAR(120) UNIQUE,
  city            VARCHAR(50)  NOT NULL,
  enrollment_date DATE         NOT NULL,
  status          VARCHAR(15)  NOT NULL CHECK (status IN ('active','inactive','graduated'))
);

CREATE TABLE instructor (
  id          SERIAL PRIMARY KEY,
  full_name   VARCHAR(80)  NOT NULL,
  department  VARCHAR(50)  NOT NULL,
  salary      NUMERIC(10,2) NOT NULL CHECK (salary >= 0)
);

CREATE TABLE course (
  id          SERIAL PRIMARY KEY,
  name        VARCHAR(80) NOT NULL,
  credits     INT NOT NULL CHECK (credits BETWEEN 1 AND 6),
  department  VARCHAR(50) NOT NULL
);

CREATE TABLE class_section (
  id            SERIAL PRIMARY KEY,
  course_id     INT NOT NULL REFERENCES course(id),
  instructor_id INT NOT NULL REFERENCES instructor(id),
  start_date    DATE NOT NULL,
  end_date      DATE NOT NULL,
  modality      VARCHAR(10) NOT NULL CHECK (modality IN ('online','onsite')),
  campus        VARCHAR(40) NOT NULL
);

CREATE TABLE enrollment (
  id           SERIAL PRIMARY KEY,
  student_id   INT NOT NULL REFERENCES student(id),
  section_id   INT NOT NULL REFERENCES class_section(id),
  enrolled_on  DATE NOT NULL,
  status       VARCHAR(15) NOT NULL CHECK (status IN ('enrolled','withdrawn','completed')),
  grade        NUMERIC(5,2) CHECK (grade BETWEEN 0 AND 100)
);
