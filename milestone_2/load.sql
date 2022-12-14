/*
Hier werden exepmplarisch Daten in die Datenbank geladen.
*/
-- Einfügen der Daten in die Tabelle schule

insert into schule values 
(1, 'Kantonsschule Aarau', 'AR'),
(2,'Gymnasium Burgdorf', 'BE'),
(3,'Kantonsschule Baden', 'AG'),
(4,'Kantonsschule Luzern', 'LU');

-- Einfügen der Daten in die Tabelle schueler
insert into schueler values 
(1, 'Muster', 'Max', 2001, 'm', '26a'),
(2, 'Hofer', 'Erika', 2002, 'w', '26a'),
(3, 'Bieler', 'Hans', 2003, 'm', '27a'),
(4, 'Lustiger', 'Peter', 2004, 'm', '24a'),
(5, 'Höfer', 'Anna', 2005, 'w', '25a'),
(6, 'Walther', 'Fritz', 2006, 'm', '23a'),
(7, 'Gruber', 'Matthias', 2007, 'm', '25a'),
(8, 'Berger', 'Wilma', 2008, 'w', '26a'),
(9, 'Streit', 'Hans', 2009, 'm', '24a'),
(10, 'Bockig', 'Peter', 2010, 'm', '27a');

-- Einfügen der Daten in die Tabelle sportliche_leistung
insert into sportliche_leistung values 
(1, 10,'laufen',30,1),
(2,2,'schwimmen',10,2),
(3,15,'walking',20,3),
(4,20,'radfahren',11,4),
(5,5,'laufen',30,5),

(7,7,'walking',20,7),
(8,8,'radfahren',11,8);

-- Einfügen der Daten in der Tabelle sporlehrperson
insert into sportlehrperson values 
(1, 'Walther', 'Matthias',2),
(2, 'Ineichen','Calissa',3),
(3, 'Brunner','Peter',4),
(4, 'Holzer', 'Hans',1);

-- Einfügen der Daten in der Tabelle erfolgt_um
insert into erfolgt_um values 
(1,'2023-01-10','13:30:00'),
(2, '2023-01-11','14:15:00'),
(3, '2023-01-12','15:00:00'),
(4, '2023-01-13','15:45:00'),
(5, '2023-01-14','16:30:00'),
(6, '2023-01-15','17:15:00'),
(7, '2023-01-16','18:00:00'),
(8, '2023-01-17','18:45:00');

-- Einfügen der Daten in der Tabelle sportklasse 
insert into sportklasse values 
('26a',1,(2,1)),
