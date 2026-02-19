# 🗺️ Sources de Données

Les sources de données en géomatique : références et données à créer.

---

## 📊 Types de données

### 🎯 Données de référence
- **Intégrité conservée** : Ne doivent pas être tronquées
- **Fiabilité** : Servent de base pour les autres données
- **Stabilité** : Mises à jour contrôlées

### 🛠️ Données à créer (à calibrer)
- **Calibration nécessaire** : Alignement sur les références
- **Mise à jour continue** : Évolution temporelle
- **Validation requise** : Contrôle qualité essentiel

---

## 🔗 Tables distantes

!!! note "Possibilité technique"
    Les tables distantes permettent d'accéder à des données sans duplication locale.

---

## 🛰️ SPOT - Satellite Pour l'Observation de la Terre

### Accès WMS via QGIS
- **Source IGN** : Connexion directe depuis QGIS
- **Données satellitaires** : Imagerie à haute résolution
- **Mise à jour régulière** : Nouvelles acquisitions programmées

---

## 🗺️ Référentiel IGN BDTOPO

### Caractéristiques
- **Base de données topographique** : Précision centimétrique
- **Couverture nationale** : Ensemble du territoire français
- **Mise à jour continue** : Actualisations trimestrielles

---

## 🏢 IGN - Projets IA

### Projets principaux
- **COSIA** : Classification optimisée des surfaces
- **OCSGE** : Occupation des sols à grande échelle
- **CRAHAB** : Cartographie du résidentiel
- **LIDARHD** : Modèles 3D haute densité
- **GEO K PHYTO** : Données phytoécologiques
- **BD FORÊT** : Base de données forestière
- **BD HAIE** : Réseau linéaire de haies

---

## 📋 Bonnes pratiques

### Gestion des données de référence
!!! warning "Règle d'or"
    Une donnée de référence doit conserver son intégrité, il ne faut pas la tronquer.

### Intégration des données IGN
1. **Vérifier la compatibilité** : Systèmes de projection
2. **Valider la qualité** : Contrôle des attributs
3. **Documenter les sources** : Métadonnées complètes

---

## 🔗 Ressources externes

- **IGN** : [https://www.ign.fr/](https://www.ign.fr/)
- **Géoportail** : [https://www.geoportail.gouv.fr/](https://www.geoportail.gouv.fr/)
- **Data Gouv** : [https://www.data.gouv.fr/](https://www.data.gouv.fr/)
