SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[findemployee] @businessEntityID[int]
AS
Begin
 SET NOCOUNT ON;
 SELECT NationalIDNumber,LoginID,JobTitle,HireDate FROM HumanResources.Employee
 WHERE BusinessEntityID=@businessEntityID
 End
GO
