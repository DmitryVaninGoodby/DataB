Create Table Orders
(
	ID Int Not Null,
	CustomerID INT FOREIGN KEY REFERENCES [Customers] (ID),
	ProductID INT FOREIGN KEY REFERENCES [Products] (ID),
	[Value] Int Not Null,
	OrderCost Float Not Null,
	DateOrder Datetime Not Null,
	IndOrd Int
)
