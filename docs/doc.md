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

Cette table contient les clients. Elle stocke l'identifiant du client, son nom de famille et son âge.

Clients(<ins>ID</ins>, Nom, Age)

| Clients |
| ------- |
| ID      |
| Nom     |
| Age     |

### Employes

Cette table contient les employés. Elle stocke l'identifiant de l'employé, son nom et prénom, mais aussi sa date de naissance et son rôle au sein du parc d'attraction. Elle contient aussi le salaire à l'heure (salaire_horaire) et le nombre d'heures de travail par semaine (heures_hebdomadaires).

Employes(<ins>ID</ins>, Nom, Prenom, Date_naissance, Role, Salaire_horaire, Heures_hebdomadaires)

| Employes             |
| -------------------- |
| ID                   |
| Nom                  |
| Prenom               |
| Date_naissance       |
| Role                 |
| Salaire_horaire      |
| Heures_hebdomadaires |

### Billets

Cette table contient les billets d'entrée du parc. Elle stocke l'identifiant du billet, l'identifiant du client qui est lié au billet (pas forcément celui qui l'a acheté), ainsi que son prix et si le billet est un billet enfant ou non (enfant).

Billets(<ins>ID</ins>, #ID_client, Prix_billet, Enfant)

| Billets   |
| --------- |
| ID        |
| ID_client |
| Prix      |
| Enfant    |

### Restaurants

Cette table contient les restaurants du parc. Elle stocke l'identifiant du restaurant, son nom et le nombre de places pour les clients.

Restaurants(<ins>ID</ins>, Nom, Places)

| Restaurants |
| ----------- |
| ID          |
| Nom         |
| Places      |

### Affectation_restaurant

Cette table associe un employé à un restaurant. Elle stocke les identifiants du restaurant et de l'employé, la date auquel l'employé travaillera dans le restaurant ainsi l'horaire du début et la durée.

Affectation_restaurant(#<ins>ID_restaurant</ins>, #<ins>ID_employe</ins>, Date, Horaires, Duree)

| Affectation_restaurant |
| ---------------------- |
| ID_restaurant          |
| ID_employe             |
| Date                   |
| Horaires               |
| Duree                  |

### Menus

Cette table contient les menus disponibles dans les restaurants du parc. Elle stocke leur identifiant, leur nom et leur prix.  
Les menus sont universels, ils sont disponibles dans tous les différents restaurants.

Menus(<ins>ID</ins>, Nom, Prix)

| Menus |
| ----- |
| ID    |
| Nom   |
| Prix  |

### Acheter_menu

Cette table associe un restaurant et un menu à un client. Elle stocke les identifiants du restaurant, du client et du menu, ainsi que le nombre de menus (quantité).

Acheter_menu(#<in>ID_restaurant</ins>, #<ins>ID_client</ins>, #<ins>ID_menu</ins>, Quantite)

| Acheter_menu  |
| ------------- |
| ID_restaurant |
| ID_client     |
| ID_menu       |
| Quantite      |

### Attractions

Cette table contient les attractions du parc. Elle stocke leur identifiant, leur nombre de places, leur nombre d'employés nécessaire à son fonctionnement (affectations), et le coût de l'attraction par heure (cout_horaire).

Attractions(<ins>ID</ins>, Places, Affectations, Cout_horaire)

| Attractions  |
| ------------ |
| ID           |
| Places       |
| Affectations |
| Cout_horaire |

### Affectation_attraction

Cette table associe un employé à une attraction. Elle stocke les identifiants de l'attraction et de l'employé, la date auquel l'employé travaillera à l'attraction ainsi l'horaire du début et la durée.

Affectation_attraction(#<ins>ID_attraction</ins>, #<ins>ID_employe</ins>, Date, Horaires, Duree)

| Affectation_attraction |
| ---------------------- |
| ID_attraction          |
| ID_employe             |
| Date                   |
| Horaires               |
| Duree                  |

## Schémas

### Schéma Entité-Association

![Schéma Entité-Association](assets/scheme_EA.svg)

### Schéma relationnel

![Schéma relationnel](assets/scheme_relationnel.svg)
