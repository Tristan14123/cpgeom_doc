# 📋 Prérequis Techniques

Configuration initiale de l'environnement de développement pour la géomatique.

---

## 🐧 Activer / Installer WSL

Pour commencer, nous allons installer le Sous-système Windows pour Linux (WSL) qui vous permettra d'utiliser un environnement Linux directement sur Windows.

```bash
wsl --install

wsl --list
```

!!! info "Note importante"
    Après l'installation, redémarrez votre ordinateur et suivez les instructions pour configurer votre distribution Linux préférée (Ubuntu est recommandée).

---

## 🔧 Installer Git

Une fois WSL installé, ouvrez votre terminal Linux et installez Git pour le contrôle de version.

```bash
sudo apt update
sudo apt install git
```

!!! success "Configuration recommandée"
    Après l'installation, configurez votre identité Git :
    
    ```bash
    git config --global user.name "Votre Nom"
    git config --global user.email "votre.email@example.com"
    ```

---

## 🚀 Créer un repository sur GitHub

Suivez ces étapes pour créer votre premier repository GitHub :

1. **Allez sur github.com** et connectez-vous à votre compte (ou créez-en un si nécessaire).
2. **Cliquez sur "New repository"** dans le menu déroulant en haut à droite.
3. **Donnez un nom au repo** (par exemple : "cpgeom_doc").
4. **Cocher "Add a README file"** pour initialiser votre repository avec un fichier de description.
5. **Cliquez sur "Create repository"** pour finaliser la création.

---

## 📥 Possibilité de cloner le repository

Une fois votre repository créé sur GitHub, vous pouvez le cloner localement pour commencer à travailler :

```bash
git clone https://github.com/votre-utilisateur/votre-repo.git
```

!!! warning "Important"
    Remplacez `votre-utilisateur` et `votre-repo` par vos véritables nom d'utilisateur et nom de repository GitHub.

---

## 🎉 Prochaines étapes

Félicitations ! Vous avez maintenant configuré votre environnement de développement. Voici les commandes Git essentielles :

### 🚀 Initialisation du repository
```bash
git init
```

### 📤 Premier push
```bash
git push -u origin main
```

### 🔐 Configuration Git - retenir les mots de passe
```bash
git config --global credential.helper store
```

!!! tip "Astuce"
    Avec cette configuration, Git mémorisera vos identifiants GitHub pour éviter de les saisir à chaque push.

---

## ✅ Récapitulatif des compétences acquises

- 🐧 **Utiliser WSL** pour un environnement Linux performant
- 🌐 **Gérer vos versions** avec Git
- 🤝 **Collaborer** via GitHub

## Lancer son git
### Activer le mode venv 
```bash
source .venv/bin/activate
```

Résumé
```bash
git status # liste 
git add . # ajoute
git commit -m "mise à jour" #maj
git push -u main #lancement maj
```

possibilité d'installer un theme material et de lancer directement :
```bash
mkdocs gh-deploy
```

Ce qu'il fait :
```bash
INFO    -  Cleaning site directory
INFO    -  Building documentation
INFO    -  Copying '/site' to 'gh-pages'
INFO    -  Pushing to GitHub
```

Possibilité de tout faire d'un coup :
```bash
git add . && git commit -m "update" && git push && mkdocs gh-deploy
```