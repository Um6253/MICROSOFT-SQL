select * from emp;
GO
Declare @na varchar(30),@add int;
select @na='mani',@add=12345;

select @na,@ad
GO
select * from emp;
select * from dep;
begin
	declare @name varchar(30),@id int,@depid varchar(30)='d3';
	select @name=empname,@id=empid from emp 
	where depid=@depid;
	select @name as 'Name',@id;
	begin 
	       print 'My daughter : Ammu' + @name; 
		   end
	end

begin
	declare @sal decimal;
	select @sal=avg(empsalary) from emp;
	select @sal;
	if @sal>25000
	begin 
	       print 'My daughter : Ammu' ; 
		   end
    else
	       begin
		   print 'U r good :' ;
		   end
	end