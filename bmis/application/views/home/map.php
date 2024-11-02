<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Choropleth Map - Municipality of Balagtas</title>
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <style>
        /* Make map responsive */
        #map {
            width: 100%; /* Full width */
            height: 500px; /* Default height */
        }
        
        /* Info box styles */
        .info {
            padding: 6px 8px;
            background: rgba(255, 255, 255, 0.8);
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            border-radius: 5px;
        }
        
        .info h4 {
            margin: 0 0 5px;
            color: #777;
        }
        
        /* Legend styling */
        .legend {
            text-align: left;
            line-height: 30px;
            color: #555;
            display: flex;
            align-items: center;
        }
        
        .legend i {
            width: 18px;
            height: 20px;
            margin-right: 8px;
            opacity: 0.7;
        }
        
        /* Trigger image styling */
        .trigger-image {
            width: 100px; /* Size of the image */
            cursor: pointer;
            margin-right: 10px;
        }
        
        /* Modal background styling */
        .modal {
            display: none;
            position: fixed;
            z-index: 1000; /* Ensure it's on top */
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            justify-content: center;
            align-items: center;
            background-color: rgba(0, 0, 0, 0.8); /* Semi-transparent background */
        }
        
        /* Modal content styling */
        .modal-content {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            width: 80%;
            max-width: 900px;
            height: 600px;
            position: relative;
           /* Glow  box-shadow: 0px 0px 50px rgba(255, 255, 255, 0.9);  */
        }
        
        /* Close button */
        .close {
            position: absolute;
            top: 10px;
            right: 20px;
            font-size: 30px;
            cursor: pointer;
            color: #000;
        }

        /* Responsive adjustments */
        @media (max-width: 768px) {
            #map {
                height: 400px; /* Smaller height for mobile */
            }
            .modal-content {
                width: 95%;
                height: 90%; /* Smaller height */
            }
        }
        
        @media (max-width: 480px) {
            #map {
                height: 300px; /* Further reduced height for small screens */
            }
            .modal-content {
                width: 100%;
                height: 85%; /* Fit smaller screens */
            }
            .trigger-image {
                width: 80px; /* Reduce size of the trigger image */
            }
        }
    </style>
</head>
<body>
    <h1 class="text-center" style="color: black;">Map of Balagtas - Borol 1st</h1>
    <center><div id="map"></div></center>

    <!-- Lightbox Modal -->
    <div id="tideModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <iframe src="https://www.tideschart.com/Philippines/Central-Luzon/Province-of-Bulacan/Balagtas/Weekly/" 
                    width="100%" height="100%" style="border:none;"></iframe>
        </div>
    </div>

    <!-- Include Leaflet JS -->
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

    <script>
        // Inline GeoJSON data for Borol 1st, Balagtas
        var geojsonData = {
            "type": "FeatureCollection",
            "features": [
                {
                    "type": "Feature",
                    "geometry": {
                        "type": "Polygon",
                        "coordinates": [
                            [
                                [120.9169667915285, 14.83630136972025],
                                [120.9167549182538, 14.83906035161114],
                                [120.9145960337036, 14.83824338458578],
                                [120.9135477683005, 14.83751747721188],
                                [120.9065096801734, 14.83226980699048],
                                [120.9048983134902, 14.83302624006385],
                                [120.9051042152951, 14.83208307540972],
                                [120.9048938511448, 14.82637665474254],
                                [120.9069858363222, 14.82440375844586],
                                [120.9169667915285, 14.83630136972025]
                            ]
                        ]
                    },
                    "properties": {
                        "name": "Borol 1st",
                        "population": 10190,
                        "area": 0.87 
                    }
                }
            ]
        };

        // Create the map and set the initial view
        var map = L.map('map').setView([14.8326889, 120.91123693], 15);

        // Add OpenStreetMap tiles
        L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
            attribution: '&copy; OpenStreetMap contributors',
            maxZoom: 19
        }).addTo(map);

        // Function to color map based on population
        function getColor(d) {
            return d > 9000 ? '#800026' :
                   d > 5000 ? '#BD0026' :
                   d > 2000 ? '#E31A1C' :
                   d > 1000 ? '#FC4E2A' :
                              '#FFEDA0';
        }

        // Style GeoJSON features
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
                '<b>' + props.name + '</b><br />Population: ' + props.population + '<br />Area: ' + props.area + ' km²' :
                'Mouse over the map to see details.');
        };
        info.addTo(map);

        // Add a legend control to explain the color scheme and include the trigger image
        var legend = L.control({ position: 'bottomright' });
        legend.onAdd = function (map) {
            var div = L.DomUtil.create('div', 'info legend'),
                grades = [1000, 2000, 5000, 9000],
                labels = [],
                from, to;

            // Add the trigger image
            var img = '<img src="/bmisv3/bmis/assets/img/TidesChart.jpg" alt="Open Tide Chart" class="trigger-image" id="openModal">';

            // Build the legend labels
            for (var i = 0; i < grades.length; i++) {
                from = grades[i];
                to = grades[i + 1];
                labels.push(
                    '<i style="background:' + getColor(from + 1) + '"></i> ' +
                    from + (to ? '&ndash;' + to : '+'));
            }

            // Combine the trigger image and legend labels
            div.innerHTML = img + labels.join('<br>');
            return div;
        };
        legend.addTo(map);

        // Modal functionality
        var modal = document.getElementById("tideModal");
        var closeBtn = document.getElementsByClassName("close")[0];

        // Open modal
        function openModal() {
            modal.style.display = "flex";
        }

        // Close modal
        closeBtn.onclick = function() {
            modal.style.display = "none";
        }

        // Close modal on outside click
        window.onclick = function(event) {
            if (event.target == modal) {
                modal.style.display = "none";
            }
        }

        // Add event listener to open modal
        map.on('load', function() {
            var openModalBtn = document.getElementById("openModal");
            if (openModalBtn) {
                openModalBtn.onclick = openModal;
            }
        });

        // Use a timeout to ensure the element exists
        setTimeout(function() {
            var openModalBtn = document.getElementById("openModal");
            if (openModalBtn) {
                openModalBtn.onclick = openModal;
            }
        }, 500);
    </script>
</body>
</html>
