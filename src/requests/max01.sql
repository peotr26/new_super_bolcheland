-- # Clients les plus gourmands — Jointure

SELECT
	Clients.Nom AS "Client",
	Menus.Nom AS "Menu"
FROM
	Clients,
	Menus

JOIN
	Acheter_menu
ON
	Clients.ID = Acheter_menu.ID_client
AND
	Menus.ID = Acheter_menu.ID_menu

WHERE
	Acheter_menu.Quantite >= 3

ORDER BY
	Acheter_menu.Quantite DESC;
