CREATE PROC INSERTFactories (@FactoryName NVARCHAR(100), @WorkPrice MONEY)
AS
DECLARE @ID INT
SELECT @ID = MAX(f.ID)
FROM [Factories] f
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [Factories] (ID, FactoryName, WorkPrice)
		VALUES (@ID, @FactoryName, @WorkPrice)
END