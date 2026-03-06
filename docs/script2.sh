#!/bin/bash

#- telecharger la BDALTI 25m dans le dossier mnt (format .zip) 
wget -p https://data.geopf.fr/telechargement/download/BDALTI/BDALTIV2_2-0_25M_ASC_LAMB93-IGN69_D014_2022-12-21/BDALTIV2_2-0_25M_ASC_LAMB93-IGN69_D014_2022-12-21.7z

#- decompresser le fichier
7z x data.geopf.fr/telechargement/download/BDALTI/BDALTIV2_2-0_25M_ASC_LAMB93-IGN69_D014_2022-12-21

#-mettre au format tif
gdal_merge.py -o mnt/calvados.tif BDALTIV2_2-0_25M_ASC_LAMB93-IGN69_D009_2023-10-04/BDALTIV2/1_DONN
EES_LIVRAISON_2024-02-00018/BDALTIV2_MNT_25M_ASC_LAMB93_IGN69_D009/*.asc

ogr2ogr -f "ESRI Shapefile" calvados/calvados.shp -s_srs EPSG:4326 -t_srs EPSG:2154 WFS:https://data.geopf.fr/wfs/ows?SERVICE=WFS BDTOPO_V3:departement -where "code_insee='14'"

#- créer un VRT avec *asc
gdalbuildvrt -overwrite -srcnodata -99999 mnt/calvados.vrt mnt/calvados.tif

#- découpe du VRT avec source WFS (attention à l'EPSG)
gdalwarp -s_srs EPSG:2154 -t_srs EPSG:2154 -of VRT -cutline calvados/calvados.shp -cl calvados -cwhere "code_insee='14'" -crop_to_cutline mnt/calvados.vrt mnt/calvados_decoup.vrt

#- créer un vecteur de courbe de niveau dans un dossier shape
gdal_contour -a elev mnt/calvados_decoup.vrt calvados/calvados.shp -i 5

#- ombrage
gdaldem hillshade mnt/calvados_decoup.vrt mnt/ombrage14.tif

#- color relief
gdaldem color-relief mnt/calvados_decoup.vrt color.txt mnt/relief_color14.tif
