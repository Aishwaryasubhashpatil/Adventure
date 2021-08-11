SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[getproduct_pa]
@gender nvarchar(20) ,@idnum int
as
begin
select p.firstname,p.lastname,hr.gender,hr.nationalidnumber,hr.jobtitle,hr.OrganizationLevel from Person.Person p
inner join HumanResources.Employee hr on p.BusinessEntityID =hr.BusinessEntityID
where hr.Gender=@gender and hr.OrganizationLevel=@idnum
end
GO
