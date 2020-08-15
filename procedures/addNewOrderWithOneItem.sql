-- p�id� do datab�ze novou objedn�vku s jedn�m produktem (ID z�kazn�ka a produktu dostane v parametrech)
CREATE PROCEDURE AddNewOrderWithOneItem
	@idCustomer INT,
	@idProduct INT
AS
INSERT INTO [Order](Status,Date,IdCustomer) -- vlo�en� hodnot do tabulky objedn�vek
VALUES 
('New',GETDATE(),@idCustomer);

INSERT INTO ProductOrder(IdOrder,IdProduct) -- vlo�en� hodnot do vazebn� tabulky
VALUES 
(SCOPE_IDENTITY(),@idProduct);