--Creating Historic Lesson Table
CREATE TABLE IF NOT EXISTS historic_lesson (
    lesson_id INT NOT NULL,
    skill_level valid_skill_levels,
    lesson_type valid_lesson_types NOT NULL,
    time TIMESTAMP(6) NOT NULL,
    genre VARCHAR(200),
    instrument_type VARCHAR(200),
    min_students INT,
    max_students INT,
    student_amount INT,
    price INT NOT NULL
);
ALTER TABLE historic_lesson ADD CONSTRAINT PK0_lesson PRIMARY KEY (lesson_id);

--Creating Historic Student Table
CREATE TABLE IF NOT EXISTS historic_student (
    student_id INT NOT NULL,
    person_number VARCHAR(12) NOT NULL UNIQUE,
    name VARCHAR(100) NOT NULL,
    street VARCHAR(100) NOT NULL,
    zip VARCHAR(5) NOT NULL,
    city VARCHAR(100) NOT NULL
);
ALTER TABLE historic_student ADD CONSTRAINT PK_0student PRIMARY KEY (student_id);

--Creating Historic student_lesson table which shows all lessons and its students
CREATE TABLE historic_student_lesson (
    student_id INT NOT NULL,
    lesson_id INT NOT NULL
);
ALTER TABLE historic_student_lesson ADD CONSTRAINT PK0_student_lesson PRIMARY KEY (student_id,lesson_id);
ALTER TABLE historic_student_lesson ADD CONSTRAINT FK_historic_student_lesson_0 FOREIGN KEY (student_id) REFERENCES historic_lesson (lesson_id);
ALTER TABLE historic_student_lesson ADD CONSTRAINT FK_historic_student_lesson_1 FOREIGN KEY (lesson_id) REFERENCES historic_student (student_id);


