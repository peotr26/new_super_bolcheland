-- # Tous les menus commandés ordonnés alphabétiquement

SELECT DISTINCT
	Menus.Nom
FROM
	Menus

JOIN
	Acheter_menu, Restaurants
ON
	Acheter_menu.ID_menu = Menus.ID
AND
	Restaurants.ID = Acheter_menu.ID_restaurant
-- AND
-- 	Restaurants.Nom = "Moskva"


ORDER BY
	Menus.Nom ASC;

