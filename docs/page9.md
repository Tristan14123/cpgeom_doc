<span style="font-size:32px;color:green">**Administrer son serveur de base de données**</span>

**Objectif:**

### 1. Adminsitration 
MPD model physique de données
MCD model conceptuel de données
MAD model administratif de données

les composants d'une bdd: 
- le modele
- Le schéma
- les données
- les applications (clients)
- les utilisateurs (roles)
- requetes
- indexes 

Composants SG
- Architecture
- Réseau
- CPU
- RAM
- Stockage

systeme d'exploitation du serveur
Postgres +  depot Debian /Ubuntu linux 
et un ``.exe`` windows

Une base de dev et une base de production a prendre en consideratipon pour le dimenssionnement .

### 2. Création d'une BDD

Etablir les caractéristique de la base:
qu'est-ce que vous voulez ?

Evaluation du materiel serveur <br>
  Quantité, prévision de charge, nb d'utilisateurs

Installation et création
Un groupe de bdd peutetre aussi appelé un **cluster** 

Différents type de sauvegardes:
- dump
- script 

L'enregistrement des transactions est stocké  dans les journaux de transactions **WAL**

Optimisation dela performance avec **pgTune**


### 3. Archictecture et arborescenece

```
C:\Program Files\PostgreSQL\17\data\base
```

pg_hba.conf= fichier de configuration des accès

La base créer automatiquement un utilisateur system "trust" :
```bash
# METHOD can be "trust", "reject", "md5", "password", "scram-sha-256",
# "gss", "sspi", "ident", "peer", "pam", "ldap", "radius" or "cert".
# Note that "password" sends passwords in clear text; "md5" or
# "scram-sha-256" are preferred since they send encrypted passwords.
```

```
sudo cp /etc/postgresql/16/main/pg_hba.conf  /etc/postgresql/16/main/pg_hba_ini.conf
```

```
sudo apt install postgresql
```

Aller dans la base :
```bash
sudo ls -la /var/lib/postgresql/16/main/base/5
```
Se connecter a une base postgreSQL
```bash
psql -h 192.168.10.1 -p 15432 -U editeur -d spiderman
```

``\q`` pour se deconnecter

pour la base local:
``psql postgres postgres -p 5432``

```
postgres=# create database geobase;
CREATE DATABASE
```

```
postgres=# \c geobase
You are now connected to database "geobase" as user "postgres".
```
en dehors de la base :
``sudo apt install postgis``
puis
``create extension postgis;``

dossier de log de toutes les applications dans linux
/var/log

Voir les commandes en cours sur le serveur psql:
```bash
tail -f -n 100 /var/log/postgresql/postgresql-15-main.log
```

copier le fichier postgresql.conf
```bash
sudo cp /etc/postgresql/16/main/postgresql.conf  /etc/postgresql/16/main/postgresql_ini.conf
```

- Utilisation de  [**pgtune :**](https://pgtune.leopard.in.ua/) pour configurer

  - DB version
  - OS Type
  - Db Type
  - RAM
  - CPU
  - Nb connections 
  - Data storage
  - 
- Modifier le fichier conf:

sudo nano /etc/postgresql/16/main/postgresql.conf

- Relancer la conf:

  sudo systemctl reload postgresql.service

  sudo systemctl status postgresql.service

### 4. Focus sur les Tablespace

Base de données
   → tables
      → fichiers
         → dans un tablespace
            → dans un dossier du disque

Créer le tablespace dans srv:
sudo mkdir -p tablespace
sudo chown postgres:postgres tablespace

créer la tablespace dans postgres
```sql
create tablespace mine owner postgres location '/srv/tablespace';
```

```sql
alter database geobase set tablespace mine;
```

VACUUM

possibilité de lancer un script sql entier depuis le srv

#### Sauvegarde :
``PGDUMP``
format personnalisé .backup ou .dump

créer le dump:
pg_dump -f rugby_sauv.sql -d rugby_top -U postgres > idgeo_locale


restorer
psql -d idgeo_locale -U postgres < rugby_sauv.sql


pg_dump -f sauv_bdd_auto.sql -U postgres -d idgeo_locale

chmod a+x script_sauv_bdd.sh

crontab -e puis modifier l'heure en bas 

une fois dans la base :
```lister les base = \l
lister les tables = \dt
lister les shéma = \dn
\q sortir de la base 
```

### 5. Le role du DBA (database administrator)
Possibilité de créer des roles et des groupes
role = user
group 
La fonction inherit permet à un user d'hériter des droits d'un groupe

### 6. Manipulation diverses

**Foreign Data Wrapper** permet de connecter des données externes (comme des fichiers ou des services web) directement dans PostgreSQL.

```sql
CREATE SERVER fdw_ogr_inpn_metropole
FOREIGN DATA WRAPPER ogr_fdw  OPTIONS (datasource 'WFS:http://ws.carmencarto.fr/WFS/119/fxx_inpn?',format 'WFS');
create schema if not exists inpn_metrolole;
IMPORT FOREIGN SCHEMA ogr_all
FROM SERVER fdw_ogr_inpn_metropole INTO inpn_metropole OPTIONS (launder_table_names 'true',launder_column_names 'true');
```