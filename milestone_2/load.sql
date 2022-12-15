/*
Hier werden exemplarisch Daten in die Datenbank geladen.
*/
-- Einfügen der Daten in die Tabelle schule

insert into schule values 
(101, 'Kantonsschule Aarau', 'AR'),
(102,'Gymnasium Burgdorf', 'BE'),
(103,'Kantonsschule Baden', 'AG'),
(104,'Kantonsschule Luzern', 'LU');

-- Einfügen der Daten in der Tabelle sporlehrperson
insert into sportlehrperson values 
(201, 'Walther', 'Matthias',102),
(202, 'Ineichen','Calissa',103),
(203, 'Brunner','Peter',104),
(204, 'Holzer', 'Hans',101);

-- Einfügen der Daten in der Tabelle sportklasse 
insert into sportklasse values 
('26a',201,102),
('27a',202,103),
('24a',203,104),
('25a',204,101),
('23a',201,102);

-- Einfügen der Daten in die Tabelle schueler
insert into schueler values 
(301, 'Muster', 'Max', 2001, 'm', '26a',102),
(302, 'Hofer', 'Erika', 2002, 'w', '26a',102),
(303, 'Bieler', 'Hans', 2003, 'm', '27a',103),
(304, 'Lustiger', 'Peter', 2004, 'm', '24a',104),
(305, 'Höfer', 'Anna', 2005, 'w', '25a',101),
(306, 'Walther', 'Fritz', 2006, 'm', '23a',102),
(307, 'Gruber', 'Matthias', 2007, 'm', '25a',101),
(308, 'Berger', 'Wilma', 2008, 'w', '26a',102),
(309, 'Streit', 'Hans', 2009, 'm', '24a',104),
(310, 'Bockig', 'Peter', 2009, 'm', '27a',103);

-- Einfügen der Daten in der Tabelle erfolgt_um
insert into erfolgt_um values 
(401,'2023-01-10','13:30:00'),
(402, '2023-01-11','14:15:00'),
(403, '2023-01-12','15:00:00'),
(404, '2023-01-13','15:45:00'),
(405, '2023-01-14','16:30:00'),
(406, '2023-01-15','13:15:00'),
(407, '2023-01-16','16:00:00'),
(408, '2023-01-17','14:45:00'),
(409, '2023-01-18','11:30:00'),
(410, '2023-01-19','10:15:00');

-- Einfügen der Daten in die Tabelle sportliche_leistung
insert into sportliche_leistung values 
(1001, 10,'laufen',30,401),
(1002,2,'schwimmen',10,402),
(1003,15,'walking',20,403),
(1004,20,'radfahren',11,404),
(1005,5,'laufen',30,405),
(1006,2,'schwimmen',10,406),
(1007,7,'walking',20,407),
(1008,8,'radfahren',11,408),
(1009,9,'laufen',30,409),
(1010,1,'schwimmen',5,410);



-- Einfügen der Daten in der Tabelle erbringt
insert into erbringt values 
(301,1001),
(302,1002),
(303,1003),
(304,1004),
(305,1005),
(306,1006),
(307,1007),
(308,1008),
(309,1009),
(310,1010);