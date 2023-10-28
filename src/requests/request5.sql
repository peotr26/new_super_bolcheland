SELECT DISTINCT Employes.Nom, Employes.Heures_par_semaine, Employes.Salaire_horaire
FROM Employes
JOIN Affectation_restaurant, Restaurants
ON (Affectation_restaurant.ID_employe = Employes.ID AND Affectation_restaurant.ID_restaurant = Restaurants.ID)
WHERE Restaurants.Nom = "Leningrad"
ORDER BY Employes.Salaire_horaire DESC;