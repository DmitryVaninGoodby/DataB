--Создание таблицы «Фабрики»:
CREATE TABLE Factories
(
	ID Int Not Null,
	FactoryName Varchar(100) Not Null,
WorkPrice Float not null,
	Primary Key(ID)
)
--Создание таблицы «Материалы»:
Create Table Materials
(
	ID Int Not Null,
	MaterialName Varchar(100) Not Null,
	MaterialPrice Float not null,
	Primary Key (ID)
)
--Создание таблицы «Мебель (Фурнитура)»:
Create Table Furniture
(
	ID Int Not Null,
	FurnitureType Varchar(100) Not Null,
FurnitureCost Float not null,
	Primary Key (ID)
)
--Создание таблицы «Заказчики»:
Create Table Customers
(
	ID Int Not Null,
	CustomerName Varchar(100) Not Null,
	Primary Key (ID)
)
--Создание таблицы «Товары»:
Create Table Products
(
	ID Int Not Null,
	FactoryID INT FOREIGN KEY REFERENCES [Factoryes] (ID),
	MaterialID INT FOREIGN KEY REFERENCES [Materials] (ID),
	FurnitureID INT FOREIGN KEY REFERENCES [Furniture] (ID),
	ProductCost Float Not Null
	Primary Key (ID)
)
--Создание таблицы «Заказы»:
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
--Создание ограничений для таблицы Заказы: − значение выбора индивидуального заказа – неотрицательное число

ALTER TABLE Orders
ADD CONSTRAINT check_zero_discount
CHECK (IndOrd >= 0);
