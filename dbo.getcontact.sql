SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[getcontact]
AS
SELECT p.firstname,p.LastName,e.jobtitle,e.BirthDate FROM Person.Person p
--INNER JOIN person.BusinessEntityContact b ON p.BusinessEntityID=b.BusinessEntityID
INNER JOIN HumanResources.Employee e ON p.BusinessEntityID=e.BusinessEntityID
GO
