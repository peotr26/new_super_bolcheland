-- # Recettes les moins profitables

-- Wait why the hell are LIMITs a thing if this is meant to adopt Oracle conventions ???
-- Seems like SQLite is a bundle of whatever standards it wished to include.


SELECT
	Menus.Nom, SUM(Menus.Prix*Acheter_menu.Quantite) AS "Recettes [₽]"
FROM
	Menus, Acheter_menu

WHERE
	Acheter_menu.ID_menu = Menus.ID

-- JOIN
-- 	Acheter_menu
-- ON
-- 	Acheter_menu.ID_menu = Menus.ID

-- AND
-- 	Menus.Prix

GROUP BY
	Menus.ID

ORDER BY
	"Recettes [₽]" ASC

LIMIT
	5;

-- Why not ??
-- LIMIT
-- 	count(Menus.ID) * (1/2)
