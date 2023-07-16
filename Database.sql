-- GROUP MEMBERS

-- DIYA HINGER 20UCC040
-- KANISHA AGARWAL 20UCC056
-- RADHIKA AGARWAL 20UCC083

Create database covid_management_system;
show databases;

use covid_management_system;
show databases;


drop table Customer;
create table Customer(
Firstname varchar(20),
Lastname varchar(20),
Username varchar(50),
Password varchar(50),
Phone_Number numeric(10),
City varchar(20),
primary key(Username));


create table medical_store(
Username varchar(50),
Firstname varchar(20),
Lastname varchar(20),
Password varchar(50),
Phone_Number numeric(10),
City varchar(50),
Email varchar(50),
nameofstore varchar(50),
primary key(Username));

-- show tables;
-- describe customer;
-- describe medical_store;
create table Medicines(
Username varchar(20) NOT NULL,
MedName varchar(50) NOT NULL,
Quantity int NOT NULL,
primary key(Username,MedName),
foreign key(Username) references medical_store(Username)
);

create table Admin(
Username varchar(20) NOT NULL,
Password varchar(30) NOT NULL);

insert into admin values(
("DIYA0612","06122002"),
("KANISHA11","SILENT"),
("RADHIKA11","LOUDER"));


-- update medicines
-- set Quantity=Quantity
-- where MedName=Medname
-- and Username=Username;