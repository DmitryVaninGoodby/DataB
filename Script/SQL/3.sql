--3.Показывать список сделанных заказов за отчетный период времени.
DECLARE @D VARCHAR(50) = '2020-01-02'
DECLARE @DT DATE = CONVERT(DATE, @D, 104)
DECLARE @DA VARCHAR(50) = '2020-29-02'
DECLARE @DATI DATE = CONVERT(DATE, @DA, 104)
SELECT * 
FROM Orders
WHERE
DateOrder BETWEEN @DT AND @DATI;
