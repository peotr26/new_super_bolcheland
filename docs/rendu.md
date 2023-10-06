# New Super Bolcheland

## Introduction

Nous aurons les tables:

- Clients
- Employés
- Billets
- Restaurants
- Menus
- Acheter menu
- Attractions
- Affectation_attraction

### Clients

Primary key : Id_client

|   Clients   |
|-------------|
| Id_client |
| Nom |
| Age |

### Employés

Primary key : Id_employé

|   Employés   |
|--------------|
| Id_employé |
| Nom|
| Prénom |
| Date_naissance | 
| Role |
| Salaire_par_heure |
| Nb_heure_par_semaine |

### Billets

Primary key : Id_billet  
Foreign key : Id_client

|   Billets   |
|-------------|
| Id_billet |
| Id_client |
| Prix_billet |
| Billet_enfant |

### Restaurants

Primary key : Id_restaurant  
Foreign key : Id_employé

|   Restaurants  |
|----------------|
| Id_restaurant |
| Id_employé |
| Nom_restaurant |
| Nb_place |

### Menus

Primary key : Id_menu

|   Menus   |
|-----------|
| Id_menu |
| Nom_menu |
| Prix_menu |

### Acheter menu

Primary keys : Id_restaurant ; Id_client ; Id_menu  
Foreign keys : Id_restaurant ; Id_client ; Id_menu

|   Acheter menu   |
|------------------|
| Id_restaurant |
| Id_client |
| Id_menu |
| Nb_menu |

### Attractions

Primary key : Id_attraction

|   Attractions   |
|-----------------|
| Id_attraction |
| Nb_place |
| Nb_personnel |
| Cout_par_heure |

### Affectation attraction

Primary keys : Id_attraction ; Id_employé  
Foreign keys : Id_attraction ; Id_employé

|   Affectation_attraction   |
|----------------------------|
| Id_attraction |
| Id_employé |
| Date |
| Horaire_debut |
| Durée |
