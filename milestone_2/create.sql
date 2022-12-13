create table schule(
  schul_nr integer not null unique primary key,
  schulname varchar(40) not null, 
  kanton varchar(30) not null
  );

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
  
create table zeit(
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


