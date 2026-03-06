# VRT
<br>

Comment charger des donnnées tabulaires dans une base de données Postgres ? et en même temps pouvoir continuer a modifier le tableau.

Possibilité d'utiliser :
- PowerQuery, 

  PowerQuery est un langage de requête de données utilisé dans le moteur de requête de données Power Query pour Excel. Il permet de transformer et de nettoyer des données provenant de différentes sources,  CSV, bases de données relationnelles, API, etc. Dans le contexte de la création de bases de données PostgreSQL, PowerQuery peut être utilisé pour extraire et transformer des données à partir de sources de données tabulaires, puis les charger dans une base de données PostgreSQL.

- Modeleur QGIS

- FME

- ou **VRT** (non lisible avec ESRI)

Le VRT permet de créer une vu et de continuer a travailler sur le tableau sans perdre les données.

Pour l'utiliser, il faut un accés aux librairies **GDAL** et **OGR**.

  https://gdal.org/

  GDAL et OGR sont respectivement des librairies opensource pour les Raster et les Vecteurs.
  Ils prennent en charge la majorités des formats de données geographiques.

  voir : https://gdal.org/en/stable/drivers/vector/vrt.html

possibilité de générer un VRT avec l'extension spreadsheets layer sur Qgis.
  ou via ogr2vrt_simple en python https://pypi.org/project/ogr2vrt-simple/

commande ogrinfo pour voir les données d'un ( ou autre format)

```bash
ogrinfo -so -al "chemin/vers/votre/.vrt"
```

<br>
 NB: il est possible de lire une donnée .zip directement avec vsizip

 ```bash
 ogrinfo -so -al "vsizip/chemin/vers/votre/.zip/chemin/vers/votre/vrt"
 ```

Pour avoir un apercu de la donnée :
```bash
ogr2ogr -f CSV /visitdout/chemin/vers/votre/.csv head 
```

<br>
Installer GDAL
```bash
sudo apt install gdal-bin
```

<br>
cloner le dossier github en ligne de commande 

```bash
idgeo@GS2:/mnt/d/git git clone https://github.com/tristanvachaudez/formation_VRT.git
```

bash
idgeo@GS2:/mnt/d/git/formation_VRT/samples$


commande pour voir les données

```bash
 ogrinfo -so -al poly.vrt
```

cat pour voir le contenu du fichier
head pour voir les 10 premiers lignes

