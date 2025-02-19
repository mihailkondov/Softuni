/*
	7. SoftUni Design

Create an E/R Diagram of the SoftUni Database. 
There are some special relations you should check out:
	• Employees are self-referenced (ManagerID) 
	• Departments have One-to-One with the Employees (ManagerID)
	• Employees have One-to-Many (DepartmentID)
You might find it interesting how it looks on the diagram. 
*/

-- Solution:
/*

			__Employees__			__Addresses__				__Towns__
	+---+-> EmployeeID  <---+	+-> AddressID			+----->	TownID
	|	|	FirstName		|	|	AddressText			|		Name
	|	|	LastName		|	|	TownID		  o-----+
	|	|	MiddleName		|	|								__Projects__
	|	|	JobTitle		|	|	__EmployeesProjects__	+->	ProjectID
+---+---+-> DepartmentID	+---+-o	EmployeeID				|	Name
|	|   +-o	ManagerID			|	ProjectID	  o---------+	Description
|	|		HireDate			|								StartDate
|	|		Salary				|								EndDate
|	|		AddressID	o-------+
|	|
|	|		__Departments__
+---+-----o DepartmentID
	|		Name
	+-----o ManagerID


*/
