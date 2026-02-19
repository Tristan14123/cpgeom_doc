# Qualité

ISO 19157 qualité  (2013)
ISO 19115,19139 métadonnées

## Interopérabilité des données.
Non obligatoire mais très recommandé
*voir format EDIGEO pour le cadastre

Définition des standards, exemple PLUI

Voir : Consigne de saisie des métadonnées INSPIRE .
 
# INSPIRE =
directive européenne , création des portails de téléchargement.

qualité des métadonnées = qualité du remplissage des données.


19157 normalise et donne les méthodes et critéres de remplissage de la donnée.

qualité interne: mise en place des contrôles sur la donnée produite en interne en interne pour atteindre les données optimale

géoportail contrôles fait en WGS84


Qualité externe = est ce que la donnée externe répond au besoins 

Se référer à des données référentielles, exemple sur geoservice.ign, dataset rge, …

Remplir la généalogie de la donnée.

## Les critères de qualité:
- Exhaustivité
- Qualité temporelle
- cohérence logique
- Précision thématique
- Précision de position

## Les mesures, les méthodes d’évaluations, le résultat.
Méthode d'échantillonnage: nombre d’objets, surface couverte, emplacement.

## stratégies : déterministe, probabiliste ou expert.
lot de données doit être homogène, avec un process de prod constant, causes de non-conformité constante.
 selection aleatoire dans qgis 
point régulier dans qgis pour semi-aléatoire ou créer une grille + filtre sur la grille (“id” %5 =0) puis selection par localisation.

STARTIFIE = sélection aléatoire parmis des sous-ensemble pour faire un échantillon par champ(ou critère)  

Traitement / modeleur graphique pour automatiser 

## Exhaustivité : 
vérifier excédents et omissions par rapport à des données de références.
tx d’ exhaustivité =
(Nb d’ omissions + nb d'excès) / base à auditer


différence symétrique pour enlever les mauvaise géométries 

## Cohérence temporelle:
exactitude, cohérence, validité 

## cohérence logique: 
conceptuelle selon le schéma (mcd), valeur, format, topologique.



 Calcul épaisseur, compacité.

## Précision thématique :
justesse de classement : matrice relative de classement erroné + tx de classement erroné
 et d’attributs : tx de valeur correct


## Mettre en place des validateurs et des chaînes de traitements.







