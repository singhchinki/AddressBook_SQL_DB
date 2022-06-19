CREATE DATABASE Address_Book
use Address_Book
CREATE TABLE AddressBook
(
FirstName varchar(20),
FastName varChar(20),
Address varchar(100),
City varchar(20),
State varchar(20),
Zip int,
PhoneNumber varchar(12),
Email varchar(20)
);
select * from AddressBook