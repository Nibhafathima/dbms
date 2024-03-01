create table student(id int,name varchar(50));
	insert into student values(1,"manu");
	insert into student values(2,"varun"); 
	insert into student values(3,"shan"); 
	insert into student values(4,"tom"); 
	insert into student values(5,"aysha");
	insert into student values(6,"reena");
	insert into student values(7,"saya"); 
	insert into student values(8,"boby");
	insert into student values(9,"kiara");

select * from student;
+------+-------+
| id   | name  |
+------+-------+
|    1 | manu  |
|    2 | varun |
|    3 | shan  |
|    4 | tom   |
|    5 | aysha |
|    6 | reena |
|    7 | saya  |
|    8 | boby  |
|    9 | kiara |
|   10 | haya  |
+------+-------+
alter table student add age int;

	update student set age=21 where id=1;
	update student set age=29 where id=2;
	update student set age=22 where id=3;
        update student set age=21 where id=4;
	update student set age=22 where id=5; 
	update student set age=22 where id=6;
	update student set age=26 where id=7;
 	update student set age=30 where id=8;
 	update student set age=26 where id=9;
	update student set age=23 where id=10;

alter table student add department varchar(50);
	update student set department="mca" where id=1;
	update student set department="eee" where id=2;
	update student set department="eee" where id=3;
	update student set department="mech" where id=4;
  update student set department="eee" where id=5;
	update student set department="mca" where id=6;
	update student set department="civil" where id=7;
  update student set department="mtech" where id=8;
	update student set department="mca" where id=9;
	update student set department="civil" where id=10;

select * from student;
+------+-------+------+------------+
| id   | name  | age  | department |
+------+-------+------+------------+
|    1 | manu  |   21 | mca        |
|    2 | varun |   29 | eee        |
|    3 | shan  |   22 | eee        |
|    4 | tom   |   21 | mech       |
|    5 | aysha |   22 | eee        |
|    6 | reena |   22 | mca        |
|    7 | saya  |   26 | civil      |
|    8 | boby  |   30 | mtech      |
|    9 | kiara |   26 | mca        |
|   10 | haya  |   23 | civil      |
+------+-------+------+------------+

mysql> select * from  student where id=10;
+------+------+------+------------+
| id   | name | age  | department |
+------+------+------+------------+
|   10 | haya |   23 | civil      |
+------+------+------+------------+
1 row in set (0.00 sec)

mysql> select * from  student where id>5;
+------+-------+------+------------+
| id   | name  | age  | department |
+------+-------+------+------------+
|    6 | reena |   22 | mca        |
|    7 | saya  |   26 | civil      |
|    8 | boby  |   30 | mtech      |
|    9 | kiara |   26 | mca        |
|   10 | haya  |   23 | civil      |
+------+-------+------+------------+
5 rows in set (0.00 sec)

mysql> select * from  student where id>=5;
+------+-------+------+------------+
| id   | name  | age  | department |
+------+-------+------+------------+
|    5 | aysha |   22 | eee        |
|    6 | reena |   22 | mca        |
|    7 | saya  |   26 | civil      |
|    8 | boby  |   30 | mtech      |
|    9 | kiara |   26 | mca        |
|   10 | haya  |   23 | civil      |
+------+-------+------+------------+
6 rows in set (0.00 sec)

mysql> select * from  student where id<5;
+------+-------+------+------------+
| id   | name  | age  | department |
+------+-------+------+------------+
|    1 | manu  |   21 | mca        |
|    2 | varun |   29 | eee        |
|    3 | shan  |   22 | eee        |
|    4 | tom   |   21 | mech       |
+------+-------+------+------------+
4 rows in set (0.00 sec)

mysql> select * from  student where id<=5;
+------+-------+------+------------+
| id   | name  | age  | department |
+------+-------+------+------------+
|    1 | manu  |   21 | mca        |
|    2 | varun |   29 | eee        |
|    3 | shan  |   22 | eee        |
|    4 | tom   |   21 | mech       |
|    5 | aysha |   22 | eee        |
+------+-------+------+------------+
5 rows in set (0.00 sec)

mysql> select * from  student where id between 7 and 10;
+------+-------+------+------------+
| id   | name  | age  | department |
+------+-------+------+------------+
|    7 | saya  |   26 | civil      |
|    8 | boby  |   30 | mtech      |
|    9 | kiara |   26 | mca        |
|   10 | haya  |   23 | civil      |
+------+-------+------+------------+


mysql> select name from student where name like 'k%';
+-------+
| name  |
+-------+
| kiara |
+-------+
1 row in set (0.00 sec)

mysql> select name from student where name like '_a%';
+-------+
| name  |
+-------+
| manu  |
| varun |
| saya  |
| haya  |
+-------+
4 rows in set (0.00 sec)

mysql> select * FROM STUDENT WHERE ID IN (5,8);
+------+-------+------+------------+
| id   | name  | age  | department |
+------+-------+------+------------+
|    5 | aysha |   22 | eee        |
|    8 | boby  |   30 | mtech      |
+------+-------+------+------------+
2 rows in set (0.00 sec)

mysql> select name from student where name like '%a%';
+-------+
| name  |
+-------+
| manu  |
| varun |
| shan  |
| aysha |
| reena |
| saya  |
| kiara |
| haya  |
+-------+
8 rows in set (0.00 sec)
