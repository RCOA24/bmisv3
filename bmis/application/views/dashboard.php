

<!-- Main Content Boxes -->
<div class="row colorbox-group-widget">
       <!-- Pending Requests -->
       <div class="col-md-3 col-sm-6 info-color-box">
        <div class="white-box">
            <div class="media bg-primary" style="border-radius: 16px;">
                <div class="media-body">
                <h3 class="info-count" id="pendingRequestCount"><?= $pendingCount ?> <span class="pull-right"><i class="icon-doc"></i></span></h3>
                <p class="info-text font-18">Pending Requests</p>
                <p class="info-ot font-13"><a href="<?= site_url('request') ?>" class="text-white">View Requests</a></p>
                </div>
            </div>
        </div>
    </div>
    
    
    <!-- Voters Box -->
    <div class="col-md-3 col-sm-6 info-color-box">
        <div class="white-box">
            <div class="media bg-success" style="border-radius: 16px;">
                <div class="media-body">
                    <h3 class="info-count"><?= number_format(count($voters)) ?> <span class="pull-right"><i class="icon-user-following"></i></span></h3>
                    <p class="info-text font-18">Voters</p>
                    <p class="info-ot font-13"><a href="<?= site_url('resident_info/voters') ?>" class="text-white">Total Voters</a></p>
                </div>
            </div>
        </div>
    </div>

    <!-- Non Voters Box -->
    <div class="col-md-3 col-sm-6 info-color-box" >
        <div class="white-box">
            <div class="media bg-warning" style="border-radius: 16px;">
                <div class="media-body">
                    <h3 class="info-count"><?= number_format(count($nonvoters)) ?> <span class="pull-right"><i class="icon-user-unfollow"></i></span></h3>
                    <p class="info-text font-18">Non Voters</p>
                    <p class="info-ot font-13"><a href="<?= site_url('resident_info/non-voters') ?>" class="text-white">Total Non Voters</a></p>
                    
                </div>
            </div>
        </div>
    </div>

<!-- PWD Box -->
<div class="col-md-3 col-sm-6 info-color-box">
    <div class="white-box">
        <div class="media pwd" style="background-color:#6861ce; border-radius: 16px;">
            <div class="media-body">
                <h3 class="info-count"><?= number_format(count($pwd)) ?> <span class="pull-right"><i class="fa fa-wheelchair"></i></span></h3>
                <p class="info-text font-18 text-white">PWD</p>
                <p class="info-ot font-13"><a href="<?= site_url('resident_info/pwd') ?>" class="text-white">Total PWD</a></p>
            </div>
        </div>
        
        <!-- Dropdown Button with Toggle Chevron Icon -->
        <div class="col-md-12 text-right mt-3" style="padding: 2.2px;">
            <button style="background: linear-gradient(145deg, #ecc585, #b97207); border-radius: 16px; color: white;" 
                onmouseover="this.style.background='linear-gradient(145deg, #b97207, #ecc585)'" 
                onmouseout="this.style.background='linear-gradient(145deg, #ecc585, #b97207)'" 
                class="btn btn-light" 
                id="toggleButton">
                <i class="fa fa-chevron-down rotate-icon"></i>
            </button>
        </div>
    </div>
</div>

<!-- Collapsible Additional Content -->
<div id="extraContent" class="extraContent" style="display: none;">
    <div class="row colorbox-group-widget mt-3">
        <!-- Senior Citizen Box -->
        <div class="col-md-3 col-sm-6 info-color-box">
            <div class="white-box">
                <div class="media bg-info" style="border-radius: 16px;">
                    <div class="media-body">
                        <h3 class="info-count"><?= number_format(count($senior)) ?> <span class="pull-right"><i class="fa fa-users"></i></span></h3>
                        <p class="info-text font-18">Senior Citizen</p>
                        <p class="info-ot font-15"><a href="<?= site_url('resident_info/senior') ?>" class="text-white">Total Senior Citizen</a></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Business Permit Details Box -->
        <div class="col-md-3 col-sm-6 info-color-box">
            <div class="white-box">
                <div class="media business permit" style="background-color:#1973e9; border-radius: 16px;">
                    <div class="media-body">
                        <h3 class="info-count"><?= number_format($permit) ?> <span class="pull-right"><i class="fa fa-building-o"></i></span></h3>
                        <p class="info-text font-18 text-white">Establishment</p>
                        <p class="info-ot font-13"><a href="<?= site_url('business') ?>" class="text-white">Business Permit Details</a></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Blotter Details Box -->
        <div class="col-md-3 col-sm-6 info-color-box">
            <div class="white-box">
                <div class="media blotter" style="background-color:#f25961; border-radius: 16px;">
                    <div class="media-body">
                        <h3 class="info-count"><?= number_format($blotter) ?> <span class="pull-right"><i class="icon-layers"></i></span></h3>
                        <p class="info-text font-18 text-white">Blotter</p>
                        <p class="info-ot font-13"><a href="<?= site_url('blotter') ?>" class="text-white">Blotter Details</a></p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Revenue Box -->
        <div class="col-md-3 col-sm-6 info-color-box" style="padding: 16px;">
            <div class="white-box">
                <div class="media bg-success" style="border-radius: 16px;">
                    <div class="media-body">
                        <h3 class="info-count">P <?= number_format($revenue, 2) ?> <span class="pull-right"><i class="fa fa-product-hunt"></i></span></h3>
                        <p class="info-text font-18">Today's Revenue</p>
                        <p class="info-ot font-13"><a href="<?= site_url('payments') ?>" class="text-white">Revenue Details</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Add jQuery and Bootstrap CDN in the head or before your closing body tag -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

<!-- CSS for Smooth Transition -->
<style>
    /* Add transition effect for the chevron icon */
    .rotate-icon {
        transition: transform 0.4s ease;
    }

    /* Rotate the icon when the button is expanded */
    .rotate-icon.expanded {
        transform: rotate(180deg);
    }

    /* Initially hide the extra content with smooth fade-in/out */
    #extraContent {
        opacity: 0;
        visibility: hidden;
        transition: opacity 1.6s ease, visibility 7s linear 1.6s; /* Visibility delayed */
    }

    /* When the content is visible */
    #extraContent.show {
        opacity: 1;
        visibility: visible;
        transition: opacity 1.6s ease, visibility 7s;
    }
</style>

<!-- JavaScript to Toggle the Content and Chevron -->
<script>
     document.getElementById('toggleButton').addEventListener('click', function() {
        const icon = this.querySelector('i');
        const content = document.getElementById('extraContent');

        // Toggle the chevron icon rotation
        icon.classList.toggle('expanded');

        // Toggle visibility of the extra content
        if (content.classList.contains('show')) {
            content.classList.remove('show'); // Start fade-out
        } else {
            content.classList.add('show'); // Start fade-in
        }
    });
</script>

<!-- Add jQuery and Bootstrap CDN in the head or before your closing body tag -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>

<link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css" />
    <style>
        /* Make map responsive */
        #map {
            width: 100%; /* Full width */
            height: 400px; /* Default height */
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
    <!-- Dropdown menu for selecting map type -->
  <div class="dropdown-container">
        <label for="mapSelect">Select Map Type:</label>
        <select id="mapSelect">
            <option value="street">Street Map</option>
            <option value="satellite">Satellite Map</option>
        </select>
    </div>

     <!-- <h1 class="text-center" style="color: black;">Map of Balagtas - Borol 1st</h1>-->
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
    var map = L.map('map').setView([14.8326889, 120.91123693], 14);

    // Define base layers
    var streetMap = L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
        attribution: '&copy; OpenStreetMap contributors',
        maxZoom: 19
    });

    // Using Esri's Satellite imagery as an alternative to Google Satellite view
    var satelliteMap = L.tileLayer('https://server.arcgisonline.com/ArcGIS/rest/services/World_Imagery/MapServer/tile/{z}/{y}/{x}', {
        attribution: '&copy; Esri, Maxar, Earthstar Geographics, and the GIS User Community',
        maxZoom: 19
    });

    // Add the default layer to the map
    streetMap.addTo(map);

    // GeoJSON Layer for the choropleth polygons
    var geojsonLayer = L.geoJson(geojsonData, {
        style: style,
        onEachFeature: onEachFeature
    });

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
        geojsonLayer.resetStyle(e.target);
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

    // Add GeoJSON layer (choropleth polygons)
    geojsonLayer.addTo(map);

    // Add an info control to display feature properties
    var info = L.control();
    info.onAdd = function (map) {
        this._div = L.DomUtil.create('div', 'info');
        this.update();
        return this._div;
    };
    info.update = function (props) {
    this._div.innerHTML = '<h3>Borol 1st, Balagtas, Bulacan</h3>' +
        (props 
            ? '<div style="font-size: 2.5em;"><b>' + props.name + '</b> <br />Population: ' + props.population + '<br />Area: ' + props.area + ' km²</div>' 
            : '<div style="font-size: 2.5em;">Mouse over the map to see details.</div>'
        );
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

    // Switch map type based on dropdown selection
    document.getElementById("mapSelect").addEventListener("change", function(event) {
        var selectedMap = event.target.value;

        // Only remove the base layers and not the GeoJSON layer
        if (selectedMap === "street") {
            // Add the street map and remove the satellite layer
            map.removeLayer(satelliteMap);
            streetMap.addTo(map);
        } else if (selectedMap === "satellite") {
            // Add the satellite map and remove the street layer
            map.removeLayer(streetMap);
            satelliteMap.addTo(map);
        }
    });

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





<div class="row" style="padding: 16px;">
    <div class="col-md-8 col-lg-8 col-xs-12">
        <div class="white-box sc-widget" style="background-color: #fff; border-radius: 8px; padding: 16px;">
            <h4 class="box-title">This Week Revenue Chart</h4>
            <ul class="list-inline text-right">
                <li>
                    <h6><i class="fa fa-circle text-info m-r-5 "></i>Brgy Clearance</h6>
                </li>
                <li>
                    <h6><i class="fa fa-circle text-primary m-r-5"></i>Indigency Certificate</h6>
                </li>
                <li>
                    <h6><i class="fa fa-circle text-warning m-r-5"></i>Residency Certificate</h6>
                </li>
                <li>
                    <h6><i class="fa fa-circle m-r-5" style="color:#d27906"></i>Business Permit</h6>
                </li>
                <li>
                    <h6><i class="fa fa-circle text-dark m-r-5"></i>Others</h6>
                </li>
            </ul>
            <div class="chartist-sales-chart chart-pos m-t-20"></div>
        </div>
    </div>
    <div class="col-md-4 col-lg-4 col-xs-12">
        <div class="white-box" style="background-color: #fff; border-radius: 8px; padding: 16px;">
            <h3 class="box-title">Resident Chart</h3>
            <div id="morris-donut-chart"></div>
        </div>
    </div>
</div>





    <!-- upload of picture in footer -->
	<!-- <img src="<?= !empty($info->dashboard_img) ? 'assets/uploads/' . $info->dashboard_img : 'assets/img/bg-abstract.png' ?>" style="width: 100%" /> -->
</div>