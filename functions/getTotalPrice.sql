-- funkce getTotalPrice(idOrder) spoète a vrátí celkovou cenu objednávky (má 1 parametr - ID objednávky)
CREATE FUNCTION GetTotalPrice(
	@idOrder INT
) RETURNS INT
AS
BEGIN
	DECLARE @total INT;

	SELECT @total=SUM(Price) FROM
	(	
		SELECT p.Price FROM [Order] o -- poddotaz vybere ceny jednotlivych produktu v objednavce
		INNER JOIN ProductOrder po
		ON o.Id = po.IdOrder
		INNER JOIN Product p
		ON p.Id = po.IdProduct
		WHERE o.Id=@idOrder	
	) AS ProductPrices;

	RETURN @total;
END

-- USAGE:
-- SELECT o.Id, dbo.GetTotalPrice(o.Id) AS 'Total price' 
-- FROM [Order] o