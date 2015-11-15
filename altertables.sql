alter table accountinfo
add column customerId int 




ALTER TABLE `bankofdanish`.`accountinfo` ADD COLUMN `accountid` INT NOT NULL FIRST 
, ADD PRIMARY KEY (`accountid`) ;


drop table customer

CREATE TABLE customer
(
customerId int NOT NULL,
customerName varchar(55),
phone varchar(55),
ssn varchar(55),
address varchar(55),
accountId int,
PRIMARY KEY (customerId),
FOREIGN KEY (accountId) REFERENCES accountinfo(accountid)
)

INSERT INTO accountinfo
VALUES (1,11111,'checking',180,'Ali',1);


INSERT INTO accountinfo
VALUES (2,11111,'saving',180,'Ali',1);

INSERT INTO accountinfo
VALUES (3,222222,'401k',180,'Mrs Ali',2);







ALTER TABLE customer DROP COLUMN address;





alter table address 
add column customerid int(11) first


alter table address 
add customername varchar(55) AFTER  customerid



UPDATE address
SET customername='Ali'
WHERE customerid= 1







insert into customer values(1,'Ali','2147567777','333454444',1)

insert into customer values(2,'Mrs Ali','2147567778','333454444',1)

insert into customer values('3', 'Sam', '2147677770', '116754444', 3)

insert into customer values('4', 'Danish', '2147677779', '446754444', 4)

INSERT INTO accountinfo VALUES (1,11111,'checking',180,'Ali',1);

INSERT INTO accountinfo VALUES (2,11111,'saving',180,'Ali',1);

INSERT INTO accountinfo VALUES (3,222222,'401k',180,'Sam',3);

INSERT INTO accountinfo VALUES (4,333333,'Home Loan',180,'Danish',4);

INSERT INTO accountinfo VALUES (5,11111,'Home Loan ',180,'Mrs Ali',2);


insert into address values(1,'Ali','Main Street','75034','TX','Richardson')
insert into address values(2,'Mrs Ali','Oak Street','60466','IL','chicago')
insert into address values(3, 'sam' ,'Oak Street','75034','TX','IRVING')
insert into address values(4, 'Danish' ,'Plano Street','75067','TX','Garland')



alter table accountinfo 
add customername varchar(55) after customerId

