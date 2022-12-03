--copying students
INSERT INTO student(student_id, person_number, name, street, zip, city)
SELECT student_id, person_number, name, street, zip, city
FROM dblink('dbname=soundgood user=postgres password=a options=-csearch_path=',
                'SELECT student_id, person_number, name, street, zip, city FROM public.student')
AS t1(student_id int, person_number varchar, name varchar, street varchar, zip varchar, city varchar);

--copying lessons
INSERT INTO lesson(lesson_id,skill_level,lesson_type,time, genre, instrument_type, min_students, max_students, instructor_id, student_amount, price)
SELECT lesson_id, skill_level, lesson_type, time, genre, instrument_type, min_students, max_students, instructor_id, student_amount, student_pay
FROM dblink('dbname=soundgood user=postgres password=a options=-csearch_path=',
                'SELECT l.lesson_id, l.skill_level, l.lesson_type, l.time, l.genre, l.instrument_type, l.min_students, l.max_students, l.instructor_id, l.student_amount, p.student_pay
FROM public.lesson AS l
LEFT JOIN public.pricing_scheme AS p ON l.pricing_scheme_id = p.pricing_scheme_id;')
AS t1(lesson_id int, skill_level valid_skill_levels, lesson_type valid_lesson_types,
time timestamp, genre varchar, instrument_type varchar, min_students int, max_students int, instructor_id int, student_amount int, student_pay int);

--copying student_lessons
INSERT INTO student_lesson
SELECT *
FROM dblink('dbname=soundgood user=postgres password=a options=-csearch_path=',
            'SELECT student_id, lesson_id FROM public.student_lesson')
AS t1(student_id int, lesson_id int);

--Example Query From historic database which finds all lesson_ids a student with id 9 has taken
SELECT lesson_id
FROM student_lesson
WHERE student_id = 9;