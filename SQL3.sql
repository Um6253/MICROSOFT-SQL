use SAMPLE_DB;
select * from emp2;
ALTER TABLE emp2 add empage int ;
update emp2 set empage =33 where depid=412;
select empname,sum(empsalary) from emp2 group by empname having e;
SELECT empname,SUM(empSalary) FROM emp2 GROUP BY empname HAVING empname='Nani Uppu';
select * from emp2;