<?php
$query = $this->db->query("SELECT * FROM system_info WHERE id=1");
$info = $query->row();

$sql = $this->db->query("SELECT * FROM barangay_info WHERE id=1");
$bg = $sql->row();

$res_id = $this->session->resident_id;
$notif = 0;
if ($res_id) {
    $notif_q = $this->db->query("SELECT id FROM request WHERE resident_id=$res_id AND status LIKE '%Ready%'");
    $notif = $notif_q->num_rows();
}

$current_page = $this->uri->segment(2);
?>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="<?= site_url() ?>assets/img/abms_logo-black.png">
    <!-- Stylesheets -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?= site_url() ?>assets/css/home.css">
    <title><?= $title ?> | <?= $info->sname ?></title>
    <style>
    header {
        z-index: 10;
        position: relative;
        background-color: transparent;
    }

    .navbar.bg-primary {
        background-color: #102407 !important;
    }

    /* Full-page slider */
    .full-page-slider {
        height: 100vh; /* Ensure each item takes the full height */
        position: relative;
       
    }
    .owl-carousel .owl-item.active .item {
        opacity: 1; /* Set opacity to 1 for active item */
    }

    .full-page-slider .item {
        height: 100vh; /* Ensure each item takes the full height */
        position: relative;
    }

    .full-page-slider .item img {
        height: 100%; /* Scale image to full height */
        width: 100%; /* Scale image to full width */
        object-fit: cover; /* Maintain aspect ratio while covering the area */
    }

    .full-page-slider:after {
        content: "";
        position: absolute;
        bottom: 0;
        left: 0;
        width: 100%;
        height: 100px; /* Fade height */
        background: linear-gradient(to bottom, transparent, black); /* Fading effect */
        z-index: 1; /* Ensure it appears above the slider */
    }

    /* Centered text overlay */
    .image-container {
        position: relative;
        width: 100%;
        height: 100%; /* Match the full height of the viewport */
    }

    .centered-text {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        color: white;
        font-size: 36px; /* Adjust as needed */
        font-weight: bold;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
        z-index: 2;
        text-align: center;
    }

    /* Navigation buttons styling */
    .owl-carousel .owl-nav button.owl-prev, 
    .owl-carousel .owl-nav button.owl-next {
        background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent nav buttons */
        color: white;
        border-radius: 50%;
        width: 40px;
        height: 40px;
        z-index: 3; /* Ensure it appears above images */
    }

    .owl-carousel .owl-nav button.owl-prev:hover, 
    .owl-carousel .owl-nav button.owl-next:hover {
        background-color: rgba(0, 0, 0, 0.8); /* Slightly darker on hover */
    }
</style>

</head>

<body style="background-color: black;">
    <div id="wrapper">
        <header>
            <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
            <div class="container">
    <a class="navbar-brand d-flex align-items-center" href="<?= site_url() ?>">
    <img src="<?= base_url('assets/img/abms_logo-blackk.png') ?>" alt="Barangay Primero Logo" width="100" height="100" class="mr-2">


        <h3 class="mb-0"><?= strtoupper($info->acronym) ?></h3>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item <?= empty($current_page) ? 'active' : null ?>">
                <a class="nav-link font-weight-bold text-uppercase" href="<?= site_url() ?>">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item <?= $current_page == 'announcement' ? 'active' : null ?>">
                <a class="nav-link font-weight-bold text-uppercase" href="<?= site_url('client/announcement') ?>">Announcements</a>
            </li>
            <li class="nav-item <?= $current_page == 'services' ? 'active' : null ?>">
                <a class="nav-link font-weight-bold text-uppercase" href="<?= site_url('client/services') ?>">Services</a>
            </li>
            <li class="nav-item <?= $current_page == 'about-us' ? 'active' : null ?>">
                <a class="nav-link font-weight-bold text-uppercase" href="<?= site_url('client/about-us') ?>">About</a>
            </li>
        </ul>
        <div class="form-inline my-2 my-lg-0">
                            <ul class="navbar-nav mr-auto">
                                <?php if (isset($this->session->username) && $this->session->role == 'resident') : ?>
                                    <div class="dropdown">
                                        <a href="#" class="dropdown-toggle nav-link font-weight-bold text-uppercase" data-toggle="dropdown">
                                            <?= ucwords($this->session->username) ?>
                                            <?= ($notif > 0) ? '<badge class="badge badge-danger">' . $notif . '</badge>' : null ?>
                                        </a>
                                        <div class="dropdown-menu">
                                            <a href="<?= site_url('client/profile') ?>" class="dropdown-item">Profile</a>
                                            <a href="<?= site_url('client/transactions') ?>" class="dropdown-item">Transactions <?= ($notif > 0) ? '<badge class="badge badge-danger">' . $notif . '</badge>' : null ?></a>
                                        </div>
                                    </div>
                                    <li class="nav-item <?= $current_page == 'login' ? 'active' : null ?>">
                                        <a class="nav-link font-weight-bold text-uppercase" href="<?= site_url('auth/logout') ?>">Logout</a>
                                    </li>
                                <?php elseif (isset($this->session->username) && $this->session->role != 'resident') : ?>
                                    <?php if (!empty($this->session->avatar)) : ?>
                                        <li class="nav-item <?= $current_page == 'login' ? 'active' : null ?>">
                                            <img src="<?= preg_match('/data:image/i', $this->session->avatar) ? $this->session->avatar : site_url() . '/assets/uploads/avatar/' . $this->session->avatar ?>" class="rounded-circle mt-1" width="30">
                                        </li>
                                    <?php else : ?>
                                        <li class="nav-item <?= $current_page == 'login' ? 'active' : null ?>">
                                            <img src="<?= site_url() ?>/assets/img/person.png" class="rounded-circle mt-1" width="30" height="30">
                                        </li>
                                    <?php endif ?>
                                    <li class="nav-item <?= $current_page == 'login' ? 'active' : null ?>">
                                        <a class="nav-link font-weight-bold text-uppercase" href="javascript:void(0)">
                                            <?= ucwords($this->session->username) ?>
                                        </a>
                                    </li>
                                    <li class="nav-item <?= $current_page == 'login' ? 'active' : null ?>">
                                        <a class="nav-link font-weight-bold text-uppercase" href="<?= site_url('dashboard') ?>">Dashboard</a>
                                    </li>
                                    <li class="nav-item <?= $current_page == 'login' ? 'active' : null ?>">
                                        <a class="nav-link font-weight-bold text-uppercase" href="<?= site_url('auth/logout') ?>">Logout</a>
                                    </li>
                                <?php else : ?>
                                    <li class="nav-item <?= $current_page == 'login' ? 'active' : null ?>">
                                        <a class="nav-link font-weight-bold text-uppercase" href="<?= site_url('client/login') ?>">Login</a>
                                    </li>
                                    <li class="nav-item <?= $current_page == 'register' ? 'active' : null ?>">
                                        <a class="nav-link font-weight-bold text-uppercase" href="<?= site_url('client/register') ?>">Register</a>
                                    </li>
                                <?php endif ?>

                            </ul>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <main>
    <?php if (empty($current_page)) : ?>
        <div class="owl-carousel owl-theme full-page-slider">
            <div class="item">
                <div class="image-container">
                    <img src="assets/img/Borol1st.png" alt="Image 1">
                    <div class="centered-text">Your Text Here</div>
                </div>
            </div>
            <div class="item">
                <div class="image-container">
                    <img src="assets/img/rbestrella.jpg" alt="Image 2">
                    <div class="centered-text">Another Text Here</div>
                </div>
            </div>
            <div class="item">
                <div class="image-container">
                    <img src="assets/img/bg.jpg" alt="Image 3">
                    <div class="centered-text">Third Text Here</div>
                </div>
            </div>
        </div>
    <?php endif; ?>

    <?= $content ?>
</main>

    </div>

    <!-- Scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="<?= site_url() ?>assets/plugins/components/jquery-validation/jquery.validate.min.js"></script>
    <script>
    $(document).ready(function () {
        $(".owl-carousel").owlCarousel({
            loop: true,
            margin: 0,
            nav: true,
            autoplay: true,           // Enable autoplay
            autoplayTimeout: 3400,    // Set the timer (in milliseconds)
             animateOut: 'fadeOut',    // Add fade-out animation when sliding out
        animateIn: 'fadeIn',     // Add fade-in animation when sliding in
            responsive: {
                0: { items: 1 },
                600: { items: 1 },
                1000: { items: 1 } // Ensure one image per slide for full-page effect
            }
        });
    });
    </script>
</body>

</html>
