/*
Zur Erstellung der Datenbank:
Wir haben uns entschieden, dass wir die Datenbank in 7 Tabellen aufteilen.
Die Tabellen sind:

1. schule
2. schueler
3. sportliche_leistung
4. sportlehrperson
5. erfolgt (hier werden die Zeiten gespeichert, wann die Sportliche Leistung stattgefunden haben)
6. klasse
7. erbringt (hier werden die Beziehungen zwischen den Tabellen schueler und sportliche_leistung gespeichert)

Die Rückmeldungen des ersten Milestones haben wir berücksichtigt und die Entitäten bzw. Attribute foglendermassen angepasst:
Damit zwischen Schule, Sportlehrperson und Klasse keine Connection Trap ensteht, haben wir der Klasse ein zusätzliches Attribut "sport_gehalten_von" hinzugefügt,
welches auf die Tabelle sportlehrperson verweist. Hier könnte man natürlich auch eine zusätzlich Tabelle erstellen, welche alle 
Fächer der Klasse aufliestet, da wir aber nur am Fach Sport interessiert sind, haben wir uns für diese Lösung entschieden.
Weiter haben wir die Beziehung zwischen Klasse und Sportliche Leistung entfernt, da diese nicht notwendig ist.
Zudem haben wir die Beziehung erfolgt mit einer N:1 Beziehung ersetzt, damit nicht mehrere Zeiten für eine Sportliche Leistung angegeben werden können.

Zu jeder Tabelle wird unterhalb der sql Anweisung ein kurzer Kommentar gegeben. 
*/

create table schule(
  schul_nr integer not null unique primary key,
  schulname varchar(40) not null, 
  kanton varchar(30) not null
  check (kanton = 'AG' or kanton = 'AI' or 
          kanton = 'AR' or kanton = 'BE' or 
          kanton = 'BL' or kanton = 'BS' or 
          kanton = 'FR' or kanton = 'GE' or 
          kanton = 'GL' or kanton = 'GR' or 
          kanton = 'JU' or kanton = 'LU' or 
          kanton = 'NE' or kanton = 'NW' or 
          kanton = 'OW' or kanton = 'SG' or 
          kanton = 'SH' or kanton = 'SO' or 
          kanton = 'SZ' or kanton = 'TG' or 
          kanton = 'TI' or kanton = 'UR' or 
          kanton = 'VD' or kanton = 'VS' or 
          kanton = 'ZG' or kanton = 'ZH'
  ); 
/*
Die Tabelle schule enthält die Attribute schul_nr, schulname und kanton.
Die schul_nr ist die Primärschlüssel und wird automatisch hochgezählt.
Die schulname und kanton sind nicht null und müssen angegeben werden.
Bei kanton wird geprüft, ob der eingegebene Wert in der Liste der Kantone enthalten ist.
Hier hätte man auch eine Tabelle mit allen Kantonen erstellen können, und mit einem foreign key verknüpfen können.
Wir haben uns aber für diese Lösung entschieden, da wir nur die Kantone benötigen, 
und nicht die ganzen Daten der Kantone.
*/

create table schueler(
  schueler_nr integer not null unique primary key, 
  nachname varchar(30) not null, 
  vorname varchar(30) not null, 
  Geburtsjahr year not null
  check (Geburtsjahr > 2000 and Geburtsjahr < 2010),
  geschlecht varchar(1) not null
  check (geschlecht = 'm' or geschlecht = 'w' or geschlecht = 'd'),
  klassen_name varchar(30) not null on update cascade on delete set null,
  foreign key (klassen_name)
  references klasse(name)
  );
  /*
Die Tabelle schueler enthält die Attribute schueler_nr, nachname, vorname, Geburtsjahr, geschlecht und klassen_name.
Die schueler_nr ist die Primärschlüssel und wird automatisch hochgezählt.
Die nachname, vorname, Geburtsjahr, geschlecht und klassen_name sind nicht null und müssen angegeben werden.
Bei Geburtsjahr wird geprüft, ob der eingegebene Wert zwischen 2000 und 2010 liegt. Hier nehmen wir an, 
dass die Schüler zwischen 12 und 22 Jahre alt sind. 
Bei geschlecht wird geprüft ob der eingegebene Wert m, w oder d ist. d steht für divers.
Die klassen_name ist ein Fremdschlüssel, welcher auf die Tabelle klasse verweist.
klassen_name soll nur ein update erhalten, falls der Schüler in eine andere Klasse wechselt.
klassen_name soll auf null gesetzt werden, falls die Klasse gelöscht wird (normalereweise 
würde der Schüler dann in eine andere Klasse wechseln, dh. der Schüler sollte eigentlich immer in einer Klasse sein.).
*/ 
  
create table sportliche_leistung(
  count_no integer not null unique primary key, 
  km integer,
  sportart varchar(30), 
  co2_aquivalenz integer
  zeit_log_no integer on delete cascade,
  foreign key (zeit_log_no)
  references zeit(log_no)
  );
  
create table sportlehrperson(
  pers_no integer not null unique primary key, 
  nachname varchar(30) not null, 
  vorname varchar(30) not null,
  schul_nr integer not null,
  foreign key (schul_nr)
  references schule(schul_nr)
  );
  
create table erfolgt(
  log_no integer not null unique primary key, 
  datum date
  check (datum > '2023-01-01'), 
  uhrzeit time
  check (uhrzeit > '00:00:00' and uhrzeit < '23:59:59')
  );
  
create table klasse(
  name varchar(30) not null primary key,
  sport_gehalten_von integer references sportlehrperson(pers_no) on update cascade on delete set null
  foreign key (schul_nr, pers_no)
  references sportlehrperson(schul_nr, pers_no)
  );
  
create table erbringt(
  schueler_nr integer, 
  count_no integer, 
  primary key(schueler_nr, count_no)
  );


