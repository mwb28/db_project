create table schule(
  schul_nr integer not null unique primary key,
  name varchar(40) not null, 
  kanton varchar(30) not null
  );

create table schueler(
  schueler_nr integer not null unique primary key, 
  nachname varchar(30) not null, 
  vorname varchar(30) not null, 
  jahrgang integer not null, 
  geschlecht varchar(20) not null,
  foreign key (name)
  );
  
create table sportliche_leistung(
  count_no integer not null unique primary key, 
  km integer, 
  sportart varchar(30), 
  co2_aquivalenz integer
  foreign key (name)
  );
  
create table sportlehrperson(
  pers_no integer not null unique primary key, 
  nachname varchar(30), 
  vorname varchar(30)
  foreign key (schul_nr)
  );
  
create table zeit(
  log_no integer not null unique primary key, 
  datum date, 
  uhrzeit time
  );
  
create table klasse(
  name varchar(30) not null primary key,
  foreign key (schul_nr, pers_no)
  );
  
create table erbringt(
  schueler_nr integer, 
  count_no integer, 
  primary key(schueler_nr, count_no)
  );

create table erfolgt(
  log_no integer,
  count_no integer,
  primary key(log_no, count_no)
  );
