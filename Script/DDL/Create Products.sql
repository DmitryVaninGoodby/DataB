Create Table Products
(
	ID Int Not Null,
	FactoryID INT FOREIGN KEY REFERENCES [Factoryes] (ID),
	MaterialID INT FOREIGN KEY REFERENCES [Materials] (ID),
	FurnitureID INT FOREIGN KEY REFERENCES [Furniture] (ID),
	ProductCost Float Not Null
	Primary Key (ID)
)
