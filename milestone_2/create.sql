create table schule(
  schul_nr integer not null unique primary key,
  schulname varchar(40) not null, 
  kanton varchar(30) not null
  );

create table schueler(
  schueler_nr integer not null unique primary key, 
  nachname varchar(30) not null, 
  vorname varchar(30) not null, 
  jahrgang integer not null,
  geschlecht varchar(1) not null,
  klassen_name varchar(30) not null on delete cascade,
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
  datum date, 
  uhrzeit time
  );
  
create table klasse(
  name varchar(30) not null primary key,
  sport_gehalten_von integer references sportlehrperson(pers_no)
  foreign key (schul_nr, pers_no)
  references sportlehrperson(schul_nr, pers_no)
  );
  
create table erbringt(
  schueler_nr integer, 
  count_no integer, 
  primary key(schueler_nr, count_no)
  );


