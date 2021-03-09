ALTER TABLE Orders
ADD CONSTRAINT check_zero_discount
CHECK (IndOrd >= 0);
