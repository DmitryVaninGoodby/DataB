--2.Показывать количество проданной мебели выбранного образца за отчётный период времени.
DECLARE @D VARCHAR(50) = '2020-01-02'
DECLARE @DT DATE = CONVERT(DATE, @D, 104)
DECLARE @DA VARCHAR(50) = '2020-29-02'
DECLARE @DATI DATE = CONVERT(DATE, @DA, 104)
SELECT 
		SUM([Value]) AS Количество_проданной_мебели
		,f.FurnitureType AS Мебель
		FROM Orders AS o
			JOIN Products AS p
			ON o.ProductID = p.ID
				JOIN Furniture AS f
				ON p.FurnitureID = f.ID
WHERE
DateOrder BETWEEN @DT AND @DATI
GROUP BY f.FurnitureType;
