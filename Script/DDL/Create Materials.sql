CREATE TABLE Materials
(
	ID INT NOT NULL
	    CONSTRAINT PK_Materials
        PRIMARY KEY
	,MaterialName NVARCHAR(100) NOT NULL
		CONSTRAINT UN_Materials_MaterialName
        UNIQUE
	,MaterialPrice MONEY NOT NULL
)
