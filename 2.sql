SELECT Clients.ID, Clients.Nom, Acheter_menu.Quantite
FROM Clients
JOIN Acheter_menu
WHERE Clients.ID = Acheter_menu.ID_client
ORDER BY Clients.ID ;