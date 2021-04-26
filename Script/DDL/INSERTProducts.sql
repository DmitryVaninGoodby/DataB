CREATE PROC INSERTProducts (@FurnitureID INT, @ProductCost MONEY, @MaterialID INT, @FactoryID INT)
AS
DECLARE @ID INT
SELECT @ID = MAX(p.ID)
FROM [Products] p
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [Products] (ID, FurnitureID, ProductCost, MaterialID, FactoryID)
		VALUES (@ID, @FurnitureID, @ProductCost, @MaterialID, @FactoryID)
END