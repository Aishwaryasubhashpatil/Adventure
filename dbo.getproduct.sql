SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[getproduct]
as
select p.firstname,p.lastname,hr.gender,hr.nationalidnumber,hr.jobtitle from Person.Person p
inner join HumanResources.Employee hr on p.BusinessEntityID =hr.BusinessEntityID
GO
