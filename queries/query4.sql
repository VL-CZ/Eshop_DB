-- vyber všechny kategorie, které obsahují aspoň 1 produkt s cenou alespoň 1000 Kč
SELECT c.* FROM Category c
INNER JOIN Product p
ON c.Id = p.IdCategory
GROUP BY c.Id, c.Name
HAVING MAX(p.Price) >= 1000