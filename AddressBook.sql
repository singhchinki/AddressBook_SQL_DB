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

select * from AddressBook where City='amravati' order by Firstname;

alter table AddressBook add address_book_name varchar(50),address_book_type varchar(50);
update AddressBook set address_book_name='family address book', address_book_type='Family' where FirstName='dhiraj';
update AddressBook set address_book_name='friends address book', address_book_type='Friends,' where FirstName='vidyadhar';
update AddressBook set address_book_name='profession address book', address_book_type='Profession' where FirstName='suraj';
select * from AddressBook

select count(address_book_type) as 'number_of_contacts' from AddressBook where address_book_type='Family';
select count(address_book_type) as 'number_of_contacts' from AddressBook where address_book_type='Friends';
select count(address_book_type) as 'number_of_contacts' from AddressBook where address_book_type='Profession';

insert into AddressBook values ('nitikesh','hudge','tawarja colony','latur','maharashtra',413512,8149713160,'dhiraj@gmail.com','family address book','Family'),
('nitikesh','hudge','tawarja colony','latur','maharashtra',413512,8149713160,'dhiraj@gmail.com','friends address book','Friends');
select * from AddressBook

create table Address
(
address_id int not null primary key,
address varchar(200) not null,
city varchar(50) not null,
state varchar(50) not null,
zip bigint not null
)
insert into Address values
(101,'tawarja','latur','maha',413512),
(102,'gandhi chowk','pune','karnatak',413452),
(103,'mataji negar','amravati','kerala',433512),
(104,'shivaji chowk','nagpur','hariyana',443512),
(105,'adarsh colony','delhi','rajshthan',453512);
select * from Address;

create table ContactType
(
contact_type_id int not null  primary key,
contact_type_name varchar(100) not null
)
insert into ContactType values
(201,'Family'),
(202,'Friends'),
(203,'Profession');
select * from ContactType;

create table Contact
(
contact_id int not null primary key,
address_id int not null,
first_name varchar(30) not null,
last_name varchar(30) not null,
phone_number bigint not null,
email varchar(100) not null,
contact_name varchar(20) not null,
foreign key(address_id) REFERENCES Address(address_id)
)
insert into Contact values
(1,101,'dhiraj','hudge',8149713160,'dhiraj@gmail,com','dhirajFriend'),
(2,102,'suraj','hudge',8349713160,'suraj@gmail,com','surajFamily'),
(3,103,'kajol','paw',8549713160,'kajol@gmail,com','kajolProfession'),
(4,104,'priya','tondare',8749713160,'priya@gmail,com','priyaFamily');
select * from Contact;

create table ContactMapping
(
contact_mapping_id int not null primary key,
contact_id int not null,
contact_type_id int not null
foreign key(contact_id) REFERENCES Contact(contact_id),
foreign key(contact_type_id) REFERENCES ContactType(contact_type_id)
)
insert into ContactMapping values
(301,1,201),
(302,2,202),
(303,3,201),
(304,1,202),
(305,2,201),
(306,3,202),
(307,2,203);
select * from ContactMapping;




