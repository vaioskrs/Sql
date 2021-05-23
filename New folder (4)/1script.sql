create table if not exists athlites (
onomatepwnumo varchar(40) not null,
imerominia_gennisis date not null unique, 
ethnikotita varchar(40) not null ,
onoma_omadas varchar(40),
primary key (onomatepwnumo),
foreign key (onoma_omadas) references omada(onoma)
);

create table if not exists omada (
onoma varchar(40) not null, 
emblima varchar(40) not null,
primary key(onoma)
);

create table if not exists athlima (
kwdikos int not null unique,
onoma varchar(40) not null,
katigoria varchar(40) not null,
olumpiako boolean,
primary key (kwdikos)
);

create table if not exists asxoleitai (
onomatepwnumo_athliti varchar(40) not null unique,
kwdikos_ahtlimatos int unique,
primary key (onomatepwnumo_athliti, kwdikos_ahtlimatos),
foreign key (onomatepwnumo_athliti) references athlites (onomatepwnumo),
foreign key (kwdikos_ahtlimatos) references athlima (kwdikos)
);


 show tables;
 describe athlites;
 