CREATE PROC INSERTMaterials (@MaterialName NVARCHAR(100), @MaterialPrice MONEY)
AS
DECLARE @ID INT
SELECT @ID = MAX(m.ID)
FROM [Materials] m
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [Materials] (ID, MaterialName, MaterialPrice)
		VALUES (@ID, @MaterialName, @MaterialPrice)
END