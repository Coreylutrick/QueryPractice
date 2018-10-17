select  
	FullName = FirstName + ' ' + LastName,
	CustomerId,
	Country 
from Customer
where Country != 'USA'

select *
from Customer
where Country = 'Brazil'

select 
	InvoiceId,
	BillingCountry,
	FullName = FirstName + ' ' + LastName,
	InvoiceDate,
	c.CustomerId
from Invoice as i,
	Customer as c
where c.Country = 'Brazil'
	and i.CustomerId = c.CustomerId



