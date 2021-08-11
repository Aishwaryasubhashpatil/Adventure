SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[uspGetContact] @LastName NVARCHAR(50) 
AS 
DECLARE @ContactID INT 
SELECT TOP 1 @ContactID = c.BusinessEntityID
FROM HumanResources.Employee a  
INNER JOIN HumanResources.Employee b ON a.BusinessEntityID = b.BusinessEntityID
INNER JOIN Person.Person c ON a.BusinessEntityID = c.BusinessEntityID
WHERE c.LastName = @LastName 

IF @@ROWCOUNT > 0 
BEGIN 
   SELECT BusinessEntityID, FirstName, LastName 
   FROM Person.Person 
   WHERE BusinessEntityID = @ContactID 
    
   SELECT a.NationalIDNumber,a.gender,c.FirstName,c.LastName,a.BirthDate
   FROM HumanResources.Employee a  
   INNER JOIN HumanResources.EmployeeDepartmentHistory b ON a.BusinessEntityID = b.BusinessEntityID
   INNER JOIN Person.person c ON a.BusinessEntityID = c.BusinessEntityID

   WHERE c.BusinessEntityID = @ContactID 
END 
ELSE 
BEGIN 
   RAISERROR ('No record found',10,1) 
END
GO
