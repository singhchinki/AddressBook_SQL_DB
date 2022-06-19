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

insert into AddressBook values('dhiraj','hudge','tawarja colony','latur','maharashtra','413512','8149713160','dhiraj@gmail.com')
insert into AddressBook values('suraj','pawar','mataji negar','pune','karnataka','415673','8149613160','suraj@gmail.com')
insert into AddressBook values('vidyadhar','hudge','bashweshwar','amravati','andhra','413678','8179713160','vidyadhar@gmail.com')
insert into AddressBook values('trimbak','pawar','shivaji chowk','mumbai','up','748949','8149703160','trimbak@gmail.com')
insert into AddressBook values('suresh','hudge','ashok hotel','udagir','rajshthan','413562','9149713160','suresh@gmail.com')
select * from AddressBook

update AddressBook set address='adarsh colny' where FirstName='dhiraj';
update AddressBook set city='delhi' where FirstName='suraj';
update AddressBook set state='kerala' where FirstName='trimbak';
select * from AddressBook

delete from AddressBook where FirstName='dhiraj';
delete from AddressBook where FirstName='suraj';
delete from AddressBook where FirstName='trimbak';
delete from AddressBook where FirstName='suresh';
select * from AddressBook

select * from AddressBook where City='amravati' Or State='maharashtra';
select COUNT(City) as 'number_of_contacts' from AddressBook where City='pune' group by city;
select COUNT(State) as 'number_of_contacts' from AddressBook where State='andhra' group by state;

