# Sources de données 

## Saint-Lô Agglo 

![Saint-Lô Agglo](img/saint-lo-agglo.jpg)

[saint-lo-agglo.fr](https://www.saint-lo-agglo.fr/fr/annuaire-g%C3%A9n%C3%A9ral/carte)

La belle ville de Saint-Lo se trouve en Normandie, dans le département de la Manche.


# 🗂 Sources de Données



### - 📄 Données papiers



<br>

# 🗺 
## Données SIG — Internes

<br>

### - PLUi

<br>

### - Données brutes terrains

| Format    |
| -----------|
| `AutoCAD` |
| `.shp`    |
| `.gpkg`   |
| `papier`  |

<br>

### - Base de données PostgreSQL

| Table / Vue       |
| -------------------|
| `troncon_eau`     |
| `compteurs`       |
| `vm_alerte_fuite` |

<br>

---

<br>

## 🌐 Données SIG — Externes

| Source            | Format     |
| -------------------| ------------|
| BD Ortho IGN      | WMS / WMTS |
| BD Topo IGN       | WMS / WMTS |
| Cadastre          | bdd        |
| Données Régie Eau | csv        |

<br>


<br> 


<html>
<head>
  <meta charset="utf-8">
  <title>Carte ortho IGN</title>

  <!-- Leaflet CSS -->
  <link
    rel="stylesheet"
    href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
  />
  <style>
    #map {
      width: 100%;
      height: 500px;
    }
  </style>
</head>
<body>

<h2>Saint-Lô Agglo</h2>
<div id="map"></div>

<!-- Leaflet JS -->
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

<script>
  // Création de la carte centrée sur Saint Lo
  var map = L.map("map").setView([49.1175, -1.0914], 13);

  // Couche Plan IGN (WMTS ouvert)
//   L.tileLayer(
//     "https://data.geopf.fr/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0" +
//       "&TILEMATRIXSET=PM&LAYER=GEOGRAPHICALGRIDSYSTEMS.PLANIGNV2" +
//       "&STYLE=normal&FORMAT=image/png" +
//       "&TILECOL={x}&TILEROW={y}&TILEMATRIX={z}",
//     {
//       maxZoom: 18,
//       attribution: "© IGN - Géoportail",
//       tileSize: 256,
//     }
//   ).addTo(map);

  L.tileLayer(
    "https://data.geopf.fr/wmts?SERVICE=WMTS&REQUEST=GetTile&VERSION=1.0.0" +
      "&TILEMATRIXSET=PM&LAYER=ORTHOIMAGERY.ORTHOPHOTOS" +
      "&STYLE=normal&FORMAT=image/jpeg" +
      "&TILECOL={x}&TILEROW={y}&TILEMATRIX={z}",
    {
      maxZoom: 18,
      attribution: "© IGN - Géoportail",
      tileSize: 256,
    }
  ).addTo(map);

</script>

</body>
</html>

