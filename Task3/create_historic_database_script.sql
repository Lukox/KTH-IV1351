--enums
CREATE TYPE valid_skill_levels AS ENUM ('beginner', 'intermediate', 'advanced');
CREATE TYPE valid_lesson_types AS ENUM ('individual_lesson', 'group_lesson', 'ensemble');

--historic student table
CREATE TABLE student (
 student_id SERIAL NOT NULL,
 person_number VARCHAR(12) NOT NULL UNIQUE,
 name VARCHAR(100) NOT NULL,
 street VARCHAR(100) NOT NULL,
 zip VARCHAR(5) NOT NULL,
 city VARCHAR(100) NOT NULL
);

ALTER TABLE student ADD CONSTRAINT PK_student PRIMARY KEY (student_id);

--historic lesson table
CREATE TABLE lesson (
 lesson_id SERIAL NOT NULL,
 skill_level valid_skill_levels,
 lesson_type valid_lesson_types NOT NULL,
 time TIMESTAMP(6) NOT NULL,
 genre VARCHAR(200),
 instrument_type VARCHAR(200),
 min_students INT,
 max_students INT,
 instructor_id INT NOT NULL,
 student_amount INT,
 price INT NOT NULL
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);

--historic student_lesson table
CREATE TABLE student_lesson (
 student_id SERIAL NOT NULL,
 lesson_id SERIAL NOT NULL
);

ALTER TABLE student_lesson ADD CONSTRAINT PK_student_lesson PRIMARY KEY (student_id,lesson_id);


ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_0 FOREIGN KEY (student_id) REFERENCES lesson (lesson_id) ON DELETE CASCADE;
ALTER TABLE student_lesson ADD CONSTRAINT FK_student_lesson_1 FOREIGN KEY (lesson_id) REFERENCES student (student_id) ON DELETE CASCADE;

create extension dblink;