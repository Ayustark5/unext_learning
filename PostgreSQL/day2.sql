/*Postgres Day 2
Day starts -> Standup meeting
Day ends -> retrospective meeting

Inner Join
Full outer join
Left outer join
Right outer join
Self join
  Select column_a
  from A a, A b
  where condition;

  Ex. Select A.CustName as CustName,
  B.CustName as CustName 2, A.City
  from Customers A, Customers B
  where A.CustID <> B.CustID
  and A.City = B.City
  order by A.City;

Subquery
  Select empid, name, salary
  from employee
  where salary > (Select max(salary) from employee where name='Alisha');

  update company
  set salary = salary * 0.50
  where age in
  (select age from company_bkp where age >=27);

Independent Subquery

Correlated Subquery

Transaction Management
  * Begin
  * Savepoint
  * Commit
  * rollback

Indexes
  * Create index
  * Explain

Views
  * Create view

*/

select eid, ename, salary, d.dept_id, dept_name from employee e full outer join department d on e.dept_id = d.dept_id order by eid;
select eid, ename, salary, d.dept_id, dept_name from employee e left outer join department d on e.dept_id = d.dept_id order by eid;
select eid, ename, salary, d.dept_id, dept_name from employee e right outer join department d on e.dept_id = d.dept_id order by eid;

select d.eid as eid, d.ename as ename, d.salary as salary, d.dept_id as dept_id
from employee d, employee e
where d.eid <> e.eid
and d.dept_id = e.dept_id
order by d.eid;

select d.eid as eid, d.ename as ename, d.salary as salary, d.dept_id as dept_id
from employee d, employee e
where d.eid = e.eid
and d.dept_id%2=0
order by d.eid;

select eid, ename, salary, dept_id
from employee
where salary > (select avg(salary)
                from employee);

select eid, ename, salary, dept_id
from employee e
where salary >= (select avg(salary)
                from employee
                where dept_id = e.dept_id)
order by dept_id;

begin;
select * from employee;
delete from employee where eid = 2000176;
select * from employee;
rollback;
select * from employee;
explain select * from department;
create index depts on department(dept_name);
explain select * from department where dept_id=4;
drop index depts;

create view empl as
    select ename, eid
    from employee
    where salary > 100000;

select * from empl;

delete from employee where ename = 'gf';

insert into empl values ('dhfh', 2742734);

select * from empl;

drop view empl;

create table testarray(
    m_numbers text[],
    ename text);

insert into testarray values (array ['4374', '473', 'dhf'], 'Ashu');

select * from testarray;