-- # Recettes de chaque restaurant

-- SQLite seems to rely on Oracle conventions, and as such MySQL exclusive features are not available. (FORMAT, CONCAT, ...)
-- Makes sense given the Java-esque look of their Browser app.
-- As such, formatting neither columns nor entries seems possible in a purely visual manner ;
-- One has to edit the data directly which leads to certain impossibilites, such as ORDERing entries to which a string was appended,
-- or calling a column by its initial name.


SELECT
	Restaurants.Nom,
-- 	count(Acheter_menu.ID_restaurant) AS "# Commandes",
	SUM(Acheter_menu.Quantite * Menus.Prix)||' [₽]' AS "Recettes"
FROM
	Restaurants,
	Acheter_menu,
	Menus

WHERE
	Acheter_menu.ID_restaurant = Restaurants.ID
AND
	Acheter_menu.ID_menu = Menus.ID

GROUP BY
	Restaurants.ID

ORDER BY
	SUM(Acheter_menu.Quantite * Menus.Prix) DESC;
