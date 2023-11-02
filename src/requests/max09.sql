-- # Tous les clients ayant commandé des Blinis Russes ou Le Chiken Nuggie

SELECT DISTINCT
	Clients.Nom, Menus.Nom
FROM
	Clients, Acheter_menu, Menus

WHERE
	Clients.ID = Acheter_menu.ID_client
AND
	Menus.ID = Acheter_menu.ID_menu
AND
	Menus.ID IN (7,3)


