select  
	FullName = FirstName + ' ' + LastName,
	CustomerId,
	Country 
from Customer
where Country != 'USA'
