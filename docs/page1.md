## Prérequis
### activer / instraller wsl
```bash
wsl --install

wsl --list 

```

### installer git
```bash
sudo apt update
sudo apt install git
```



### créer un repository sur github
- aller sur github.com
- cliquer sur "New repository"
- donner un nom au repo
- cocher "Add a README file"
- cliquer sur "Create repository"



### possibilité de cloner le repository
```bash
git clone https://github.com/votre-utilisateur/votre-repo.git
```

### initialisation du repository
```bash
sudo git init
```

### premier commit
```bash
sudo git commit -m "premier commit"
```

### premier push
```bash
sudo git push -u origin main
```

### configuration git, retenir les mots de passe
```bash
sudo git config --global credential.helper store
```