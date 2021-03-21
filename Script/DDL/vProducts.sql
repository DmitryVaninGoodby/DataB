CREATE VIEW vProducts AS
	SELECT 
		p.ID
		,f.FurnitureType
		,f.FurnitureCost
		,m.MaterialName
		,m.MaterialPrice
		,fac.FactoryName
		,fac.WorkPrice
		,p.ProductCost
		FROM Products AS p
			JOIN Furniture AS f
			ON p.FurnitureID = f.ID
				JOIN Materials AS m
				ON p.MaterialID = m.ID
					JOIN Factoryes AS fac
					ON p.FactoryID = fac.ID;