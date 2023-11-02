SELECT Clients.ID, Clients.Nom, Restaurants.Nom
FROM Clients
JOIN Acheter_menu, Menus, Restaurants
ON (Acheter_menu.ID_client = Clients.ID AND Acheter_menu.ID_menu = Menus.ID AND Acheter_menu.ID_restaurant = Restaurants.ID)
WHERE Menus.Nom = "Le Chicken nuggie";