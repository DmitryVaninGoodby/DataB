CREATE TABLE Orders
(
	ID INT NOT NULL
	    CONSTRAINT PK_Orders
        PRIMARY KEY
	,CustomerID INT FOREIGN KEY REFERENCES [Customers] (ID)
	,ProductID INT FOREIGN KEY REFERENCES [Products] (ID)
	,[Value] INT NOT NULL
	,OrderCost MONEY NOT NULL
	,DateOrder DATE NOT NULL
	,IndOrd INT
)
