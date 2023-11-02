SELECT Restaurants.Nom, COUNT(Clients.Age), MIN(Clients.Age), AVG(Clients.Age), MAX(Clients.Age)
FROM Restaurants
JOIN Acheter_menu, Clients
ON (Acheter_menu.ID_client = Clients.ID AND Acheter_menu.ID_restaurant = Restaurants.ID)
WHERE Restaurants.Nom = "Moskva";