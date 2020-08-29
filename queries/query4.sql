-- vyber všechny kategorie s průměrnou cenou produktů alespoň 750 Kč
SELECT c.* FROM Category c
INNER JOIN Product p
ON c.Id = p.IdCategory
GROUP BY c.Id, c.Name
HAVING AVG(p.Price) >= 750