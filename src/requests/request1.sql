SELECT Nom, Age
FROM Clients
JOIN Billets
ON Billets.ID_client = Clients.ID
WHERE Billets.Enfant = "True"
ORDER BY Age;