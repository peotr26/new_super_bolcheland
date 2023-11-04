SELECT DISTINCT Clients.ID, Clients.nom, Acheter_menu.Quantite
FROM Clients
JOIN Acheter_menu
ON Clients.ID = Acheter_menu.ID_client 
WHERE Quantite > 1
ORDER BY Quantite DESC;
