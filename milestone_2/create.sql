/*
Zur Erstellung der Datenbank:
Wir haben uns entschieden, dass wir die Datenbank in 7 Tabellen aufteilen.
Zur besseren Lesbarkeit von Personenbezeichnungen und personenbezogenen Wörtern 
wird die männliche Form genutzt. Diese Begriffe gelten für alle Geschlechter.

Die Tabellen sind:

1. schule
2. schueler
3. sportliche_leistung
4. sportlehrperson
5. erfolgt_um (hier werden die Zeiten gespeichert, wann die Sportliche Leistung stattgefunden haben)
6. sportklasse
7. erbringt (hier werden die Beziehungen zwischen den Tabellen schueler und sportliche_leistung gespeichert)

Die Rückmeldungen des ersten Milestonegit  haben wir berücksichtigt und die Entitäten bzw. Attribute 
foglendermassen angepasst:
Damit zwischen Schule, Sportlehrperson und Klasse keine Connection Trap ensteht, haben wir der Klasse 
ein zusätzliches Attribut "sport_gehalten_von" hinzugefügt, welches auf die Tabelle sportlehrperson verweist. 
Hier könnte man natürlich auch eine zusätzlich Tabelle erstellen, welche alle 
Fächer der Klasse aufliestet, da wir aber nur am Fach Sport interessiert sind, 
haben wir uns für diese Lösung entschieden.
Weiter haben wir die Beziehung zwischen Klasse und Sportliche Leistung entfernt, da diese nicht notwendig ist.
Zudem haben wir die Beziehung erfolgt mit einer N:1 Beziehung ersetzt, damit nicht mehrere Zeiten 
für eine Sportliche Leistung angegeben werden können.

Zu jeder Tabelle wird unterhalb der sql Anweisung ein kurzer Kommentar gegeben. 
*/

create table schule(
  schul_nr integer not null  unique primary key,
  schulname varchar(40) not null, 
  kanton varchar(2) not null
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
          kanton = 'ZG' or kanton = 'ZH')
  ); 
/*
Die Tabelle schule enthält die Attribute schul_nr, schulname und kanton.
Das Attribut schul_nr ist der Primärschlüssel und wird automatisch hochgezählt.
Dies würde mit dem Zusatz "auto_increment" passieren, wird aber hier nicht unterstützt, bzw. als Fehler angezeigt.
Daher werden auch alle weiteren Primärschlüssel für die anderen Tabellen nicht automatisch hochgezählt.
Falls der Zusatz "auto_increment" unterstützt wird, kann beim Einfügen von Daten auf die Primärschlüssel verzichtet werden.
Wir nehmen für die diese und die weiteren Tabllen an, dass die Primärschlüssel automatisch hochgezählt werden, werden aber 
beim Einfügen der Daten die Primärschlüssel angeben.
Die Attribute schulname und kanton sind nicht null und müssen angegeben werden.
Bei kanton wird geprüft, ob der eingegebene Wert in der Liste der Kantone enthalten ist.
Hier hätte man auch eine Tabelle mit allen Kantonen erstellen können, und mit einem foreign key verknüpfen können.
Wir haben uns aber für diese Lösung entschieden, da wir nur die Kantone benötigen, 
und nicht die ganzen Daten der Kantone.
*/

create table schueler(
  schueler_nr integer not null unique primary key, 
  nachname varchar(30) not null, 
  vorname varchar(30) not null, 
  geburtsjahr year not null
  check (geburtsjahr > 2000 and geburtsjahr < 2010),
  geschlecht varchar(1) not null
  check (geschlecht = 'm' or geschlecht = 'w' or geschlecht = 'd'),
  klassen_name varchar(30) not null,
  schul_nr integer not null,
  foreign key (klassen_name,schul_nr) references sportklasse(name,schul_nr) on update cascade on delete set null
  );
  /*
Die Tabelle schueler enthält die Attribute schueler_nr, nachname, vorname, Geburtsjahr, geschlecht und klassen_name.
Die schueler_nr ist der Primärschlüssel und wird automatisch hochgezählt.
Die Attribute nachname, vorname, Geburtsjahr, geschlecht und klassen_name sind nicht null und müssen angegeben werden.
Bei geburtsjahr wird geprüft, ob der eingegebene Wert zwischen 2000 und 2010 liegt. Hier nehmen wir an, 
dass die Schüler zwischen 12 und 22 Jahre alt sind. Dies könnte man natürlich auch noch anpassen.
Bei geschlecht wird geprüft ob der eingegebene Wert m, w oder d ist. d steht für divers.
Die Attribute klassen_name und schul_nr sind nicht null und müssen angegeben werden.
Der Fremdschlüssel klassen_name und schul_nr verweist auf die Tabelle sportklasse.
Bei einem Update der Tabelle sportklasse wird der Fremdschlüssel aktualisiert.
Bei einem Delete des Fremdschlüssels wird der Wert auf null gesetzt, somit können wir hier darauf reagieren, wenn 
ein Schüler noch nicht in eine Klasse eingeteilt wurde.
*/ 
  
create table sportliche_leistung(
  count_no integer not null unique primary key, 
  km float not null
  check (km > 0),
  sportart varchar(30) not null, 
  co2_aquivalenz integer
  check (co2_aquivalenz >=0) default 0,
  zeit_log_no integer ,
  foreign key (zeit_log_no)
  references erfolgt_um(log_no) on delete cascade
  );
  
  /*
Die Tabelle sportliche_leistung enthält die Attribute count_no, km, sportart, co2_aquivalenz und zeit_log_no.
Die count_no ist der Primärschlüssel und wird automatisch hochgezählt.
Die Attribute km und sportart sind nicht null und müssen angegeben werden. 
Die co2_aquivalenz muss nicht angegeben werden, da sie ev. nicht immer bekannt ist. Diese wird dann auf 0 gesetzt.
Wenn die co2_aquivalenz angegeben wird, wird geprüft, ob der eingegebene Wert grösser oder gleich 0 ist.
Das Attribut zeit_log_no ist ein Fremdschlüssel, welcher auf die Tabelle zeit verweist.
zeit_log_no soll gelöscht werden, falls die Zeit gelöscht wird, da wir annehmen, dass die Zeit nur einmal
für eine sportliche Leistung verwendet wird.
  */
create table sportlehrperson(
  pers_no integer not null unique primary key, 
  nachname varchar(30) not null, 
  vorname varchar(30) not null,
  schul_nr integer not null ,
  foreign key (schul_nr)
  references schule(schul_nr)on delete set null on update cascade
  );
  
  /*
Die Tabelle sportlehrperson enthält die Attribute pers_no, nachname, vorname und schul_nr.
Die pers_no ist der Primärschlüssel und wird automatisch hochgezählt.
Die Attribute nachname, vorname und schul_nr sind nicht null und müssen angegeben werden.
Das Attribut schul_nr ist ein Fremdschlüssel, welcher auf die Tabelle schule verweist.
schul_nr soll auf null gesetzt werden, falls die Schule gelöscht wird, da wir erwarten, dass die Lehrperson immer 
in einer Schule arbeitet. Falls die Lehrperson in eine andere Schule wechselt, 
soll der Wert von schul_nr geändert werden.
  */
create table erfolgt_um(
  log_no integer not null unique primary key, 
  datum date not null default '2023-01-01'
  check (datum > '2023-01-01'), 
  uhrzeit time not null default '12:00:00'
  check (uhrzeit > '00:00:00' and uhrzeit < '23:59:59')
  );
  /*
Die Tabelle erfolgt_um enthält die Attribute log_no, datum und uhrzeit.
Das Attribut log_no ist der Primärschlüssel und wird automatisch hochgezählt.
Die Attribute datum und uhrzeit sind nicht null und müssen angegeben werden.
Bei datum wird geprüft, ob der eingegebene Wert nach dem 01.01.2023 liegt. Wir nehmen an, dass die Datenbank erst
ab dem 01.01.2023 verwendet wird.
Falls datum und uhrzeit nicht angegeben werden, werden diese auf 01.01.2023 und 12:00:00 gesetzt.
Bei uhrzeit wird geprüft, ob der eingegebene Wert zwischen 00:00:00 und 23:59:59 liegt.

  */
  
create table sportklasse(
  name varchar(30) not null ,
  sport_gehalten_von integer references sportlehrperson(pers_no) on update cascade on delete set null,
  schul_nr integer not null references schule(schul_nr) on delete set null,
  primary key (name, schul_nr) 
  );
  /*
Die Tabelle klasse (schwache Entität) enthält die Attribute name und sport_gehalten_von.
Das Attribut name und schul_nr bilden den Primärschlüssel und müssen angegeben werden.
Hier nehmen wir an, dass jede Klasse ihren eigenen Namen hat. 
Ob die Klassen in der ganzen Schweiz eindeutig sind, ist uns nicht bekannt, 
wir nehmen an, dass der Primärschlüssel aus name und schul_nr eindeutig ist.
Die Sportklassen entsprechen auch nicht den normalen Klassen, d.h. es kann durchaus sein, dass
die Sportklassen aus verschiedenen Klassen der Schule zusammengefasst werden.
Das sport_gehalten_von Attribut bezieht sich auf die Sportlehrperson, welche die Klasse betreut.
sport_gehalten_von soll auf null gesetzt werden, falls die Lehrperson gelöscht wird, da wir erwarten, dass die Klasse immer
von einer Lehrperson betreut wird und wir hier somit allenfalls eine andere Lehrperson zuweisen können.
Falls die Lehrperson in eine andere Klasse wechselt, soll der Wert von sport_gehalten_von geändert werden(on update cascade).
Das schul_nr Attribut bezieht sich auf die Schule, in welcher die Klasse sich befindet.
schul_nr soll auf null gesetzt werden, falls die Schule gelöscht wird, da wir erwarten, dass die Klasse immer
in einer Schule ist und wir hier somit allenfalls eine andere Schule zuweisen können.
  */




  
create table erbringt(
  schueler_nr integer references schueler(schueler_nr) on delete set null,
  count_no integer references sportliche_leistung(count_no) on delete set null,
  primary key(schueler_nr, count_no) 
  );
  /*
Die Tabelle erbringt enthält die Attribute schueler_nr und count_no.
Die schueler_nr und count_no sind die Primärschlüssel und werden automatisch hochgezählt.
Das Attribut schueler_nr wird auf die Tabelle schueler verweisen und soll auf null gesetzt werden, falls der Schüler gelöscht wird.
Das Attribut count_no wird auf die Tabelle sportliche_leistung verweisen und soll auf null gesetzt werden, falls die sportliche Leistung gelöscht wird.
Es macht keinen Sinn, dass ein Schüler eine sportliche Leistung erbringt, die nicht existiert (oder umgekehrt).
  */

