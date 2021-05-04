CREATE FUNCTION CulcTotalPrice (@FurnitureType NVARCHAR(100),
@MaterialName NVARCHAR(100), @FactoryName NVARCHAR(100))
RETURNS MONEY
BEGIN
		DECLARE @TotalPrice MONEY 
		SELECT 
			@TotalPrice = f.FurnitureCost * m.MaterialPrice + f.FurnitureCost * fac.WorkPrice
			FROM Products AS p
				JOIN Furniture AS f
				ON p.FurnitureID = f.ID
					JOIN Materials AS m
					ON p.MaterialID = m.ID
						JOIN Factories AS fac
						ON p.FactoryID = fac.ID
						WHERE @FurnitureType = f.FurnitureType 
						AND @MaterialName = m.MaterialName 
						AND @FactoryName = fac.FactoryName

RETURN @TotalPrice
END;