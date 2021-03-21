CREATE TABLE Factories
(
	ID INT NOT NULL
		CONSTRAINT PK_Factories
        PRIMARY KEY
	,FactoryName NVARCHAR(100) NOT NULL
		CONSTRAINT UN_Factories_FactoryName
        UNIQUE
	,WorkPrice MONEY NOT NULL
)