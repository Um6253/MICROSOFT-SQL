use SAMPLE_DB;
select * from emp2;

Alter table emp2 Add age int NOT NULL default 31;
alter table emp2 drop constraint  DF__emp2__columnage__6E01572D;
alter table emp2 drop column empage;
alter table emp2 drop constraint DF__emp2__age__6EF57B66;
alter table emp2 alter column empname varchar(30);
alter table emp2 alter column empname char(30);
select empid as 'employ id', depid as 'departmwnt id',empname as'employ name' from emp2;
create table emp
(
  empid varchar (50) primary key,
empname varchar(60)not null,
empsalary decimal(10,2),
depid integer
);
alter table emp drop constraint PK__emp__AF4CE865A3594E02;
alter table emp alter column depid varchar(10);
insert into emp values(111,'mani',100000,'d1');
insert into emp values(112,'nani',150000,'d2');
insert into emp values(113,'mom',200000,'d3');
insert into emp values(114,'dad',250000,'d1');
insert into emp values(115,'mohan',300000,'d2');
insert into emp values(116,'vidya',350000,'d3');
insert into emp values(116,'ammu',350000,'d3');
select * from emp;
select * from dep;
create table dep(depid varchar(10),depname varchar(20),deploc varchar(30));
insert into dep values('d1','dev','hyd');
insert into dep values('d2','test','mumbai');
insert into dep values('d3','data','chennai');
insert into dep values('d5','data','hyd');
insert into dep values('d2','data1','hyd');

select e.empid,e.empname,e.empsalary,d.depid,d.deploc from 
emp e inner join dep d on e.depid=d.depid;
select e.empid,e.empname,e.empsalary,d.depid,d.deploc from 
emp e left outer join dep d on e.depid=d.depid;

select e.empid,e.depid,.empname,e.empsalary,d.depid,d.deploc from 
emp e right outer join dep d on e.depid=d.depid;
select e.empid,e.empname,e.empsalary,d.depid,d.deploc from 
emp e full outer join dep d on e.depid=d.depid;

select e.empid,e.empname,e.depid,e.empsalary,f.empid,f.empname,f.empsalary from 
emp e,emp f where e.empid<>f.empid and e.depid=f.depid order by e.depid;
select * from emp;

select empname,empsalary from emp where empsalary >
(select empsalary from emp where empname='nani');
select empname,empsalary from emp where empsalary >
(select empsalary from emp where empname='nani')
and depid =(select depid from emp where empname='mom'); 
select empname,empsalary from emp where depid=(select depid from dep  where deploc='hyd');
Declare @name varchar(30),@age int;
select @name='mani';
select @name;
select @name='nani';
select @age=22
select @name as Name ,@age;
declare @num int;
select @num =10;
select @num;
select @num +=100;
select @num;
select @num *=1000;
select @num;
select @num -=1000;
select @num;
select * from emp;
Declare @namee varchar(30),@depid varchar(10);
select @namee=empname,@depid=depid from emp;
select @namee,@depid;