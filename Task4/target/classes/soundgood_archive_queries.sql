-- QUERY 1: COPY STUDENT DATA
INSERT INTO student(student_id, person_number, name, street, zip, city)
SELECT student_id, person_number, name, street, zip, city
FROM dblink('dbname=soundgood user=postgres password= options=-csearch_path=',
                'SELECT student_id, person_number, name, street, zip, city FROM public.student')
AS t1(student_id int, person_number varchar, name varchar, street varchar, zip varchar, city varchar)
ON CONFLICT (student_id) DO NOTHING;

-- QUERY 2: COPY LESSON DATA
INSERT INTO lesson(lesson_id,skill_level,lesson_type,time, genre, instrument_type, min_students, max_students, student_amount, price)
SELECT lesson_id, skill_level, lesson_type, time, genre, instrument_type, min_students, max_students, student_amount, student_pay
FROM dblink('dbname=soundgood user=postgres password= options=-csearch_path=',
                'SELECT l.lesson_id, l.skill_level, l.lesson_type, l.time, l.genre, l.instrument_type, 
                    l.min_students, l.max_students, l.student_amount, p.student_pay
                FROM public.lesson AS l LEFT JOIN public.pricing_scheme AS p ON l.pricing_scheme_id = p.pricing_scheme_id;')
AS t1(lesson_id int, skill_level valid_skill_levels, lesson_type valid_lesson_types,
time timestamp, genre varchar, instrument_type varchar, min_students int, max_students int, student_amount int, student_pay int)
ON CONFLICT (lesson_id) DO NOTHING; 

-- QUERY 3: COPY STUDENT-LESSON RELATION
INSERT INTO student_lesson
SELECT *
FROM dblink('dbname=soundgood user=postgres password= options=-csearch_path=', 'SELECT student_id, lesson_id FROM public.student_lesson')
AS t1(student_id int, lesson_id int) ON CONFLICT (student_id, lesson_id) DO NOTHING;



