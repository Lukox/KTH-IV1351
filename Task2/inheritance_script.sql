CREATE TABLE lesson (
 lesson_id SERIAL NOT NULL,
 skill_level valid_skill_levels,
 lesson_type valid_lesson_types NOT NULL,
 time TIMESTAMP(6) NOT NULL,
 pricing_scheme_id SERIAL,
 instructor_id SERIAL,
);

ALTER TABLE lesson ADD CONSTRAINT PK_lesson PRIMARY KEY (lesson_id);

CREATE TABLE individual_lesson (
 instrument_type VARCHAR(200) NOT NULL
) INHERITS (lesson);

CREATE TABLE group_lesson (
 instrument_type VARCHAR(200) NOT NULL,
 min_students INT NOT NULL,
 max_students INT NOT NULL
) INHERITS (lesson);

CREATE TABLE ensemble_lesson (
 gnre VARCHAR(200) NOT NULL,
 min_students INT NOT NULL,
 max_students INT NOT NULL
) INHERITS (lesson);

INSERT INTO individual(time,instrument_type)
VALUES
  ('2022-08-26 23:50:13','Viola');
  ('beginner','group_lesson','2022-02-09 20:29:34','Drums',4,17,NULL,13,2),
  ('advanced','group_lesson','2023-03-09 20:43:30','Flute',3,14,NULL,11,6);