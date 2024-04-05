alter table orders add primary key (orderid);
desc orders;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| orderid   | int         | NO   | PRI | NULL    |       |
| custid    | int         | YES  |     | NULL    |       |
| custname  | varchar(25) | YES  |     | NULL    |       |
| orderdate | date        | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+

alter table product add primary key (pid);
desc product;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| pid     | int         | NO   | PRI | NULL    |       |
| pname   | varchar(25) | YES  |     | NULL    |       |
| orderid | int         | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+

alter table product add foreign key(orderid)references orders(orderid);
desc product;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| pid     | int         | NO   | PRI | NULL    |       |
| pname   | varchar(25) | YES  |     | NULL    |       |
| orderid | int         | YES  | MUL | NULL    |       |
+---------+-------------+------+-----+---------+-------+

select product .pname,orders.orderid from product join orders on product.orderid=orders.orderid;
+----------+---------+
| pname    | orderid |
+----------+---------+
| laptop   |       1 |
| lipstick |       5 |
| book     |       6 |
| glass    |       7 |
| pen      |       9 |
+----------+---------+

 select * from viewone;
+------+----------+
| pid  | pname    |
+------+----------+
| 4001 | laptop   |
| 4002 | lipstick |
| 4003 | book     |
| 4004 | glass    |
| 4005 | pen      |
+------+----------+

 
create view viewtwo as select custid,custname from orders;
 select * from viewtwo;
+--------+----------+
| custid | custname |
+--------+----------+
|   1001 | kavya    |
|   1002 | kiran    |
|   1345 | varun    |
|   1445 | karthik  |
|   1745 | sara     |
|   1111 | zara     |
|   2002 | kiran    |
|   2225 | thara    |
|   3214 | kalam    |
|   1545 | manu     |
+--------+----------+

 
create table course(staffid int,cusno int,cusname varchar(25),primary key(staffid));
CREATE TABLE facuality (fno INT PRIMARY KEY,fname VARCHAR(25),staffid INT,FOREIGN KEY (staffid) REFERENCES course(staffid));

insert into course values(101,991,"manu");
 insert into course values(102,221,"marya");
 insert into course values(103,333,"maya");
 insert into course values(104,343,"riya");
insert into course values(105,443,"kiran");

