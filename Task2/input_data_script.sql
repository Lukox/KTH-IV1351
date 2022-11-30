-- 1. INSTRUCTOR
-- 2. STUDENT
-- 3. INSTRUMENT
-- 4. PRICING_SCHEME
-- 5. RENTAL
-- 6. CONTACT_PERSON
-- 7. LESSON
-- 8. CAN_TEACH
-- 9. EMAIL (STUDENT)
-- 10. PHONE (STUDENT)
-- 11. STUDENT_LESSON
-- 12. AVAILABLE_AT
-- 13. SIBLING_PERSONAL_NUMBER


-- INSTRUCTOR
INSERT INTO instructor (person_number,name,street,zip,city,teach_ensembles,email,phone)
VALUES
  ('751188316788','Cameran Flores','Ap #378-3023 Etiam Av.','77554','Alingsås','0','cameranflores6386@gmail.com','809339672'),
  ('510448142222','Keiko Warren','8831 Malesuada Road','44262','Linköping','1','keikowarren@gmail.com','219134661'),
  ('954341225531','Wilma Barber','P.O. Box 565, 4735 A Avenue','51954','Finspång','0','wilmabarber@gmail.com','874355012'),
  ('055913152452','Mark Gamble','309-7464 Risus Av.','39841','Hofors','0','markgamble314@gmail.com','498314572'),
  ('185234041123','Britanney Patton','Ap #191-2095 Magna Ave','87247','Skövde','1','britanneypatton@gmail.com','538164243'),
  ('527687239435','Jorden Morrison','5507 Iaculis, Avenue','62120','Nässjö','1','jordenmorrison@gmail.com','305626427'),
  ('137812337259','Adara Hamilton','Ap #216-1351 Et Av.','51405','Sandviken','0','adarahamilton8025@gmail.com','118630775'),
  ('762167322183','Timothy Whitfield','Ap #159-1052 Enim Street','95521','Hudiksvall','1','timothywhitfield9050@gmail.com','723935231'),
  ('602534297078','Evelyn Moss','P.O. Box 378, 6453 Tristique Rd.','65385','Falun','1','evelynmoss@gmail.com','006296741'),
  ('374216568585','Aquila Ayala','Ap #258-4985 Massa St.','12393','Alingsås','1','aquilaayala6363@gmail.com','952440123'),
  ('424241651014','Ursula Humphrey','189-4458 Non, St.','24656','Norrköping','1','ursulahumphrey6298@gmail.com','257563277'),
  ('134751118526','Kato Cardenas','Ap #304-8327 Est Street','98708','Vallentuna','0','katocardenas@gmail.com','389565898'),
  ('430169621258','Stacy Mathews','Ap #531-884 Lorem Ave','80924','Borås','0','stacymathews1617@gmail.com','348253554'),
  ('429729997066','Illiana Brooks','P.O. Box 704, 3664 Sed Av.','53725','Lidingo','1','illianabrooks@gmail.com','689754070'),
  ('611250404686','Ora Meyers','Ap #426-6304 Ligula. Avenue','04628','Sandviken','1','orameyers@gmail.com','511382122'); 


-- STUDENT
INSERT INTO student (person_number,name,age,street,zip,city)
VALUES
  ('668667116816','Jennifer Swanson',65,'Ap #313-4485 Tellus Rd.','74354','Hudiksvall'),
  ('021677422692','Shannon Brooks',8,'Ap #485-2109 Molestie Rd.','66734','Vetlanda'),
  ('624510902473','Jayme Haney',80,'Ap #144-2830 Aenean Rd.','67578','Skövde'),
  ('513029391267','Brody Lamb',58,'Ap #734-2725 Nunc Rd.','15217','Göteborg'),
  ('365261003864','Madaline Pope',51,'P.O. Box 608, 4413 Sit Street','13363','Motala'),
  ('346623174327','Harriet Bird',70,'Ap #724-8513 In, Road','91354','Tranås'),
  ('315954415141','Wylie Blair',49,'P.O. Box 308, 6964 Fermentum Street','86523','Lidingo'),
  ('845382774746','Linda Madden',51,'P.O. Box 801, 8448 Metus. St.','43895','Tranås'),
  ('675922068611','Timothy Burks',28,'383-2309 Lacus. Rd.','11199','Lerum'),
  ('202206400676','Illana Reeves',38,'2694 Magna. Av.','29236','Falun'),
  ('453144438598','Hamilton Bolton',17,'439-101 Maecenas Ave','37841','Ockelbo'),
  ('356318195341','Fritz Chandler',88,'540-3669 Curae St.','85382','Jönköping'),
  ('144702428304','Joseph Booth',76,'Ap #434-4664 Tortor, Avenue','50327','Mjölby'),
  ('675331602623','Fuller O''Neill',49,'Ap #899-9263 Curabitur Rd.','02352','Hudiksvall'),
  ('347741911863','Talon Mcmillan',33,'Ap #232-5636 Praesent Ave','64953','Vetlanda'),
  ('476426965306','Bert Barr',34,'7856 Pharetra. Road','17556','Mora'),
  ('284821685558','Ulric Wilkins',11,'743-8478 Penatibus Ave','74877','Lidköping'),
  ('265283470766','Teegan Levine',15,'438-3113 Pede. Avenue','62482','Avesta'),
  ('343196778763','Marcia Glenn',67,'Ap #504-4790 Odio Avenue','41528','Lidköping'),
  ('827855702374','Tyrone Fleming',38,'P.O. Box 203, 3935 Eu Road','45854','Alingsås'),
  ('140484341400','Hilel Barrera',50,'600-7281 Pede, St.','68140','Norrköping'),
  ('135797809118','Audra Merritt',17,'821-559 Venenatis Avenue','57361','Hofors'),
  ('462846256561','Alec Cole',67,'Ap #405-1742 Tortor. St.','85522','Mora'),
  ('131222827868','Evan Thornton',39,'Ap #658-1666 Urna. Road','59414','Åkersberga'),
  ('236202048621','Maggie Jackson',21,'5410 Sagittis Av.','29544','Åkersberga'),
  ('754421714443','Talon Salas',9,'P.O. Box 662, 4366 Vulputate, Rd.','55556','Finspång'),
  ('654775333067','Dara Castro',97,'P.O. Box 315, 3708 Quis, Avenue','67728','Tumba'),
  ('775538589316','Christopher Hendricks',93,'Ap #532-3601 Morbi Street','43881','Bollnäs'),
  ('361147887860','Blaze Mccarty',72,'1552 Sit Avenue','78566','Finspång'),
  ('159764190386','Rina Flores',72,'526-5565 Pellentesque Ave','56914','Söderhamn'),
  ('065165180685','Laith Rivera',16,'Ap #321-9754 Integer Ave','98884','Sandviken'),
  ('181902616553','Fay Raymond',99,'Ap #785-6709 Amet St.','78139','Vallentuna'),
  ('063842754623','Keane Marshall',47,'P.O. Box 152, 4428 Convallis Ave','73287','Avesta'),
  ('723128802062','Madeson Davidson',97,'Ap #953-2476 Tempor St.','38523','Skövde'),
  ('463785855833','Coby Miles',86,'107-4743 Velit Rd.','69734','Värnamo'),
  ('277947460563','Jermaine Weaver',77,'904-3290 Turpis Road','58362','Borlänge'),
  ('835845062216','Garth Kline',95,'6422 Mauris Av.','23674','Lidköping'),
  ('385587043572','Palmer Moreno',78,'195-1844 Nec Ave','78935','Motala'),
  ('474528745784','Kieran Todd',56,'P.O. Box 143, 1536 Odio Avenue','46303','Södertälje'),
  ('976903412654','Rogan Moreno',42,'5371 Penatibus Rd.','11935','Göteborg'),
  ('416297757673','Fulton May',95,'5830 Auctor. Street','56970','Boo'),
  ('187780574408','Amber Mccray',40,'220-9375 Molestie Av.','46121','Finspång'),
  ('348558866124','Malachi Henson',82,'640-904 Orci. Street','76163','Gävle'),
  ('518715883526','Elliott Bond',51,'5858 Ante Street','70982','Ludvika'),
  ('428574773883','Stephen Bridges',37,'337-9055 Nibh Av.','95218','Mjölby'),
  ('617147401524','Ishmael Burks',98,'P.O. Box 996, 8103 Et Av.','32276','Boo'),
  ('178612369927','Whoopi Watkins',43,'Ap #885-8271 Adipiscing Avenue','48568','Falun'),
  ('668117760386','Tashya Joyner',8,'Ap #854-2492 Vehicula. St.','26274','Jönköping'),
  ('390428335517','Gregory Reese',98,'P.O. Box 125, 4825 Pede, St.','56344','Falun'),
  ('485174313383','Chadwick Sanchez',57,'Ap #385-2769 Ut St.','24975','Linköping');


-- INSTRUMENT
insert into instrument (name, brand, type, number_in_stock) values ('Guitar', null, null, 10);
insert into instrument (name, brand, type, number_in_stock) values ('Violin', null, null, 10);
insert into instrument (name, brand, type, number_in_stock) values ('Drums', null, null, 10);
insert into instrument (name, brand, type, number_in_stock) values ('Saxophone', null, null, 10);
insert into instrument (name, brand, type, number_in_stock) values ('Flute', null, null, 10);
insert into instrument (name, brand, type, number_in_stock) values ('Ukelele', null, null, 10);
insert into instrument (name, brand, type, number_in_stock) values ('Trumpet', null, null, 10);
insert into instrument (name, brand, type, number_in_stock) values ('Lyra', null, null, 10);
insert into instrument (name, brand, type, number_in_stock) values ('Viola', null, null, 10);
insert into instrument (name, brand, type, number_in_stock) values ('Piano', null, null, 10);


-- PRICING_SCHEME
INSERT INTO pricing_scheme (skill_level,lesson_type,instructor_cut,student_pay, discount)
VALUES
  ('beginner','individual_lesson',20,30,10),
  ('beginner','group_lesson',30,10,10),
  ('intermediate', 'individual_lesson',20,30,10),
  ('intermediate', 'group_lesson',30,10,10),
  ('advanced', 'individual_lesson',25,35,10),
  ('advanced', 'group_lesson',35,15,10),
  (null, 'ensemble',40,10,10);


-- RENTAL
INSERT INTO rental (student_id,time_rented,rental_terminated,rental_fee,instrument_id)
VALUES
  (27,'2023-04-23 02:04:00','1',24,5),
  (45,'2022-03-20 02:04:00','0',23,7),
  (33,'2022-11-26 02:03:00','0',20,2),
  (28,'2023-10-01 13:52:00','0',17,6),
  (38,'2022-09-28 14:20:00','1',11,6),
  (8,'2022-05-23 15:36:00','0',24,4),
  (24,'2022-04-29 21:20:00','1',21,5),
  (36,'2023-01-05 23:27:00','1',20,2),
  (40,'2023-01-25 12:58:00','0',29,7),
  (23,'2023-10-11 00:41:00','0',23,2),
  (15,'2023-03-27 08:55:00','1',27,4),
  (41,'2022-04-25 10:41:00','0',12,3),
  (5,'2023-02-12 14:28:00','1',18,8),
  (38,'2023-09-12 15:03:00','0',25,9),
  (10,'2022-03-12 03:16:00','0',21,3),
  (18,'2022-06-19 10:20:00','0',18,4),
  (43,'2023-02-25 10:46:00','0',26,2),
  (17,'2022-01-20 04:39:00','0',26,10),
  (21,'2023-01-31 08:07:00','1',25,9),
  (43,'2023-02-28 17:27:00','0',25,6);
INSERT INTO rental (student_id,time_rented,rental_terminated,rental_fee,instrument_id)
VALUES
  (49,'2023-03-15 10:46:00','0',13,8),
  (10,'2022-04-13 12:01:00','1',23,9),
  (39,'2022-11-09 05:01:00','1',21,9),
  (39,'2022-01-29 10:09:00','0',22,4),
  (25,'2021-11-21 20:45:00','0',25,3),
  (13,'2021-11-25 06:37:00','0',29,8),
  (43,'2022-03-23 20:02:00','0',20,10),
  (46,'2022-02-11 14:11:00','1',27,4),
  (26,'2023-09-04 08:49:00','0',26,9),
  (25,'2023-01-07 23:08:00','0',23,5);


-- CONTACT_PERSON
INSERT INTO contact_person (student_id,name,phone,email)
VALUES
  (1,'Winter Murphy','03 78 12 33 22','ante.ipsum.primis@aol.org'),
  (2,'Coby Brady','06 33 31 75 44','proin.mi.aliquam@google.couk'),
  (3,'Uma Nunez','03 65 75 39 85','libero.et.tristique@outlook.com'),
  (4,'Hunter Mejia','07 08 18 28 58','nibh.vulputate.mauris@google.edu'),
  (5,'Kimberley Harris','08 52 66 74 70','in@protonmail.edu'),
  (6,'Fitzgerald Terrell','08 61 60 15 44','neque.sed.sem@aol.edu'),
  (7,'Emerson Mckee','02 67 03 27 26','lacus.aliquam@yahoo.org'),
  (8,'Barrett Ramsey','07 75 45 91 78','placerat.cras@hotmail.ca'),
  (9,'Lenore Adams','08 28 03 35 22','parturient.montes.nascetur@google.couk'),
  (10,'Chandler Cortez','02 12 88 26 84','ipsum@icloud.edu');
INSERT INTO contact_person (student_id,name,phone,email)
VALUES
  (11,'Erich Zimmerman','01 45 71 71 00','consequat@aol.com'),
  (12,'Dustin Cannon','05 93 49 69 71','justo.praesent.luctus@hotmail.com'),
  (13,'Isaiah Levine','05 48 55 80 70','ullamcorper.magna.sed@protonmail.edu'),
  (14,'Claire Moore','03 99 85 41 17','hendrerit.donec.porttitor@aol.net'),
  (15,'Richard Myers','07 12 21 46 97','pretium.et.rutrum@hotmail.net'),
  (16,'Ainsley Mathews','03 02 60 89 85','nam.tempor@protonmail.net'),
  (17,'Margaret Horne','02 28 73 83 58','ornare.lectus@hotmail.com'),
  (18,'Addison Odom','05 89 55 22 18','dolor.sit.amet@hotmail.ca'),
  (19,'Clark Fox','06 84 18 81 05','sodales.nisi@yahoo.ca'),
  (20,'Ivana Woodward','07 90 07 71 63','nam@aol.ca');
INSERT INTO contact_person (student_id,name,phone,email)
VALUES
  (21,'Medge Wheeler','04 86 96 72 44','penatibus.et.magnis@google.org'),
  (22,'Connor Patrick','04 86 22 12 09','dui.semper@outlook.net'),
  (23,'Maggy Pope','06 25 25 35 54','mauris.ut.mi@icloud.edu'),
  (24,'Merritt Cooley','07 11 25 07 11','sem@icloud.couk'),
  (25,'Maggy Fitzpatrick','01 97 41 42 03','ut.molestie.in@protonmail.couk'),
  (26,'Constance Walls','07 00 14 35 41','parturient.montes@yahoo.ca'),
  (27,'Odessa Maldonado','06 15 24 19 32','a@icloud.com'),
  (28,'Tana Lewis','07 41 48 83 27','sociis.natoque@hotmail.edu'),
  (29,'Wesley Weiss','05 28 57 80 14','ut@outlook.net'),
  (30,'Gage Duke','03 66 03 97 61','sagittis.placerat.cras@hotmail.couk');
INSERT INTO contact_person (student_id,name,phone,email)
VALUES
  (31,'Acton Jacobs','04 34 83 54 11','turpis.egestas@protonmail.couk'),
  (32,'Hayley Ortega','07 86 51 32 43','eleifend.cras.sed@yahoo.org'),
  (33,'Leigh Fleming','08 22 48 24 32','ut@aol.ca'),
  (34,'Barry Lawson','01 39 48 71 51','integer.in@icloud.couk'),
  (35,'Keegan Bush','04 61 71 24 60','urna.nunc.quis@aol.net'),
  (36,'Cassady Richards','05 80 74 64 53','non.luctus.sit@hotmail.ca'),
  (37,'Melodie Cotton','07 37 84 78 34','cras.dolor@google.com'),
  (38,'Brendan Silva','06 96 21 00 44','mauris.eu.turpis@hotmail.couk'),
  (39,'Price Mack','05 72 53 12 72','mauris.a@protonmail.edu'),
  (40,'Courtney Pena','03 08 77 16 64','tincidunt.donec.vitae@yahoo.edu');
INSERT INTO contact_person (student_id,name,phone,email)
VALUES
  (41,'Ray Gould','09 62 40 18 46','donec.tempor@google.edu'),
  (42,'Maris Silva','03 36 53 22 24','bibendum.ullamcorper@hotmail.com'),
  (43,'Lunea Anthony','05 68 85 94 37','auctor@google.ca'),
  (44,'Veronica Bruce','04 22 30 21 82','mauris@aol.edu'),
  (45,'Stephanie Wise','06 45 85 42 50','et.ultrices@hotmail.ca'),
  (46,'Samantha Brewer','05 38 16 40 59','semper.tellus@yahoo.net'),
  (47,'Audrey Vinson','08 35 80 45 68','vel.nisl.quisque@icloud.couk'),
  (48,'Tashya Mcfadden','01 72 25 83 67','tristique.pharetra@hotmail.com'),
  (49,'Kylan Whitaker','05 57 02 84 27','ante@hotmail.couk'),
  (50,'Blake Owens','03 85 42 97 25','sagittis.duis.gravida@protonmail.net');


-- LESSON
INSERT INTO lesson (skill_level,lesson_type,time,instrument_type,min_students,max_students,genre,instructor_id,pricing_scheme_id, student_amount)
VALUES
  ('intermediate','group_lesson','2022-08-26 23:50:13','Viola',5,20,NULL,3,4, NULL),
  ('beginner','group_lesson','2022-02-09 20:29:34','Drums',4,17,NULL,13,2, NULL),
  ('advanced','group_lesson','2023-03-09 20:43:30','Flute',3,14,NULL,11,6, NULL),
  ('intermediate','ensemble','2023-02-23 15:59:30',NULL,4,17,'Metal',7,7, 6),
  ('advanced','ensemble','2022-01-13 11:34:52',NULL,5,9,'Rock',5,7, 7),
  ('intermediate','group_lesson','2021-11-27 13:15:28','Saxophone',4,17,NULL,6,4, NULL),
  ('advanced','group_lesson','2022-02-21 09:32:39','Viola',3,10,NULL,7,6, NULL),
  ('beginner','ensemble','2023-06-30 22:26:54',NULL,3,13,'K-Pop',2,7,12),
  ('intermediate','individual_lesson','2023-06-15 09:23:56','Ukulele',1,NULL,NULL,15,3, NULL),
  ('advanced','group_lesson','2022-09-02 17:03:56','Piano',4,13,NULL,3,6, NULL),
  ('intermediate','group_lesson','2022-02-02 01:36:23','Drums',5,13,NULL,13,4, NULL),
  ('advanced','ensemble','2022-07-16 15:31:41',NULL,3,15,'Pop',8,7,15),
  ('advanced','individual_lesson','2022-03-09 17:27:59','Ukulele',1,NULL,NULL,15,5, NULL),
  ('beginner','individual_lesson','2022-09-23 07:40:17','Guitar',1,NULL,NULL,9,1, NULL),
  ('intermediate','group_lesson','2022-04-28 12:14:06','Drums',3,14,NULL,13,4, NULL),
  ('intermediate','ensemble','2022-10-12 02:31:19',NULL,5,18,'Country',5,7,18),
  ('intermediate','ensemble','2023-07-30 10:33:39',NULL,2,12,'Hip-Hop',9,7,4),
  ('advanced','group_lesson','2021-12-09 20:19:39','Violin',2,10,NULL,8,6, NULL),
  ('advanced','ensemble','2023-08-05 00:40:11',NULL,3,19,'Pop',15,7,18),
  ('beginner','group_lesson','2023-07-19 01:06:04','Piano',3,11,NULL,5,2, NULL),
  ('intermediate','ensemble','2022-04-10 00:42:06',NULL,2,15,'Pop',11,7, 15),
  ('beginner','group_lesson','2023-09-24 14:41:14','Viola',4,20,NULL,7,2, NULL),
  ('intermediate','ensemble','2023-03-18 22:02:02',NULL,4,14,'Country',3,7,13),
  ('advanced','ensemble','2023-05-05 04:15:21',NULL,2,15,'Hip-Hop',4,7,5),
  ('beginner','individual_lesson','2021-12-19 19:01:05','Flute',1,NULL,NULL,6,1, NULL),
  ('beginner','individual_lesson','2023-01-22 04:16:01','Trumpet',1,NULL,NULL,8,1, NULL),
  ('beginner','ensemble','2022-10-09 21:35:52',NULL,2,12,'Pop',12,7,9),
  ('intermediate','individual_lesson','2023-03-16 21:07:03','Piano',1,NULL,NULL,8,3, NULL),
  ('beginner','group_lesson','2023-06-16 16:42:32','Trumpet',4,12,NULL,8,2, NULL),
  ('intermediate','ensemble','2022-06-16 12:09:53',NULL,2,20,'Country',11,7,19),
  ('advanced','ensemble','2023-11-05 23:10:22',NULL,5,13,'Hip-Hop',14,7, 11),
  ('intermediate','group_lesson','2023-08-24 17:07:24','Trumpet',2,10,NULL,8,4, NULL),
  ('advanced','group_lesson','2023-08-15 23:29:42','Viola',2,19,NULL,3,6, NULL),
  ('beginner','group_lesson','2023-08-03 20:31:00','Saxophone',3,12,NULL,10,2, NULL),
  ('intermediate','group_lesson','2022-08-29 03:18:41','Trumpet',3,17,NULL,4,4, NULL),
  ('intermediate','ensemble','2023-10-20 14:49:34',NULL,4,14,'Polish',11,7,12),
  ('advanced','individual_lesson','2023-01-13 11:31:43','Viola',1,NULL,NULL,7,5, NULL),
  ('advanced','group_lesson','2022-11-24 11:44:14','Ukulele',2,12,NULL,15,6, NULL),
  ('beginner','ensemble','2022-09-23 02:28:24',NULL,3,19,'Metal',14,7,19),
  ('advanced','individual_lesson','2023-07-04 01:14:45','Guitar',1,NULL,NULL,1,5, NULL),
  ('intermediate','group_lesson','2022-01-05 12:33:36','Violin',5,15,NULL,2,4, NULL),
  ('intermediate','group_lesson','2023-11-18 11:01:54','Ukulele',5,16,NULL,8,4, NULL),
  ('beginner','group_lesson','2022-12-07 17:34:59','Violin',3,16,NULL,2,2, NULL),
  ('intermediate','individual_lesson','2022-12-19 17:18:13','Trumpet',1,NULL,NULL,4,3, NULL),
  ('intermediate','group_lesson','2022-10-09 16:32:42','Trumpet',3,17,NULL,8,4, NULL),
  ('beginner','individual_lesson','2022-08-16 04:12:41','Ukulele',1,NULL,NULL,15,1, NULL),
  ('advanced','individual_lesson','2021-12-27 02:56:13','Saxophone',1,NULL,NULL,6,5, NULL),
  ('intermediate','group_lesson','2023-08-09 11:51:37','Drums',4,15,NULL,13,4, NULL),
  ('intermediate','ensemble','2022-09-08 22:47:49',NULL,3,18,'Metal',14,7,14),
  ('beginner','group_lesson','2022-07-20 15:32:53','Saxophone',3,19,NULL,8,2, NULL),
  ('beginner', 'ensemble', '2022-12-09 15:32:53', NULL,3,18,'Metal',14,7,14);
INSERT INTO lesson (skill_level,lesson_type,time,instrument_type,min_students,max_students,genre,instructor_id,pricing_scheme_id, student_amount)
VALUES
('beginner', 'ensemble', '2022-14-09 15:00:00', NULL,3,18,'Metal',14,7,14),
('beginner', 'ensemble', '2022-15-10 12:00:00', NULL,3,18,'Pop',14,7,18),
('beginner', 'ensemble', '2022-16-11 10:00:00', NULL,3,18,'Hip-Hop',14,7,17),
('beginner', 'ensemble', '2022-15-12 11:00:00', NULL,3,18,'Metal',14,7,16),
('beginner', 'ensemble', '2022-18-11 14:00:00', NULL,3,18,'Metal',14,7,18),
('beginner', 'ensemble', '2022-17-13 18:00:00', NULL,3,18,'Country',14,7,14),
('beginner', 'ensemble', '2022-14-09 19:00:00', NULL,3,18,'Metal',14,7,16),
('beginner', 'ensemble', '2022-19-09 21:00:00', NULL,3,18,'Country',14,7,14),



-- CAN_TEACH
INSERT INTO can_teach(instructor_id, instrument_id)
  VALUES
    (1,1),
    (1,4),
    (1,8),
    (2,2),
    (3,1),
    (3,2),
    (3,10),
    (3,9),
    (4,6),
    (4,7),
    (4,8),
    (5,10),
    (6,4),
    (6,5),
    (6,8),
    (7,9),
    (8,2),
    (8,10),
    (8,4),
    (8,7),
    (9,1),
    (10,4),
    (11,8),
    (11,5),
    (12,2),
    (13,3),
    (14,4),
    (15,6);
 
 
-- EMAIL
INSERT INTO email (student_id,email)
VALUES
  (1,'metus.eu@hotmail.couk'),
  (2,'pretium.aliquet@icloud.net'),
  (3,'eget.venenatis@hotmail.com'),
  (4,'nunc@google.edu'),
  (5,'malesuada.vel@aol.ca'),
  (6,'semper.pretium@yahoo.edu'),
  (7,'mi.duis@protonmail.ca'),
  (8,'et@aol.couk'),
  (9,'mi.ac@yahoo.ca'),
  (10,'semper.dui@google.edu');
INSERT INTO email (student_id,email)
VALUES
  (11,'mauris.molestie@aol.ca'),
  (12,'mi.pede@yahoo.edu'),
  (13,'augue.ac@aol.com'),
  (14,'suspendisse.aliquet.sem@aol.couk'),
  (15,'rutrum.fusce.dolor@protonmail.ca'),
  (16,'ac.feugiat@aol.ca'),
  (17,'aliquet.phasellus.fermentum@icloud.com'),
  (18,'neque.pellentesque@protonmail.com'),
  (19,'fusce.diam@aol.edu'),
  (20,'et.nunc@yahoo.couk');
INSERT INTO email (student_id,email)
VALUES
  (21,'enim.etiam.imperdiet@outlook.couk'),
  (22,'dictum.eleifend.nunc@icloud.ca'),
  (23,'ullamcorper.duis.at@yahoo.ca'),
  (24,'id.enim@google.org'),
  (25,'fames.ac.turpis@yahoo.org'),
  (26,'ligula.donec@outlook.couk'),
  (27,'justo.eu.arcu@protonmail.com'),
  (28,'interdum@google.org'),
  (29,'hendrerit.a.arcu@icloud.ca'),
  (30,'lacus.cras.interdum@protonmail.org');
INSERT INTO email (student_id,email)
VALUES
  (31,'morbi.metus@outlook.couk'),
  (32,'blandit.at@google.com'),
  (33,'aliquam.erat@aol.com'),
  (34,'at@google.com'),
  (35,'odio.aliquam.vulputate@protonmail.org'),
  (36,'sit.amet@aol.edu'),
  (37,'lorem.vitae@google.edu'),
  (38,'lectus@hotmail.ca'),
  (39,'duis.ac@google.org'),
  (40,'proin.eget@aol.com');
INSERT INTO email (student_id,email)
VALUES
  (41,'ultricies.adipiscing@outlook.net'),
  (42,'turpis.nec@hotmail.net'),
  (43,'aliquam.nec@aol.edu'),
  (44,'vehicula.risus@aol.net'),
  (45,'congue@google.couk'),
  (46,'praesent@hotmail.ca'),
  (47,'at.nisi@icloud.ca'),
  (48,'sit.amet.lorem@protonmail.ca'),
  (49,'eget@google.couk'),
  (50,'lectus.cum@aol.ca');


-- PHONE
INSERT INTO phone (student_id,phone)
VALUES
  (1,'02 71 77 40 46'),
  (2,'05 24 37 80 66'),
  (3,'02 22 31 96 28'),
  (4,'08 51 12 73 79'),
  (5,'08 22 80 93 82'),
  (6,'06 23 46 81 36'),
  (7,'08 41 25 32 33'),
  (8,'03 54 37 23 63'),
  (9,'06 34 71 61 13'),
  (10,'07 36 73 01 57'),
  (11,'06 64 78 56 88'),
  (12,'01 52 25 96 07'),
  (13,'03 20 73 41 92'),
  (14,'09 77 28 67 64'),
  (15,'08 13 18 56 71'),
  (16,'07 53 28 35 14'),
  (17,'07 55 23 66 39'),
  (18,'06 91 48 26 51'),
  (19,'04 22 74 59 80'),
  (20,'04 27 06 80 15'),
  (21,'04 98 03 54 58'),
  (22,'07 13 26 44 46'),
  (23,'08 25 19 44 33'),
  (24,'06 40 25 71 52'),
  (25,'02 54 73 73 05'),
  (26,'06 87 66 30 26'),
  (27,'06 84 00 27 24'),
  (28,'02 80 87 13 24'),
  (29,'02 35 52 89 74'),
  (30,'05 24 86 79 73'),
  (31,'01 73 51 55 51'),
  (32,'06 26 51 36 31'),
  (33,'09 56 53 24 83'),
  (34,'06 75 88 82 62'),
  (35,'05 11 86 14 42'),
  (36,'01 01 13 53 54'),
  (37,'03 47 45 41 14'),
  (38,'05 30 36 34 77'),
  (39,'07 40 17 84 67'),
  (40,'08 85 75 51 02'),
  (41,'08 85 23 15 87'),
  (42,'04 36 68 30 44'),
  (43,'01 16 11 56 91'),
  (44,'03 18 02 39 45'),
  (45,'07 46 36 05 72'),
  (46,'02 62 50 51 60'),
  (47,'08 44 49 16 84'),
  (48,'01 22 87 73 27'),
  (49,'08 53 76 32 99'),
  (50,'03 66 17 42 72');
 
 
-- STUDENT_LESSON
INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  (42,1),
  (34,1),
  (46,1),
  (37,1),
  (3,1),
  (48,1),
  (15,1),
  (42,2),
  (34,2),
  (46,2),
  (37,2),
  (3,2),
  (48,2),
  (15,2),
  (1,3),
  (2,3),
  (3,3),
  (4,3),
  (5,4),
  (6,4),
  (7,4),
  (8,4),
  (9,4),
  (10,5),
  (11,5),
  (12,5),
  (18,5),
  (29,5),
  (30,5),
  (44,5),
  (11,6),
  (12,6),
  (18,6),
  (29,6),
  (30,6),
  (44,6),
  (19,7),
  (21,7),
  (34,7),
  (49,7),
  (21,8),
  (34,8),
  (49,8);
INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  (9,9),
  (10,10),
  (11,11),
  (12,12),
  (13,13),
  (14,14),
  (15,15);
INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  (16,16),
  (17,17),
  (18,18),
  (19,19),
  (20,20),
  (21,21),
  (22,22);
INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  (23,23),
  (24,24),
  (25,25),
  (26,26),
  (27,27),
  (28,28),
  (29,29);
INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  (30,30),
  (31,31),
  (32,32),
  (33,33),
  (34,34),
  (35,35),
  (36,36);
INSERT INTO student_lesson (student_id,lesson_id)
VALUES
  (37,37),
  (38,38),
  (39,39),
  (40,40),
  (41,41),
  (42,42),
  (43,43),
  (44,44),
  (45,45),
  (46,46),
  (47,47),
  (48,48),
  (49,49),
  (50,50);

-- AVAILABLE AT


INSERT INTO available_at (instructor_id,time)
VALUES
  (7,'2022-11-24 03:00:00'),
  (14,'2022-11-07 01:00:00'),
  (7,'2022-11-06 11:00:00'),
  (4,'2022-11-18 15:00:00'),
  (6,'2022-11-28 07:00:00'),
  (6,'2022-11-06 08:00:00'),
  (11,'2022-11-20 03:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (5,'2022-11-16 04:00:00'),
  (3,'2022-11-23 09:00:00'),
  (6,'2022-11-02 05:00:00'),
  (11,'2022-11-06 03:00:00'),
  (4,'2022-11-05 17:00:00'),
  (3,'2022-11-27 23:00:00'),
  (11,'2022-11-14 23:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (10,'2022-11-25 06:00:00'),
  (7,'2022-11-07 12:00:00'),
  (11,'2022-11-23 05:00:00'),
  (14,'2022-11-13 19:00:00'),
  (14,'2022-11-10 18:00:00'),
  (10,'2022-11-19 21:00:00'),
  (10,'2022-11-11 22:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (2,'2022-11-21 22:00:00'),
  (2,'2022-11-20 12:00:00'),
  (7,'2022-11-03 01:00:00'),
  (8,'2022-11-10 19:00:00'),
  (6,'2022-11-21 09:00:00'),
  (15,'2022-11-04 17:00:00'),
  (6,'2022-11-15 20:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (14,'2022-11-15 18:00:00'),
  (12,'2022-11-22 11:00:00'),
  (5,'2022-11-18 04:00:00'),
  (9,'2022-11-19 08:00:00'),
  (5,'2022-11-15 21:00:00'),
  (8,'2022-11-18 12:00:00'),
  (2,'2022-11-20 16:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (7,'2022-11-29 06:00:00'),
  (13,'2022-11-12 15:00:00'),
  (11,'2022-11-25 14:00:00'),
  (9,'2022-11-14 14:00:00'),
  (2,'2022-11-09 12:00:00'),
  (12,'2022-11-02 22:00:00'),
  (7,'2022-11-06 06:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (14,'2022-11-17 00:00:00'),
  (7,'2022-11-19 22:00:00'),
  (10,'2022-11-21 21:00:00'),
  (4,'2022-11-05 01:00:00'),
  (11,'2022-11-07 15:00:00'),
  (2,'2022-11-07 14:00:00'),
  (14,'2022-11-19 12:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (5,'2022-11-27 12:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (11,'2022-11-10 16:00:00'),
  (13,'2022-11-02 12:00:00'),
  (11,'2022-11-26 22:00:00'),
  (1,'2022-11-05 06:00:00'),
  (9,'2022-11-20 02:00:00'),
  (5,'2022-11-12 09:00:00'),
  (7,'2022-11-25 10:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (3,'2022-11-24 01:00:00'),
  (13,'2022-11-19 18:00:00'),
  (6,'2022-11-09 06:00:00'),
  (15,'2022-11-06 03:00:00'),
  (8,'2022-11-27 12:00:00'),
  (6,'2022-11-14 21:00:00'),
  (13,'2022-11-07 05:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (2,'2022-11-25 04:00:00'),
  (13,'2022-11-20 08:00:00'),
  (7,'2022-11-26 11:00:00'),
  (6,'2022-11-05 18:00:00'),
  (6,'2022-11-08 12:00:00'),
  (9,'2022-11-16 10:00:00'),
  (12,'2022-11-02 23:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (5,'2022-11-04 10:00:00'),
  (15,'2022-11-04 05:00:00'),
  (3,'2022-11-18 05:00:00'),
  (7,'2022-11-26 02:00:00'),
  (9,'2022-11-20 16:00:00'),
  (10,'2022-11-03 14:00:00'),
  (4,'2022-11-17 12:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (13,'2022-11-26 19:00:00'),
  (1,'2022-11-09 23:00:00'),
  (13,'2022-11-13 13:00:00'),
  (13,'2022-11-22 08:00:00'),
  (9,'2022-11-12 07:00:00'),
  (8,'2022-11-23 07:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (3,'2022-11-21 00:00:00'),
  (15,'2022-11-19 06:00:00'),
  (9,'2022-11-14 21:00:00'),
  (14,'2022-11-28 17:00:00'),
  (12,'2022-11-21 18:00:00'),
  (9,'2022-11-14 06:00:00'),
  (13,'2022-11-10 20:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (9,'2022-11-28 23:00:00'),
  (15,'2022-11-19 15:00:00'),
  (9,'2022-11-12 01:00:00'),
  (10,'2022-11-12 20:00:00'),
  (7,'2022-11-19 00:00:00'),
  (9,'2022-11-12 09:00:00'),
  (1,'2022-11-02 18:00:00');
INSERT INTO available_at (instructor_id,time)
VALUES
  (7,'2022-11-28 17:00:00');


--SIBLING_STUDENT_ID

INSERT INTO sibling (student_id,sibling_student_id)
VALUES
  (16,1),
  (47,1),
  (47,45),
  (39,11),
  (34,27),
  (29,42),
  (49,19);
INSERT INTO sibling (student_id,sibling_student_id)
VALUES
  (33,39),
  (9,14),
  (25,22),
  (10,34),
  (12,8),
  (18,36),
  (24,38);
INSERT INTO sibling (student_id,sibling_student_id)
VALUES
  (14,30),
  (31,24),
  (4,12),
  (17,11),
  (47,30),
  (45,38);


