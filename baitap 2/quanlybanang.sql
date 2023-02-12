create database quanlybanhang;
create table customer(
	cID int primary key not null,
    cName varchar(50) not null,
    cAge  int check (cAge > 0) not null

);
create table product(
	pID int primary key not null,
    PName varchar(50) not null,
    pPrice float not null
);
create table Orders (
	oID int primary key not null,
    cID int,
    CONSTRAINT fk_cID FOREIGN KEY (cID) REFERENCES customer(cID)
   
);
	alter table Orders add oDate date;
	alter table Orders add oToTalPrice float;
create table OrderDetail (
	oID int,
    pID int,
	constraint primary key (oID, pID),
    odQTY varchar(50) not null
    
);
