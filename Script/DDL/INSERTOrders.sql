CREATE PROC INSERTOrders (@CustomerID INT, @DateOrder DATE, @Value INT, @OrderCost MONEY, @ProductID INT, @IndOrd INT)
AS
DECLARE @ID INT
SELECT @ID = MAX(o.ID)
FROM [Orders] o
IF @ID IS NULL SET @ID = 1
ELSE SET @ID = @ID + 1

BEGIN
		INSERT INTO [Orders] (ID, CustomerID, DateOrder, [Value], OrderCost, ProductID, IndOrd)
		VALUES (@ID, @CustomerID, @DateOrder, @Value, @OrderCost, @ProductID, @IndOrd)
END