
--copying lessons
INSERT INTO historic_lesson(lesson_id,skill_level,lesson_type,time, genre, instrument_type, min_students, max_students, student_amount, price)
SELECT l.lesson_id, l.skill_level, l.lesson_type, l.time,l.genre, l.instrument_type, l.min_students, l.max_students, l.student_amount, p.student_pay
FROM lesson AS l
LEFT JOIN pricing_scheme p ON l.pricing_scheme_id = p.pricing_scheme_id;

--copying students
INSERT INTO historic_student(student_id, person_number, name, street, zip, city)
SELECT student_id, person_number, name, street, zip, city
FROM student;

--copying student lesson
INSERT INTO historic_student_lesson
SELECT *
FROM student_lesson;

--Example Query From historic database which finds all lesson_ids a student with id 9 has taken
SELECT lesson_id
FROM historic_student_lesson
WHERE student_id = 9;