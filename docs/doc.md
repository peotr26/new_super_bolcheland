# New Super Bolcheland

## Introduction

Nous aurons les tables:

- Clients
- Employes
- Billets
- Restaurants
- Affectation_restaurant
- Menus
- Acheter_menu
- Attractions
- Affectation_attraction

### Clients

Clients(<ins>ID</ins>, Nom, Age)

|   Clients   |
|-------------|
| ID |
| Nom |
| Age |

### Employes

Employes(<ins>ID</ins>, Nom, Prenom, Date_naissance, Role, Salaire_horaire, Heures_hebdomadaires)

|   Employes   |
|--------------|
| ID |
| Nom |
| Prenom |
| Date_naissance | 
| Role |
| Salaire_horaire |
| Heures_hebdomadaires |

### Billets

Billets(<ins>ID</ins>, #ID_client, Prix_billet, Enfant)

|   Billets   |
|-------------|
| ID |
| ID_client |
| Prix |
| Enfant |

### Restaurants

Restaurants(<ins>ID</ins>, Nom, Places)

|   Restaurants  |
|----------------|
| ID |
| Nom |
| Places |

### Affectation_restaurant

Affectation_restaurant(#<ins>ID_restaurant</ins>, #<ins>ID_employe</ins>, Date, Horaires, Duree)

|   Affectation_restaurant   |
|----------------------------|
| ID_restaurant |
| ID_employe |
| Date |
| Horaires |
| Duree |

### Menus

Menus(<ins>ID</ins>, Nom, Prix)

|   Menus   |
|-----------|
| ID |
| Nom |
| Prix |

### Acheter menu

Acheter_menu(#<in>ID_restaurant</ins>, #<ins>ID_client</ins>, #<ins>ID_menu</ins>, Quantite)

|   Acheter menu   |
|------------------|
| ID_restaurant |
| ID_client |
| ID_menu |
| Quantite |

### Attractions

Attractions(<ins>ID</ins>, Places, Affectations, Cout_horaire)

|   Attractions   |
|-----------------|
| ID |
| Places |
| Affectations |
| Cout_horaire |

### Affectation attraction

Affectation_attraction(#<ins>ID_attraction</ins>, #<ins>ID_employe</ins>, Date, Horaires, Duree)

|   Affectation_attraction   |
|----------------------------|
| ID_attraction |
| ID_employe |
| Date |
| Horaires |
| Duree |

## Schémas

### Schéma Entité-Association

![Schéma Entité-Association](assets/scheme_EA.svg)

### Schéma relationnel

![Schéma relationnel](assets/scheme_relationnel.svg)
