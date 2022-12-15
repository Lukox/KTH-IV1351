-- VIEW 1: NUMBER OF LESSONS PER MONTH DURING SPECIFIED YEAR
CREATE VIEW year_lessons AS
    SELECT EXTRACT(YEAR FROM time) AS year, EXTRACT(MONTH FROM time) AS month,
        SUM(CASE WHEN lesson_type = 'individual_lesson' THEN 1 ELSE 0 END) AS individual_lesson, 
        SUM(CASE WHEN lesson_type = 'group_lesson' THEN 1 ELSE 0 END) AS group_lesson,
        SUM(CASE WHEN lesson_type = 'ensemble' THEN 1 ELSE 0 END) AS ensemble,
        COUNT(*) as number_of_lessons
    FROM lesson
    GROUP BY EXTRACT(YEAR FROM time), EXTRACT(MONTH FROM time)
    ORDER BY EXTRACT(MONTH FROM lesson.time);
-- EXAMPLE QUERY
SELECT *
FROM year_lessons
WHERE year = 2022;



-- VIEW 2: NUMBER OF STUDENTS WITH A GIVEN NUMBER OF SIBLINGS
CREATE OR REPLACE VIEW sibling_number AS
    SELECT number_of_siblings, COUNT(*) AS student_count
    FROM (
        SELECT student.student_id, COUNT(sibling.student_id) AS number_of_siblings
        FROM student LEFT JOIN sibling ON student.student_id = sibling.student_id
        GROUP BY student.student_id
    ) sibling_count
    GROUP BY number_of_siblings
    ORDER BY number_of_siblings ASC;
-- EXAMPLE QUERY
SELECT *
FROM sibling_number;



-- VIEW 3: INSTRUCTORS HAVING MORE THAN N LESSONS THIS MONTH
CREATE VIEW instructor_lesson_month AS
    SELECT instructor_id, COUNT(instructor_id)
    FROM lesson 
    WHERE EXTRACT(YEAR FROM time) = EXTRACT(YEAR FROM now()) 
        AND EXTRACT(MONTH FROM time) = EXTRACT(MONTH FROM now())
    GROUP BY instructor_id
    ORDER BY COUNT(instructor_id) DESC;
-- EXAMPLE QUERY
SELECT instructor_id, COUNT
FROM instructor_lesson_month
WHERE COUNT >1;



-- VIEW 4: ENSEMBLES HELD NEXT WEEK
CREATE MATERIALIZED VIEW ensembles_next_week AS
    SELECT to_char(time, 'Day') AS weekday, genre, time,
        CASE
            WHEN student_amount = max_students THEN 'full'
            WHEN student_amount = max_students - 1 THEN '1 seat left'
            WHEN student_amount = max_students - 2 THEN '2 seats left'
            ELSE 'More than 2 seats left'
        END AS seats_left
    FROM lesson 
    WHERE date_trunc('week', time) = date_trunc('week', now()) + interval '1 week' 
        AND lesson_type = 'ensemble' 
    ORDER BY weekday, genre;
-- EXAMPLE QUERY
SELECT *
FROM ensembles_next_week;



    