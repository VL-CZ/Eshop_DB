-- vyber všechny produkty, které si nikdo nekoupil (tzn. nejsou v žádné objednávce)
SELECT * FROM Product p 
WHERE NOT EXISTS
(SELECT * FROM ProductOrder po WHERE po.IdProduct = p.Id)