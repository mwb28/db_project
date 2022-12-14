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
()