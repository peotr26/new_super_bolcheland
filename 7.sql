SELECT Employes.ID, Employes.Nom, Attractions.ID
FROM Employes
JOIN Attractions
WHERE Attractions.Affectations = Employes.ID