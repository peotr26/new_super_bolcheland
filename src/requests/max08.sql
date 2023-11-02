-- # Nombre total de menus commandés par restaurant

SELECT
	Restaurants.Nom,
	SUM(Acheter_menu.Quantite) AS "Quantité [Menus]"
FROM
	Restaurants,
	Acheter_menu

WHERE
	Restaurants.ID = Acheter_menu.ID_restaurant

GROUP BY
	Restaurants.ID
