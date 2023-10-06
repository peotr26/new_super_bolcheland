# New Super Bolcheland

## Introduction

On aura tables:

- Clients
- Employés
- Billets
- Restaurants
- Menus
- Acheter menu
- Attraction
- Affectation attraction

### Clients

Primary key : Numéro client

|   Clients   |
|-------------|
| Numéro de client |
| Nom |
| Age |

### Employés

Primary key : Numéro d'employé

|   Employés   |
|--------------|
| Numéro d'employé |
| Nom|
| Prénom |
| Date de naissance | 
| Rôle |
| Salaire à l'heure |
| Nombre d'heure de travail par semaine |

### Billets

Primary key : Numéro de billet  
Foreign key : Numéro de client

|   Billets   |
|-------------|
| Numéro de billet |
| Numéro de client |
| Prix du billet |
| Billet enfant |

### Restaurants

Primary key : Numéro restaurant
Foreign key : Numéro employé

|   Restaurants  |
|----------------|
| Numéro restaurant |
| Numéro employé |
| Nom de restaurant |
| Nombre de place |

### Menus

Primary key : Numéro de menu

|   Menus   |
|-----------|
| Numéro de menu |
| Nom du menu |
| Prix du menu |

### Acheter menu

Primary keys : Numéro restaurant ; Numéro de client ; Numéro de menu  
Foreign keys : Numéro restaurant ; Numéro de client ; Numéro de menu

|   Acheter menu   |
|------------------|
| Numéro restaurant |
| Numéro de client |
| Numéro de menu |
| Nombre |

### Attractions

Primary key : Numéro d'attraction

|   Attractions   |
|-----------------|
| Numéro attraction |
| Nombre de place |
| Nombre de personnel |
| Coût à l'heure |

### Affectation attraction

Primary keys : Numéro attraction ; Numéro d'employé  
Foreign keys : Numéro attraction ; Numéro d'employé

|   Affectation attraction   |
|----------------------------|
| Numéro attraction |
| Numéro d'employé |
| Date |
| Horaire de début |
| Durée |
