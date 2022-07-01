- Structure de projet: 
Nom: TestIloo
Technologies: 
       - FrontOffice: - Symfony 5 
                      - webpack encore pour gerer les fichier css et js nécessaires
                      - KnpPaginator Bundle utilisé pour la pagination
                      - fakerZaninotto pour charger les faux données
        - Back Office: - EasyAdminBundle : 3.5


Pour lancer le projet

- Frontoffice: localhost:8000
    - Les liens dans les menu (Chanteur et Chansons) sont tous opérationnels
    - dans la page Chanteurs il y une recherche par nom et prénom est opérationnel
    - dans la page Chansons il y une recherche par titre et chanteur est en opérationnel
- BackOffice: localhost:8000/admin
   - La partie Authentification ne marche pas encore mais la gestion des chansons avec chanteur est opérationnel

BDD:
- Le fichier test_iloo.sql pour charger les données sur la base.

           