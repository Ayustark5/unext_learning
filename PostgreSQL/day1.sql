/*Postgres Day 1

Basic SQL syntax and commands:
* \l -> list of batabases
* \c -> use database
* \d -> describe a table
* \q -> exit the terminal

Create, select, insert, update, alter a table
Foreign key, Primary key
Inner join, outer join
*/
insert into employee values (2000141, 'Yushavi', 8383340, 3), (2000437, 'Shreya', 1237340, 4), (2000794, 'Sneha', 7686934, 1), (2000431, 'Astha', 3274948, 2);
select * from employee;
select sum(salary) from employee;
select avg(salary) from employee;
select * from employee group by eid order by eid;
update employee set ename='';
select * from employee;
update employee set salary=null;
select * from employee order by salary desc;
create table department(
    dept_id integer not null primary key,
    dept_name text not null
);
alter table employee add dept_id integer references department(dept_id);
insert into department values(1, 'IT'),(2, 'CSE'),(3, 'CSCE'),(4,'CSSE');

update employee set dept_id = 0001 where eid = 2000101;
-- update employee set dept_id = 0001 where eid = 2000101;
update employee set dept_id = 0003 where eid = 2000176;
update employee set dept_id = 0004 where eid = 2000453;
select * from department;
select eid, ename, salary, d.dept_id, dept_name from employee e inner join department d on e.dept_id = d.dept_id;
