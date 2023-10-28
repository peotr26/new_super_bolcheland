SELECT DISTINCT Employes.Prenom, Employes.Nom, Employes.Role, Employes.Date_naissance
FROM Employes
JOIN Clients, Restaurants, Acheter_menu, Affectation_restaurant
ON (Acheter_menu.ID_client = Clients.ID AND Acheter_menu.ID_restaurant = Restaurants.ID AND Affectation_restaurant.ID_restaurant = Restaurants.ID AND Affectation_restaurant.ID_employe = Employes.ID)
WHERE Clients.Nom = "DUBOIS";