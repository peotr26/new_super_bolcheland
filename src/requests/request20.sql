-- # Toutes les commandes des menus entre 42 et 120 roubles, non commandés à Kiev ni Moscou, ainsi que le client correspondant

SELECT
	Clients.Nom AS "Client",
	Menus.Prix,
	Restaurants.Nom AS "Restaurant"
FROM
	Clients,
	Menus,
	Restaurants
-- 	Acheter_menu

JOIN
	Acheter_menu
ON
	Menus.ID = Acheter_menu.ID_menu
AND
	Clients.ID = Acheter_menu.ID_client
AND
	Restaurants.ID = Acheter_menu.ID_restaurant

WHERE
	NOT Menus.Prix BETWEEN 42 AND 120
AND
	Restaurants.ID IN (4,3)

ORDER BY
	Menus.Prix DESC;

-- GROUP BY
-- 	Clients.Nom
