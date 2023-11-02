-- # Nombre de commandes par restaurant

-- SELECT Restaurants.Nom FROM Restaurants
-- UNION

SELECT
	Restaurants.Nom,
	count(Acheter_menu.ID_restaurant) AS "# Commandes"
FROM
	Restaurants,
	Acheter_menu

WHERE
	Acheter_menu.ID_restaurant = Restaurants.ID

GROUP BY
	Restaurants.ID;

-- JOIN Restaurants
-- ON ID_restaurant=Restaurants.ID

-- JOIN Acheter_menu
-- ON Acheter_menu.ID_restaurant=Restaurants.ID
