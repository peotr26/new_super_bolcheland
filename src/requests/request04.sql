SELECT Attractions.ID, Attractions.Affectations, Employes.Nom
FROM Attractions
JOIN Affectation_attraction, Employes
ON (Affectation_attraction.ID_attraction = Attractions.ID AND Affectation_attraction.ID_employe = Employes.ID)
WHERE (Affectation_attraction.Date = "2023-9-23" AND Affectation_attraction.Horaires = "15:00:00");