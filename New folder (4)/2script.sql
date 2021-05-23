
create table if not exists biblio(
isbn int not null unique, 
titlos varchar(40) not null,
eksoseis varchar(40),
antitupo varchar(40),
primary key (isbn)
);

create table if not exists suggrafeas(
kwdikos int not null unique, 
onomatepwnumo varchar(50) not null,
primary key (kwdikos)
);

create table if not exists exei(
isbn int unique,
kwdikos int not null unique,
primary key (kwdikos,isbn),
foreign key (isbn) references biblio(isbn),
foreign key (kwdikos) references suggrafeas(kwdikos)
);



create table if not exists xristis(
AA int unique, 
AM int unique not null,
onomatepwnumo varchar(50),
tilefwno varchar(40),
primary key (AM)
);

create table if not exists imerominia(
imerominia date not null unique,
primary key (imerominia)
);

create table if not exists daneizetai(
isbn int unique, 
AM int unique,
imerominia date unique,
primary key (isbn, AM, imerominia),
foreign key (isbn) references biblio(isbn),
foreign key (AM) references xristis(AM),
foreign key (imerominia) references imerominia(imerominia)
);