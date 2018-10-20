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

select *
from Employee 
where Title = 'Sales Support Agent'

select BillingCountry 
from Invoice
Group by BillingCountry

select 
	FullName = e.FirstName + ' ' + e.LastName
from Invoice as i,
	Customer as c,
	Employee as e
where c.SupportRepId = e.EmployeeId 
	and i.CustomerId = c.CustomerId
group by e.FirstName + ' ' + e.LastName;

select 
	i.Total,
	CustomerFullName = c.FirstName + ' ' + c.LastName,
	EmployeeFullName = e.FirstName + ' ' + e.LastName,
	c.Country
from invoice as i,
	customer as c,
	employee as e
where c.CustomerId = i.CustomerId
	and e.EmployeeId = c.SupportRepId
	
select Count(*) 
from Invoice
where Year(InvoiceDate) = 2009
or Year(InvoiceDate) = 2011

select Sum(i.Total) as Total2009, (Select Sum(i.Total) from Invoice as i where Year(i.InvoiceDate) = 2011) as Total2011
from Invoice as i
where Year(i.InvoiceDate) = 2009

