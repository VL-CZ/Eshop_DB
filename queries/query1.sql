-- vyber název a cenu všech dostupných produktů společně s názvem kategorie, do které patří
-- seřazené primárně podle ceny produktu vzestupně a poté podle jména produktu (také vzestupně)
SELECT c.Name AS 'Category', p.Name AS 'Product Name', p.Price 
FROM Product p
INNER JOIN Category c
ON c.Id = p.IdCategory
WHERE p.Available=1
ORDER BY p.Price, p.Name