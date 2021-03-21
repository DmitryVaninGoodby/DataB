ALTER TABLE Orders
ADD CONSTRAINT CH_Orders_Value
CHECK ([Value] >= 1);
