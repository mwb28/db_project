create table schule(
  schul_nr integer not null unique primary key,
  name varchar(80) not null, 
  kanton varchar(80) not null
  );

create table schueler(
  schueler_nr integer not null unique primary key, 
  nachname varchar(80) not null, 
  vorname varchar(80) not null, 
  jahrgang integer not null, 
  geschlecht varchar(20) not null
  );
  
create table sportliche_leistung(
  count_no integer not null unique primary key, 
  km integer, 
  sportart varchar(80), 
  co2_aquivalenz integer
  );
  
create table sportlehrperson(
  pers_no integer not null unique primary key, 
  nachname varchar(80), 
  vorname varchar(80)
  );
  
create table zeit(
  log_no integer not null unique primary key, 
  datum ???, 
  uhrzeit ???
  );
  
create table klasse(
  name varchar(80) not null primary key
  );
  
