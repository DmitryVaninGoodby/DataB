CREATE PROC INSERTFurniture (@FurnitureType NVARCHAR(100), @FurnitureCost MONEY)
AS
DECLARE @ID INT
SELECT @ID = MAX(fr.ID)
FROM [Furniture] fr
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [Furniture] (ID, FurnitureType, FurnitureCost)
		VALUES (@ID, @FurnitureType, @FurnitureCost)
END