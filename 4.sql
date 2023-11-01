SELECT DISTINCT Restaurants.ID, Restaurants.Nom, Menus.ID, Billets.Enfant
FROM Restaurants
JOIN Menus, Billets
WHERE menus.ID = 1
ORDER BY Billets.Enfant DESC;