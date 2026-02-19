# 🗄️ Geodatabase ESRI

Format propriétaire ESRI, types de données et administration des bases de données géospatiales.

---

## 📋 Format propriétaire ESRI

La geodatabase est le format de base de données propriétaire développé par ESRI pour stocker et gérer des données géospatiales.

---

## 🗂️ Types de Geodatabases

### 📁 Geodatabase fichier (.gdb)

- ✅ **Format .gdb** : Format de fichier natif ESRI
- ⚡ **Performance supérieure** : Possibilité de créer des index optimisés
- 🔍 **Indexation avancée** : Index spatiaux et attributaires performants

### 🏢 Geodatabase entreprise

- 👥 **Limitée à 100 utilisateurs simultanés**
- 🔐 **Gestion centralisée** : Administration multi-utilisateurs
- 📊 **Scalabilité** : Adaptée aux organisations

### 📱 Geodatabase mobile

- 💾 **Base SQLite** : Fondée sur la technologie SQLite
- 📏 **Capacité maximale** : 2To de stockage
- 🌐 **Usage mobile** : Optimisée pour les applications de terrain

---

## 📊 Types de données dans les GDB

Les geodatabases supportent trois principaux types de données géospatiales :

| Type de données | Description | Exemples |
|-----------------|-------------|----------|
| 📍 **Classes d'entités** | Lignes, polygones, points | Routes, bâtiments, points d'intérêt |
| 🗺️ **Jeux de données raster** | Données matricielles | Photos aériennes, MNT, images satellite |
| 📋 **Tables** | Données attributaires | Informations descriptives, métadonnées |

---

## 🔐 Niveaux d'accès ArcGIS

ArcGIS propose différents niveaux d'options qui déterminent les fonctionnalités accessibles selon le type de licence.

!!! warning "Administration requise"
    Il est nécessaire de créer deux types d'administrateurs :
    
    - 👨‍💼 **Administrateurs de base de données** : Gestion PostgreSQL/Oracle
    - 🗄️ **Administrateurs de geodatabase** : Compte SDE par défaut

---

## ⚙️ Configuration et paramètres

### 📝 Fichier DBTUNE

**DBTUNE** est le fichier de paramètres de stockage avec des mots-clés de configuration.

```bash
# Exemple de configuration DBTUNE
DEFAULTS
GEOMETRY_STORAGE "SDE_BINARY"
B_STORAGE "PCTFREE 0 INITRANS 4"
```

### 🔄 Interopérabilité avec QGIS

!!! success "Pour l'interopérabilité des géométries avec QGIS"
    Il faut lors de la création d'un schéma modifier la géométrie :
    
    ```
    SDE_BINARY → POSTGIS_GEOMETRY
    ```

---

## 👥 Gestion des utilisateurs et permissions

### 🔨 Qui peut créer une GDB entreprise ?

- 🐘 **PostgreSQL** : Administrateur de la base
- 👤 **SDE** : Compte administrateur geodatabase

### 👥 Qui peut créer des utilisateurs de BD ?

- 🔑 **Connexion SDE** : Seul le compte SDE peut créer des utilisateurs

!!! warning "Bonnes pratiques pour le compte SDE"
    - ✅ **Peut créer des données** : Oui, techniquement possible
    - 🚫 **Ne devrait pas créer de données** : Pour pouvoir administrer efficacement
    - 🏗️ **Éviter les silos** : Maintenir une séparation claire des rôles

---

## 🌐 Interopérabilité des données

!!! success "Comment assurer l'interopérabilité ?"
    **En intégrant dans la base des données avec la géométrie PostGIS**
    
    - 🔄 **Conversion automatique** : SDE_BINARY vers POSTGIS_GEOMETRY
    - 🌍 **Accès multi-plateformes** : QGIS, ArcGIS, applications web
    - 📡 **Standards ouverts** : Respect des normes OGC

---

## 🔧 Configuration des connexions

### 📋 Fichiers de configuration

**Quel fichier permet de déterminer le nombre de connexions ?**

- 📄 **pg_hba.conf** : Configuration des accès hôtes
- ⚙️ **postgresql.conf** : Paramètres du serveur PostgreSQL

```bash
# Exemple postgresql.conf
max_connections = 100
shared_buffers = 256MB
```

---

## 🎯 Résumé des points clés

!!! info "Points essentiels à retenir"
    - 🏗️ **Architecture** : GDB fichier, entreprise, mobile
    - 📊 **Types de données** : Entités, raster, tables
    - 🔐 **Administration** : DB admin + SDE admin
    - 🔄 **Interopérabilité** : POSTGIS_GEOMETRY pour QGIS
    - ⚙️ **Configuration** : DBTUNE + fichiers PostgreSQL
