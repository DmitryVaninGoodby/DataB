CREATE TABLE Furniture
(
	ID INT NOT NULL
	    CONSTRAINT PK_Furniture
        PRIMARY KEY
	,FurnitureType NVARCHAR(100) NOT NULL
		CONSTRAINT UN_Furniture_FurnitureType
        UNIQUE
	,FurnitureCost MONEY NOT NULL
)
