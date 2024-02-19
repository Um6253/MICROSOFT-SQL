use SAMPLE_DB;
select * from emp2;

Alter table emp2 Add age int NOT NULL default 31;
alter table emp2 drop constraint  DF__emp2__columnage__6E01572D;
alter table emp2 drop column empage;
alter table emp2 drop constraint DF__emp2__age__6EF57B66;
