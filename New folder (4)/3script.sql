show databases;
create database if not exists test3;
use test3;

create table if not exists posto(
kwdikos int not null unique,
onoma varchar(40),
primary key (kwdikos)
);

create table if not exists upokatastima(
poli varchar(40) not null unique,
dieuthunsi varchar(40) not null unique,
primary key (poli,dieuthunsi)
);

create table if not exists upallilos(
afm int not null unique,
onoma varchar(40) not null,
epitheto varchar(40) not null,
poli varchar(40),
dieuthunsi varchar(40) unique,
primary key(afm),
foreign key(poli) references upokatastima(poli),
foreign key(dieuthunsi) references upokatastima(dieuthunsi)
);

create table if not exists exei(
kwdikos int  unique,
poli varchar(40) not null unique,
dieuthunsi varchar(40) not null unique,
primary key (poli,dieuthunsi),
foreign key(kwdikos) references posto(kwdikos),
foreign key(poli) references upokatastima(poli),
foreign key(dieuthunsi) references upokatastima(dieuthunsi)
);

create table if not exists upokatastima_exei_upallilo_se_posto(
poli varchar(40) not null unique,
dieuthunsi varchar(40) not null unique,
afm int not null unique,
kwdikos int,
primary key (poli, dieuthunsi, afm),
foreign key (poli) references upokatastima(poli),
foreign key (dieuthunsi) references upokatastima(dieuthunsi),
foreign key (afm) references  upallilos(afm),
foreign key (kwdikos) references posto(kwdikos)
);