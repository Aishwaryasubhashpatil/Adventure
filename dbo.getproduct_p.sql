SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[getproduct_p]
@gender nvarchar(20) 
as
begin
declare  @vacation int
declare @sickleave int
set @vacation =(select count(1) from HumanResources.Employee where HumanResources.Employee.VacationHours='10') 
set @sickleave=(select count(1) from HumanResources.Employee where HumanResources.Employee.SickLeaveHours='10') 
select p.firstname,p.lastname,hr.gender,hr.nationalidnumber,hr.jobtitle from Person.Person p
inner join HumanResources.Employee hr on p.BusinessEntityID =hr.BusinessEntityID
where hr.Gender=@gender 
if @vacation >5
begin
print 'vacation hours are greater than 5';
end
else
print 'vacation is not greater than 5';
end
GO
