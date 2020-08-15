-- vyber produkty s minimální cenou
SELECT * FROM Product p
WHERE p.Price = (SELECT MIN(p1.Price) FROM Product p1)