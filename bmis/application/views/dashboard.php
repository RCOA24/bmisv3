

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
        </div>
        </div>
       
    </div>
    
</div>
<div class="row">
  <div class="col-md-4 col-lg-4 col-xs-12">
    <div class="white-box" style="background-color: #fff; border-radius: 8px; padding: 16px;">
      <h3 class="box-title">Resident Chart</h3>
      <div id="morris-donut-chart"></div>
    </div>
  </div>
  <div class="col-md-8 col-lg-8 col-xs-12">
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
      #map {
    float: left;
    width: 65%;
    height: 400px;
}
@media (max-width: 768px) {
    #map {
      width: 100%; /* Make the map full width on smaller screens */
      float: none; /* Remove the float to avoid layout issues */
    }

    .col-md-4, .col-lg-4, .col-xs-12 {
      width: 100%; /* Make the chart container full width */
    }
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
.modalhehe {
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
.modal-contenthehe {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 20px;
    max-width: 1000px;
    width: 90%;
    height: auto;
    max-height: 100%;
    position: relative;
    border-radius: 12px;
   /* box-shadow: 0px 0px 50px rgba(255, 255, 255, 0.9);  Optional glow effect */
    display: flex;
    justify-content: center;
    align-items: center;
    overflow: hidden;
}


/* Image Styling */
.modal-content img{
    width: 100%;
    height: auto;
    max-height: 100%;
    object-fit: contain; /* Ensures the image scales proportionally */
    border-radius: 8px;
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
            .modal-contenthehe {
                width: 95%;
                height: 90%; /* Smaller height */
            }
        }
        
        @media (max-width: 480px) {
            #map {
                height: 300px; /* Further reduced height for small screens */
            }
            .modal-contenthehe {
                width: 100%;
                height: 75%; /* Fit smaller screens */
            }
            .trigger-image {
                width: 80px; /* Reduce size of the trigger image */
            }
        }


        /* TidesCharts background styling */
        .modal1 {
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
        .modal-content1 {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            width: 100%;
            max-width: 900px;
            height: 800px;
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
            .modal-content1 {
                width: 95%;
                height: 90%; /* Smaller height */
            }
        }
        
        @media (max-width: 480px) {
            #map {
                height: 300px; /* Further reduced height for small screens */
            }
            .modal-content1 {
                width: 100%;
                height: 85%; /* Fit smaller screens */
            }
            .trigger-image {
                width: 80px; /* Reduce size of the trigger image */
            }
        }

        .button-container {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 20px; /* Space between the buttons */
    margin-top: 20px;
}

#floodRiskButton {
    padding: 15px 30px;
    background: linear-gradient(135deg, #e63946, #d00000);
    color: white;
    font-size: 2.5em;
    font-weight: bold;
    border: none;
    border-radius: 12px;
    cursor: pointer;
    transition: background 0.3s ease;
}

.trigger-image {
    cursor: pointer;
    width: 153px; /* Adjust the size as needed */
    height: auto;
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
    <div id="tideModal" class="modal1">
        <div class="modal-content1">
            <span class="close">&times;</span>
            <iframe src="https://www.tideschart.com/Philippines/Central-Luzon/Province-of-Bulacan/Balagtas/Weekly/" 
                    width="100%" height="100%" style="border:none;"></iframe>
        </div>
    </div>

    <!-- Flood Risk Modal -->
    <div id="floodModal" class="modalhehe">
        <div class="modal-contenthehe">
            <span class="close">&times;</span>
            <img src="/bmisv3/bmis/assets/img/FloodProneMap02.png" alt="Flood Risk Area">
        </div>
    </div>

<!-- Include the Modal for Population per Sitio -->
<div id="populationModal" class="modalpp" style="display: none;">
    <div class="modal-contentpp">
        <span class="close-button" id="closePopulationModal" style="font-size: 2em; color: #d00000; cursor: pointer;">&times;</span>
        <h2>Population per Sitio</h2>
        <p>Here you can view more details about the population in each sitio.</p>
        <p>Population: ${props ? props.population : defaultProps.population}</p>
        <p>Area: ${props ? props.area : defaultProps.area} km²</p>
        <p>Additional information can be added here.</p>
    </div>
</div>

<style>
/* Style for the modal */
.modalpp {
    display: none;
    position: fixed;
    z-index: 1;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    overflow: auto;
    background-color: rgba(0, 0, 0, 0.4); /* Black background with opacity */
    font-size: 3em; /* Larger font size for the title */
}

/* Modal Content */
.modal-contentpp {
    position: relative; /* Enable positioning of child elements within this container */
    background-color: #fefefe;
    margin: 10% auto;
    padding: 40px;
    border: 1px solid #888;
    width: 90%;
    max-height: 80%; /* Set max height to 80% of the viewport height */
    overflow-y: auto; /* Enables vertical scrolling when content exceeds max height */
    border-radius: 10px;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
    font-size: 1.4em;
}

/* Close button */
.close-button {
    position: absolute;
    top: 10px;
    right: 10px;
    font-size: 30px;
    cursor: pointer;
    color: #d00000; /* Red color */
    z-index: 1001;  /* Ensure the button is always on top of other content */
}

/* List Styling */
#streetList ul {
    list-style-type: none;
    padding: 0;
}

#streetList li {
    display: flex;
    justify-content: space-between;
    padding: 5px;
    margin-bottom: 5px;
    border-bottom: 1px solid #ddd;
}

.population {
    font-weight: bold;
}

/* Legend container */
#legend {
  margin-top: 20px;
}

/* Legend item layout */
.legend-item {
  display: flex;
  align-items: center;
  margin-bottom: 10px;
}

/* Legend color blocks */
.legend-color {
  width: 20px;
  height: 20px;
  border-radius: 3px;
  margin-right: 10px;
}

.legend-color.green {
  background-color: #00ff00; /* Green */
}

.legend-color.yellow {
  background-color: #ffff00; /* Yellow */
}

.legend-color.orange {
  background-color: #ff9900; /* Orange */
}

.legend-color.overpopulated {
  background-color: #ff0000; /* Red */
}

/* Text styling */
.legend-item span {
  font-size: 1em;
  color: #333; /* Neutral text color */
}

</style>

   <!-- Include Leaflet JS -->
<script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"></script>

<script>
document.addEventListener("DOMContentLoaded", function () {
    const dropdown = document.getElementById("test");
    const modal = document.getElementById("populationModal");
    const closeButton = document.getElementById("closePopulationModal");

    // Show modal when the "Population Per Sitio" option is selected
    dropdown.addEventListener("change", function () {
        if (dropdown.value === "street") {
            console.log("Opening modal");  // Debugging log
            modal.style.display = "flex";  // Show the modal
        }
    });

    // Close modal when the close button is clicked
    closeButton.addEventListener("click", function () {
        console.log("Close button clicked");  // Debugging log
        modal.style.display = "none";
    });

    // Close modal when clicking outside of the modal content
    window.addEventListener("click", function (event) {
        if (event.target === modal) {
            console.log("Clicked outside modal");  // Debugging log
            modal.style.display = "none";
        }
    });
});


// Add colors to the population numbers based on value
const streetList = document.querySelectorAll("#streetList li");

streetList.forEach(function(listItem) {
    const populationElement = listItem.querySelector(".population");
    const population = parseInt(populationElement.textContent);

    // Add color based on population threshold
    if (population > 4000) {
        populationElement.style.color = "#ff0000"; // Red for overpopulated
    } else if (population > 3000) {
        populationElement.style.color = "#ff6600"; // Orange for high population
    } else if (population > 2000) {
        populationElement.style.color = "#ffff00"; // Yellow for moderate population
    } else {
        populationElement.style.color = "#00ff00"; // Green for sustainable population
    }
});


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
                             // Updated Heat Map of Borol 1st
                            [120.904969779363995, 14.819718448501],
                    [120.905936396257999, 14.8204185631683],
                    [120.906287515035999, 14.8207095038111],
                    [120.906819203872004, 14.8200985120585],
                    [120.907320805151002, 14.820360354480099],
                    [120.907712056275003, 14.820525216246001],
                    [120.907812380755004, 14.820845254627899],
                    [120.907661907014003, 14.8214077516472],
                    [120.907391053750004, 14.822261193859401],
                    [120.906819230729994, 14.8226103333404],
                    [120.906909522025998, 14.8227848993824],
                    [120.907180389711002, 14.822852784178],
                    [120.906979758765999, 14.823483167642999],
                    [120.906879448116996, 14.8240456646613],
                    [120.906849357267006, 14.8243269139247],
                    [120.907411166060001, 14.8246566482117],
                    [120.907381075844, 14.825141556114099],
                    [120.907411179839997, 14.8256264635107],
                    [120.907581732740994, 14.8258883119989],
                    [120.907551652574995, 14.826741752626299],
                    [120.907560845538001, 14.8272205944108],
                    [120.907891918215995, 14.827530932130101],
                    [120.908152768294002, 14.827909158763401],
                    [120.908594206196994, 14.8282970832055],
                    [120.908865072295001, 14.827860659520001],
                    [120.909336603396994, 14.827909144405901],
                    [120.909557955029996, 14.8281129968895],
                    [120.909589279423002, 14.828520839143],
                    [120.909480247201998, 14.828987186352],
                    [120.909129568637994, 14.829239899794199],
                    [120.908557445647006, 14.8293176749024],
                    [120.908095995943995, 14.829521862456],
                    [120.907372821788996, 14.829434350499],
                    [120.906930638708999, 14.8291815847734],
                    [120.906418776777997, 14.829337125821301],
                    [120.906539601592996, 14.829619114277399],
                    [120.906801163967003, 14.829726152850601],
                    [120.906952004714995, 14.83005603809],
                    [120.907313298138007, 14.830162791254001],
                    [120.907293898708005, 14.8306385015457],
                    [120.906712174269003, 14.830939601172201],
                    [120.905869323104, 14.831396308869101],
                    [120.905367415181004, 14.831687952367499],
                    [120.904915550431994, 14.8318824370469],
                    [120.904554014289999, 14.831901887915301],
                    [120.900958259077996, 14.8316235800502],
                    [120.900897111047001, 14.831103305924399],
                    [120.901467022041999, 14.830545792659301],
                    [120.901530256005998, 14.83004894379],
                    [120.901671182317997, 14.8296051077273],
                    [120.902263498487002, 14.8290112895588],
                    [120.902699575295003, 14.8285981846733],
                    [120.902307479482999, 14.8285068300427],
                    [120.901692095808002, 14.828280586514101],
                    [120.901334154531995, 14.828016734493801],
                    [120.899692287152007, 14.8273387232455],
                    [120.899374476259993, 14.8269247297064],
                    [120.899196939104002, 14.8265185159085],
                    [120.898950869660993, 14.8256393616489],
                    [120.898670358640999, 14.825367668626299],
                    [120.898094431502997, 14.825067509905001],
                    [120.897777064102996, 14.8248960540712],
                    [120.897725988651004, 14.824617542961001],
                    [120.897807874044005, 14.824339157116],
                    [120.897926917884007, 14.823932507478499],
                    [120.897617276437998, 14.823747099407599],
                    [120.897270992266002, 14.8234975975938],
                    [120.896946709119007, 14.8233408150614],
                    [120.896881038263004, 14.8230914786407],
                    [120.896962635498994, 14.8226281311637],
                    [120.897073630316001, 14.8222646661764],
                    [120.897346477911995, 14.822364442128199],
                    [120.897707914723, 14.822392958103499],
                    [120.897818732039994, 14.8221649219343],
                    [120.898040097139003, 14.822050917631501],
                    [120.898172780446998, 14.8221863073906],
                    [120.898372019193005, 14.822050924649201],
                    [120.898762993266004, 14.8219583041001],
                    [120.899220009032007, 14.8219435053418],
                    [120.899448596875004, 14.8224642792553],
                    [120.899640345948001, 14.8229566459687],
                    [120.900105420762003, 14.8228638736168],
                    [120.900230883155999, 14.8230280157532],
                    [120.900408047637995, 14.823056563923499],
                    [120.900622142764007, 14.822763969075201],
                    [120.900880492710002, 14.8226640686138],
                    [120.901087172657, 14.8227211539617],
                    [120.901419264520996, 14.822271652484201],
                    [120.904554817497001, 14.8194823921416],
                    [120.904969779363995, 14.819718448501]
                        ]
                    ]
                },
                "properties": {
                    "name": "Borol 1st",
                    "population": 10190,
                    "area": 1
                }
            }
        ]
    };

    // Create the map and set the initial view
    var map = L.map('map').setView([14.8326889, 120.91123693], 13.5);

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

    // Style GeoJSON features
    function style(feature) {
        return {
            fillColor: getColor(feature.properties.population),
            weight: 2,
            opacity: 1,
            color: 'white',
            dashArray: '3',
            fillOpacity: 0.3
        };
    }

    // Highlight feature on hover
    function highlightFeature(e) {
        var layer = e.target;
        layer.setStyle({
            weight: 5,
            color: '#666',
            dashArray: '',
            fillOpacity: 0.5
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
  const defaultProps = geojsonData.features[0].properties;

  this._div.innerHTML = `
  <!-- Dropdown menu for Population per Sitio -->
  <div class="dropdown-container" style="font-size: 1.2em; padding: 10px;">
      <label for="test" style="font-size: 1.2em; font-weight: bold;">Population:</label>
      <select id="test" style="font-size: 1.2em; padding: 8px; border-radius: 5px; width: 200px;">
          <option value="">-- Select an Option --</option>
          <option value="street">Population Per Sitio</option>
      </select>
  </div>
      
      <h3>Borol 1st, Balagtas, Bulacan</h3>
      <div style="font-size: 2.5em;">
        <b>${props ? props.name : defaultProps.name}</b><br />
        Population: ${props ? props.population : defaultProps.population}<br />
        Area: ${props ? props.area : defaultProps.area} km²
      </div>
     
      <div class="button-container">
        <button id="floodRiskButton" style="padding: 15px 30px; background: linear-gradient(135deg, #e63946, #d00000); color: white; font-size: 1.3em; font-weight: bold; border: none; border-radius: 12px; cursor: pointer; transition: background 0.3s ease;">Flood Risk Areas</button>
        <img src="/bmisv3/bmis/assets/img/TidesChart.jpg" alt="Open Tide Chart" class="trigger-image" id="openModal">
      </div>

     <!-- Modal for Population per Sitio -->
  <div id="populationModal" class="modalpp" style="display: none;">
    <div class="modal-contentpp">
      <h2>Population per Sitio</h2>
      <p>Here you can view more details about the population in each sitio.</p>
      
      <!-- List of streets and population data -->
      <div id="streetList">
        <ul></ul> <!-- This will be dynamically populated -->
      </div>
<!-- Legend for population status -->
<div id="legend">
  <h3>Population Status Legend:</h3>

  <!-- Green: Sustainable Population -->
  <div class="legend-item">
    <div class="legend-color green"></div>
    <span>Sustainable Population (0–100)</span>
  </div>

  <!-- Yellow: Moderate Population -->
  <div class="legend-item">
    <div class="legend-color yellow"></div>
    <span>Moderate Population (101–150)</span>
  </div>

  <!-- Orange: High Population -->
  <div class="legend-item">
    <div class="legend-color orange"></div>
    <span>High Population (151–200)</span>
  </div>

  <!-- Red: Overpopulated -->
  <div class="legend-item">
    <div class="legend-color overpopulated"></div>
    <span>Overpopulated (> 200)</span>
  </div>
</div>


      <p>Additional information can be added here.</p>
    </div>
  </div>
  `;

  document.addEventListener('DOMContentLoaded', function () {
    const dropdown = document.getElementById('test');
    const streetList = document.getElementById('streetList').querySelector('ul');

    dropdown.addEventListener('change', function () {
        if (dropdown.value === "street") {
            // Fetch population data
            fetch('/bmisv3/bmis/population-data') // Adjust the path to match your setup
                .then(response => response.json())
                .then(data => {
                    streetList.innerHTML = ''; // Clear existing data
                    if (data.length > 0) {
                        data.forEach(item => {
                            const listItem = document.createElement('li');

                            // Determine the color based on population range
                            let colorClass = '';
                            if (item.population >= 0 && item.population <= 100) {
                                colorClass = 'green';
                            } else if (item.population > 2 && item.population <= 150) {
                                colorClass = 'yellow';
                            } else if (item.population > 150 && item.population <= 200) {
                                colorClass = 'orange';
                            } else {
                                colorClass = 'red';
                            }

                            listItem.innerHTML = `
                                <span>${item.purok}</span> 
                                <span class="population ${colorClass}">${item.population}</span>
                            `;
                            streetList.appendChild(listItem);
                        });
                    } else {
                        streetList.innerHTML = '<li>No data available</li>';
                    }
                })
                .catch(error => console.error('Error fetching population data:', error));
        }
    });
});
};



info.addTo(map);


// Flood Risk Modal Logic
var floodModal = document.getElementById("floodModal");
var floodCloseBtn = floodModal.querySelector(".close");

function openFloodModal() {
    floodModal.style.display = "flex";
}

floodCloseBtn.onclick = function() {
    floodModal.style.display = "none";
};

window.onclick = function(event) {
    if (event.target == floodModal) {
        floodModal.style.display = "none";
    }
};

function initializeFloodRiskButton() {
    var floodRiskButton = document.getElementById("floodRiskButton");
    if (floodRiskButton) {
        floodRiskButton.addEventListener('click', openFloodModal);
    }
}

initializeFloodRiskButton(); // Initial binding
setInterval(initializeFloodRiskButton, 1000); // Re-check every second


    // // Add a legend control to explain the color scheme and include the trigger image
    // var legend = L.control({ position: 'bottomright' });
    // legend.onAdd = function (map) {
    //     var div = L.DomUtil.create('div', 'info legend'),
    //         grades = [1000, 2000, 5000, 9000],
    //         labels = [],
    //         from, to;

    //     // Add the trigger image
    //     var img = '<img src="/bmisv3/bmis/assets/img/TidesChart.jpg" alt="Open Tide Chart" class="trigger-image" id="openModal">';


    //     // Combine the trigger image and legend labels
    //     div.innerHTML = img + labels.join('<br>');
    //     return div;
    // };
    // legend.addTo(map);

    //populatiopn
    document.addEventListener("DOMContentLoaded", function () {
  const dropdown = document.getElementById("populationDropdown");
  const button = document.getElementById("populationPerSitioButton");

  dropdown.addEventListener("change", function () {
    if (dropdown.value === "populationPerSitio") {
      button.style.display = "inline-block";
    } else {
      button.style.display = "none";
    }
  });

  // Add event listener to open modal on button click
  button.addEventListener("click", function () {
    document.getElementById("populationModal").style.display = "flex";
  });

  // Close modal when close button is clicked
  document.getElementById("closePopulationModal").onclick = function () {
    document.getElementById("populationModal").style.display = "none";
  };
});

   

       // Modal functionality
var modal = document.getElementById("tideModal");
var closeBtn = document.getElementsByClassName("close")[0];

// Open modal
function openModal() {
    modal.style.display = "flex";
}

// Close modal
function closeModal() {
    modal.style.display = "none";
}

// Close button event listener
closeBtn.onclick = closeModal;

// Close modal on outside click
window.onclick = function(event) {
    if (event.target == modal) {
        closeModal();
    }
};

// Function to attach the open modal event listener
function initializeOpenModalButton() {
    var openModalBtn = document.getElementById("openModal");
    if (openModalBtn) {
        openModalBtn.onclick = openModal;
    }
}

// Attach event listener to open modal after map load
map.on('load', function() {
    initializeOpenModalButton(); // Initial binding when map loads
});

// Reapply the listener every second to handle re-renders or DOM updates
setInterval(initializeOpenModalButton, 1000);

    </script>
</body>

<!-- Population Legend Indicator-->
<style>

.population.green {
    color: white;
    background-color: green;
    padding: 5px 10px;
    border-radius: 5px;
}

.population.yellow {
    color: black;
    background-color: yellow;
    padding: 5px 10px;
    border-radius: 5px;
}

.population.orange {
    color: white;
    background-color: orange;
    padding: 5px 10px;
    border-radius: 5px;
}

.population.red {
    color: white;
    background-color: red;
    padding: 5px 10px;
    border-radius: 5px;
}


</style>



<div class="row" style="padding: 16px;">
<!-- <div class="col-md-8 col-lg-8 col-xs-12">
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
        </div> -->
    </div>
   
</div>





    <!-- upload of picture in footer -->
	<!-- <img src="<?= !empty($info->dashboard_img) ? 'assets/uploads/' . $info->dashboard_img : 'assets/img/bg-abstract.png' ?>" style="width: 100%" /> -->
</div>