select * from emp;
GO
Declare @na varchar(30),@add int;
select @na='mani',@add=12345;

select @na,@add;
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