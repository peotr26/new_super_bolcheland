SELECT AVG(Employes.Salaire_horaire), AVG(Employes.Heures_par_semaine)
FROM Employes
JOIN Affectation_attraction, Attractions
ON (Affectation_attraction.ID_attraction = Attractions.ID AND Affectation_attraction.ID_employe = Employes.ID)
WHERE Attractions.ID = 4;
