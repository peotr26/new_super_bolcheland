SELECT DISTINCT Restaurants.ID, Restaurants.nom, Employes.Nom, Employes.Prenom, Employes.Role
FROM Restaurants
JOIN Affectation_restaurant, Employes
ON Employes.Role = 'Cuisinier'
AND Restaurants.ID = 1;
