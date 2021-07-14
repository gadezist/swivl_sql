1
a. SELECT name, COALESCE(phone, '-') FROM `firm` LEFT JOIN phone on firm.id = firm_id GROUP BY name  (с выключенным режимом "ONLY_FULL_GROUP_BY")
b. SELECT name FROM `firm` LEFT JOIN phone on firm.id = firm_id where phone IS NULL
c. SELECT name FROM `firm` LEFT JOIN phone on firm.id = firm_id GROUP BY name HAVING COUNT(phone) > 1
d. SELECT name FROM `firm` LEFT JOIN phone on firm.id = firm_id GROUP BY name HAVING COUNT(phone) < 2
e. SELECT name FROM `firm` LEFT JOIN phone on firm.id = firm_id GROUP BY name ORDER BY phone DESC LIMIT 1

2
a.
SELECT company.name, goods.name, SUM(quantity) AS total_quantity, MAX(shipdate) AS last_date FROM company
JOIN shipment ON company.id = company_id
JOIN goods on goods.id = shipment.good_id
GROUP BY company.id, goods.id
