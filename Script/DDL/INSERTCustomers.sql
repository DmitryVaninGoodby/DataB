CREATE PROC INSERTCustomers (@CustomerName NVARCHAR(100))
AS
DECLARE @ID INT
SELECT @ID = MAX(c.ID)
FROM [Customers] c
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [Customers] (ID, CustomerName)
		VALUES (@ID, @CustomerName)
END