SELECT DISTINCT Menus.Nom, Menus.Prix
FROM Menus
JOIN Acheter_menu, Restaurants
ON (Acheter_menu.ID_menu = Menus.ID AND Acheter_menu.ID_restaurant = Restaurants.ID)
WHERE Restaurants.Nom = "Stalingrad";