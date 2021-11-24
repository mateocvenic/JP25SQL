drop database if exists castingagencija;
create database castingagencija character set utf8;
use castingagencija;

# c:\xampp\mysql\bin\mysql -uedunova -pedunova --default_character_set=utf8 < "C:\JP25SQL\zavrsni\castingagencija.sql"

create table castingagencija(
    sifra int not null primary key auto_increment,
    plesac int,
    ples int,
    opisposla int
);


create table plesac (
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar(50),
    iskustvo decimal(18.2),
    video varchar(50)

);

create table ples (
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    uparu boolean
    
);

create table opisposla (
    sifra int not null primary key auto_increment,
    naziv varchar(50),
    poslodavac varchar(50),
    videoprimjer varchar(50),
    placa decimal(18.2)
    
);


alter table castingagencija add foreign key (plesac) references plesac(sifra);
alter table castingagencija add foreign key (ples) references ples(sifra);
alter table castingagencija add foreign key (opisposla) references opisposla(sifra);


