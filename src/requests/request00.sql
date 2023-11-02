SELECT Prenom, Nom, Role
FROM Employes
JOIN Affectation_attraction, Attractions
ON (Affectation_attraction.ID_employe = Employes.ID AND Affectation_attraction.ID_attraction = Attractions.ID)
WHERE Attractions.Cout_horaire = 175;