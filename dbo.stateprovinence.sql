SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE procedure [dbo].[stateprovinence]
as
select p.firstname ,p.lastname,pb.businessentityid from person.Person p 
inner join person.BusinessEntity pb on p.BusinessEntityID=pb.BusinessEntityID
GO
