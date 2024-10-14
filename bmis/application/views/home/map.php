<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Choropleth Map - Municipality of Balagtas</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <style>
        #map { width: 800px; height: 500px; }
        .info { padding: 6px 8px; background: white; background: rgba(255, 255, 255, 0.8); box-shadow: 0 0 15px rgba(0, 0, 0, 0.2); border-radius: 5px; }
        .info h4 { margin: 0 0 5px; color: #777; }
        .legend { text-align: left; line-height: 18px; color: #555; }
        .legend i { width: 18px; height: 18px; float: left; margin-right: 8px; opacity: 0.7; }
    </style>
</head>
<body>
<h1 class="text-center" style="color: white;">Map of Balagtas - Borol 1st  </h1>
    <center> <div id="map"></div> </center>

    <!-- Include Leaflet JS -->
    <<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

    <script>
        // Inline GeoJSON data for Balagtas
        var geojsonData = {
            "type": "Feature",
            "properties": {
                "id": 1108696803,
                "name": "Balagtas",
                "population": 10780,
                "area": 3266280.684759,
                "bbox": [120.900856, 14.82874, 120.920547, 14.852973]
            },
            "geometry": {
                "type": "Polygon",
                "coordinates": [
                    [
                        [120.919696, 14.848163],
                        [120.920547, 14.84689],
                        [120.911081, 14.830046],
                        [120.911034, 14.830032],
                        [120.904655, 14.82874],
                        [120.900856, 14.83862],
                        [120.909014, 14.852973],
                        [120.919696, 14.848163]
                        
                    ]
                ]
            }
        };

        // Create the map and set the initial view
        var map = L.map('map').setView([14.841197, 120.909841], 14);

        // Add OpenStreetMap tiles
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a>',
            maxZoom: 19
        }).addTo(map);

        // Define a function to color the map based on population
        function getColor(d) {
            return d > 90000 ? '#800026' :
                   d > 50000  ? '#BD0026' :
                   d > 20000  ? '#E31A1C' :
                   d > 10000  ? '#FC4E2A' :
                                '#FFEDA0';
        }

        // Define style for the GeoJSON feature
        function style(feature) {
            return {
                fillColor: getColor(feature.properties.population),
                weight: 2,
                opacity: 1,
                color: 'white',
                dashArray: '3',
                fillOpacity: 0.7
            };
        }

        // Highlight feature on hover
        function highlightFeature(e) {
            var layer = e.target;
            layer.setStyle({
                weight: 5,
                color: '#666',
                dashArray: '',
                fillOpacity: 0.7
            });
            info.update(layer.feature.properties);
        }

        // Reset the highlight after hover
        function resetHighlight(e) {
            geojson.resetStyle(e.target);
            info.update();
        }

        // Zoom to feature on click
        function zoomToFeature(e) {
            map.fitBounds(e.target.getBounds());
        }

        // Add interactivity to each feature
        function onEachFeature(feature, layer) {
            layer.on({
                mouseover: highlightFeature,
                mouseout: resetHighlight,
                click: zoomToFeature
            });
        }

        // Add the GeoJSON layer to the map
        var geojson = L.geoJson(geojsonData, {
            style: style,
            onEachFeature: onEachFeature
        }).addTo(map);

        // Add an info control to display feature properties
        var info = L.control();
        info.onAdd = function (map) {
            this._div = L.DomUtil.create('div', 'info');
            this.update();
            return this._div;
        };
        info.update = function (props) {
            this._div.innerHTML = '<h4>Borol 1st, Balagtas, Bulacan</h4>' + (props ?
                '<b>' + props.name + '</b><br />Population: ' + props.population + '<br />Area: ' + props.area + ' sqm' :
                'Hover over an area');
        };
        info.addTo(map);

        // Add a legend control to explain the color scheme
        var legend = L.control({ position: 'bottomright' });
        legend.onAdd = function (map) {
            var div = L.DomUtil.create('div', 'info legend'),
                grades = [10000, 20000, 50000, 90000],
                labels = [],
                from, to;
            for (var i = 0; i < grades.length; i++) {
                from = grades[i];
                to = grades[i + 1];
                labels.push(
                    '<i style="background:' + getColor(from + 1) + '"></i> ' +
                    from + (to ? '&ndash;' + to : '+'));
            }
            div.innerHTML = labels.join('<br>');
            return div;
        };
        legend.addTo(map);
    </script>
</body>
</html>
