-- # Menus les plus populaires

SELECT DISTINCT
	Menus.Nom, SUM(Acheter_menu.Quantite) AS "# Commandes"
FROM
	Menus, Acheter_menu

-- JOIN
-- 	Acheter_menu
-- ON
-- 	Menus.ID = Acheter_menu.ID_menu

WHERE
	Acheter_menu.ID_menu = Menus.ID
	
GROUP BY
	Menus.ID

ORDER BY
	"# Commandes" DESC


