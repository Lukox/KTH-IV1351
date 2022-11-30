
--1.1 lesson count per month given year
CREATE or REPLACE VIEW lesson_count_month AS
    SELECT EXTRACT(year FROM time) AS year, EXTRACT(month FROM time) AS month, count(*)
    FROM lesson 
    GROUP BY year, month
    ORDER BY year ASC;

--example query
SELECT *
FROM lesson_count_month
WHERE year = 2022;

--1.2 each lesson type count per month given year
CREATE or REPLACE VIEW lesson_type_count_month AS
    SELECT EXTRACT(year FROM time) AS year, EXTRACT(month FROM time) AS month,lesson_type, count(*)
    FROM lesson 
    GROUP BY year, month, lesson_type
    ORDER BY year ASC;

--example query
SELECT month, lesson_type, count
FROM all_lesson_count_month
WHERE year = 2022;


--instructors sorted per lessons given in current month
CREATE VIEW instructor_lesson_month AS
    SELECT instructor_id, count(*)
    FROM lesson 
    WHERE EXTRACT(YEAR FROM time) = EXTRACT(YEAR FROM now()) AND EXTRACT(MONTH FROM time) = EXTRACT(MONTH FROM now())
    GROUP BY instructor_id
    ORDER BY count(*) DESC;

--example query
SELECT instructor_id, count
FROM instructor_lesson_month
WHERE count >1;


--How many students with how many siblings
CREATE or REPLACE VIEW sibling_amount AS
    SELECT no_of_siblings, COUNT(*) frequency
    FROM(
       SELECT student.student_id, count(sibling.student_id) as no_of_siblings
        FROM student
        LEFT JOIN sibling ON student.student_id = sibling.student_id
        GROUP BY student.student_id
    ) MyTable
    GROUP BY no_of_siblings
    ORDER BY no_of_siblings ASC;

--example query
SELECT *
FROM sibling_amount;

--Ensembles Next week
CREATE MATERIALIZED VIEW ensembles_next_week AS
    SELECT to_char(time, 'Day') as weekday, genre, time,
    CASE
        WHEN student_amount = max_students THEN 'full'
        WHEN student_amount = max_students - 1 THEN '1 seat left'
        WHEN student_amount = max_students - 2 THEN '2 seats left'
        ELSE 'More than 2 seats left'
    END as seats_left
    FROM lesson 
   WHERE date_trunc('week', time) = date_trunc('week', now()) + interval '1 week' AND lesson.lesson_type = 'ensemble' 
    ORDER BY weekday, genre;

--query
SELECT *
FROM ensembles_next_week;