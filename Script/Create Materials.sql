CREATE TABLE Materials
(
	ID INT NOT NULL,
	MaterialName NVARCHAR(100) NOT NULL,
	MaterialPrice MONEY NOT NULL,
	MaterialCountry NVARCHAR(100) NOT NULL,
	MaterialStatusImport INT NOT NULL,
	PRIMARY KEY (ID)
)
