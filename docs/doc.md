# New Super Bolcheland

## Introduction

Nous aurons les tables:

- Clients
- Employes
- Billets
- Restaurants
- Menus
- Acheter_menu
- Attractions
- Affectation_attraction

### Clients

Primary key : ID_client

|   Clients   |
|-------------|
| ID_client |
| Nom |
| Age |

### Employes

Primary key : ID_employe

|   Employes   |
|--------------|
| ID_employe |
| Nom|
| Prenom |
| Date_naissance | 
| Role |
| Salaire_par_heure |
| Nb_heure_par_semaine |

### Billets

Primary key : ID_billet  
Foreign key : ID_client

|   Billets   |
|-------------|
| ID_billet |
| ID_client |
| Prix_billet |
| Billet_enfant |

### Restaurants

Primary key : ID_restaurant  
Foreign key : ID_employe

|   Restaurants  |
|----------------|
| ID_restaurant |
| ID_employe |
| Nom_restaurant |
| Nb_place |

### Affectation_restaurant

Primary keys : ID_restaurant ; ID_employe  
Foreign keys : ID_restaurant ; ID_employe

|   Affectation_restaurant   |
|----------------------------|
| ID_restaurant |
| ID_employe |
| Date |
| Horaire_debut |
| Duree |

### Menus

Primary key : ID_menu

|   Menus   |
|-----------|
| ID_menu |
| Nom_menu |
| Prix_menu |

### Acheter menu

Primary keys : ID_restaurant ; ID_client ; ID_menu  
Foreign keys : ID_restaurant ; ID_client ; ID_menu

|   Acheter menu   |
|------------------|
| ID_restaurant |
| ID_client |
| ID_menu |
| Nb_menu |

### Attractions

Primary key : ID_attraction

|   Attractions   |
|-----------------|
| ID_attraction |
| Nb_place |
| Nb_personnel |
| Cout_par_heure |

### Affectation attraction

Primary keys : ID_attraction ; ID_employe  
Foreign keys : ID_attraction ; ID_employe

|   Affectation_attraction   |
|----------------------------|
| ID_attraction |
| ID_employe |
| Date |
| Horaire_debut |
| Duree |
