--4.Рассчитывать стоимость заказа клиента по индивидуальному проекту.
SELECT 
		p.ID
		,f.FurnitureType AS Мебель
		,f.FurnitureCost AS Коэффициент_по_изготовлению_данной_мебели
		,m.MaterialName AS Материал
		,m.MaterialPrice AS Цена_материала
		,fac.FactoryName AS Производитель
		,fac.WorkPrice AS Цена_изготовления
		,((((m.MaterialPrice * f.FurnitureCost) + (fac.WorkPrice * f.FurnitureCost)) / p.ProductCost) * 100) AS Наценка_за_индивидуальный_проект_в_процентах
		,p.ProductCost AS Окончательная_цена
		FROM Orders AS o
			JOIN Products AS p
			ON o.ProductID = p.ID
				JOIN Furniture AS f
				ON p.FurnitureID = f.ID
					JOIN Materials AS m
					ON p.MaterialID = m.ID
						JOIN Factoryes AS fac
						ON p.FactoryID = fac.ID
WHERE IndOrd = 1;
