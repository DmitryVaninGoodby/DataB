CREATE TRIGGER Safety   
ON DATABASE   
FOR DROP_TABLE, ALTER_TABLE   
AS   
   PRINT 'Вы должны отключить "безопасность" триггера, чтобы удалять или изменять таблицы!'   
   ROLLBACK;  