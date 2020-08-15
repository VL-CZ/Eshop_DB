-- pøidá do databáze novou objednávku s jedním produktem (ID zákazníka a produktu dostane v parametrech)
CREATE PROCEDURE AddNewOrderWithOneItem
	@idCustomer INT,
	@idProduct INT
AS
INSERT INTO [Order](Status,Date,IdCustomer) -- vložení hodnot do tabulky objednávek
VALUES 
('New',GETDATE(),@idCustomer);

INSERT INTO ProductOrder(IdOrder,IdProduct) -- vložení hodnot do vazební tabulky
VALUES 
(SCOPE_IDENTITY(),@idProduct);