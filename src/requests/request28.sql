-- # Clients les plus gourmands — Conditions

-- JOIN doesn't allow for data from the joined table to be selected ?
-- Perhaps through a UNION, but that would probably involve JOINing twice back to back with the same condition
-- Therefore JOINs are inferior to WHEREs in that regard

SELECT
	Clients.Nom AS "Client",
	Menus.Nom AS "Menu",
	Acheter_menu.Quantite AS "x"
FROM
	Clients,
	Menus,
	Acheter_menu

WHERE
	Acheter_menu.Quantite >= 3
AND
	Clients.ID = Acheter_menu.ID_client
AND
	Acheter_menu.ID_menu = Menus.ID

--UNION

ORDER BY
	Acheter_menu.Quantite DESC;
