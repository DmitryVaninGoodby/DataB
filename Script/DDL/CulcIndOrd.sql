CREATE FUNCTION CulcIndOrder (@FurnitureType NVARCHAR(100),
@MaterialName NVARCHAR(100), @FactoryName NVARCHAR(100))
RETURNS TABLE AS
RETURN(
		SELECT 
				f.FurnitureType
				,m.MaterialName
				,fac.FactoryName
				,f.FurnitureCost * m.MaterialPrice + f.FurnitureCost * fac.WorkPrice AS 'Цена без наценки'
				,o.OrderCost AS 'Цена с наценкой'
				,(((o.OrderCost - ((m.MaterialPrice * f.FurnitureCost) + (fac.WorkPrice * f.FurnitureCost))) / ((m.MaterialPrice * f.FurnitureCost) + (fac.WorkPrice * f.FurnitureCost))) * 100)    AS 'Наценка за индивидуальный проект в процентах'
				FROM Orders AS o
					JOIN Products AS p
					ON o.ProductID = p.ID
						JOIN Furniture AS f
						ON p.FurnitureID = f.ID
							JOIN Materials AS m
							ON p.MaterialID = m.ID
								JOIN Factories AS fac
								ON p.FactoryID = fac.ID
								WHERE IndOrd = 1
								AND @FurnitureType = f.FurnitureType 
								AND @MaterialName = m.MaterialName 
								AND @FactoryName = fac.FactoryName);