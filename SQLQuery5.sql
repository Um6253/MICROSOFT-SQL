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
	
	if @sal>2500000000
	    begin 
	       print  @sal ; 
		   end
    else
	       begin
		   print 'U r good :' ;
		   end
end

begin
	
	while(select min(empsalary) from emp) < 310000
	begin 
	declare @salary Decimal;
	select @salary=min(empsalary) from emp

	       update emp set empsalary=empsalary+1;
    
	select * from emp;
	if (select min( empsalary) from emp) >310000
		   print'happy';	   
	break
		   end
	end

 begin try

      select 1000/0 as 'Division';
	  end try
	  begin catch
	  select ERROR_LINE() as'error line',ERROR_MESSAGE() as 'megs',
	  ERROR_NUMBER() AS 'ERROR NUM',ERROR_PROCEDURE() AS 'Proced name';
	  end catch


select GETDATE() as 'current date';
Go
begin
     waitfor delay'00:00:20'
	 select * from emp;
	 select GETDATE() as 'current date';
	 end
go
begin
      waitfor time'17:11:10'
	  select * from emp;
	  select GETDATE() as 'current date';
	 end
go
