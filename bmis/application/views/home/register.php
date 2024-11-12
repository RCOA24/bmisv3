<!-- Fullscreen Container with Background Image and Center Alignment -->
<div class="container-fluid d-flex justify-content-center align-items-center vh-100 bg-image">
    <div class="text-center bg-light text-dark rounded-3 shadow-lg p-5 position-relative mx-3" style="animation: fadeInUp 1.2s ease; max-width: 600px; width: 100%;">

        <!-- Welcome Header with Subtitle -->
        <h1 class="welcome_text display-4 mb-3 text-primary">Barangay <?= $info->brgy_name ?></h1>
        <p class="lead text-muted mb-5">Register to Connect with Your Community</p>

        <!-- Content Row -->
        <div class="row align-items-center justify-content-center">
            
            <!-- Logo Section with Rounded and Shadowed Effect -->
            <div class="col-4 mb-4">
                <img src="<?= site_url('assets/uploads/') . $info->brgy_logo ?>" alt="Barangay Logo" class="img-fluid brgy rounded-circle shadow-lg" style="max-width: 80%; animation: bounceIn 1.2s ease;">
            </div>
            
            <!-- Registration Form Section -->
            <div class="col-md-12">
                
                <!-- Flash Message with Fade-In Animation -->
                <?php if ($this->session->flashdata('message')) : ?>
                    <div class="alert alert-<?= $this->session->flashdata('success') ?> alert-dismissible fade show" role="alert" style="animation: fadeInDown 1s;">
                        <small><?= $this->session->flashdata('message') ?></small>
                    </div>
                <?php endif ?>
                
                <!-- Registration Form -->
                <form method="POST" action="<?= site_url('auth/register') ?>" id="register_form" style="animation: fadeIn 1s;">
                    
                    <!-- Username Field with Transition Effect -->
                    <div class="form-group mb-4">
                        <input class="form-control form-control-lg rounded-pill" placeholder="Username" required name="username" style="transition: box-shadow 0.3s; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);" />
                    </div>

                    <!-- First Name and Last Name Fields -->
                    <div class="row mb-4">
                        <div class="col-md-6">
                            <div class="form-group">
                                <input class="form-control form-control-lg rounded-pill" placeholder="First Name" name="fname" required />
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <input class="form-control form-control-lg rounded-pill" placeholder="Last Name" name="lname" required />
                            </div>
                        </div>
                    </div>

                    <!-- Middle Name Field -->
                    <div class="form-group mb-4">
                        <input class="form-control form-control-lg rounded-pill" placeholder="Middle Name" name="mname" required />
                    </div>

                    <!-- Password Field with Show/Hide Toggle Positioned on the Right -->
                    <div class="form-group position-relative mb-4">
                        <input
                            class="form-control form-control-lg rounded-pill"
                            id="password"
                            name="password"
                            type="password"
                            required
                            placeholder="Password"
                            style="transition: box-shadow 0.3s; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); padding-right: 2.5rem;"
                        />
                        <!-- Show/Hide Icon and Text Positioned on the Right Side of the Input Field -->
                        <span
                            class="toggle-password position-absolute"
                            style="cursor: pointer; right: 1rem; top: 50%; transform: translateY(-50%); display: flex; align-items: center;"
                            onclick="togglePasswordVisibility()"
                        >
                            <i class="fa fa-eye"></i> <span class="toggle-text ms-1">Show</span>
                        </span>
                    </div>

                    <!-- Confirm Password Field with Show/Hide Toggle -->
                    <div class="form-group position-relative mb-4">
                        <input
                            class="form-control form-control-lg rounded-pill"
                            id="conpassword"
                            name="conpassword"
                            type="password"
                            required
                            placeholder="Confirm Password"
                            style="transition: box-shadow 0.3s; box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); padding-right: 2.5rem;"
                        />
                        <span
                            class="toggle-password position-absolute"
                            style="cursor: pointer; right: 1rem; top: 50%; transform: translateY(-50%); display: flex; align-items: center;"
                            onclick="togglePasswordVisibility()"
                        >
                            <i class="fa fa-eye"></i> <span class="toggle-text ms-1">Show</span>
                        </span>
                    </div>

                    <!-- Submit Button with Pulse Animation on Hover -->
                    <button class="btn btn-warning btn-lg rounded-pill w-100 mt-4" type="submit" style="transition: transform 0.2s; box-shadow: 0 3px 10px rgba(255, 153, 0, 0.3);">REGISTER</button>
                    
                    <!-- Already Registered Link with Smooth Transition -->
                    <p class="mt-4">Already registered? <a href="<?= site_url('client/login') ?>" class="text-decoration-none text-primary" style="transition: color 0.3s;">Login Here</a></p>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Animations & Style Enhancements -->
<style>
    /* Fullscreen Background Image with Semi-Transparency */
    .bg-image {
        background: url('<?= site_url('assets/img/bg.jpg') ?>') center center / cover no-repeat;
        background-blend-mode: overlay;
        background-color: rgba(0, 0, 0, 0.8); /* Adds a semi-transparent overlay */
       
    }

    /* Fade-in Animation */
    @keyframes fadeInUp {
        from { opacity: 0; transform: translateY(20px); }
        to { opacity: 1; transform: translateY(0); }
    }
    @keyframes fadeInDown {
        from { opacity: 0; transform: translateY(-20px); }
        to { opacity: 1; transform: translateY(0); }
    }
    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    @keyframes bounceIn {
        0% { transform: scale(0.5); opacity: 0; }
        60% { transform: scale(1.1); opacity: 1; }
        100% { transform: scale(1); }
    }

    /* Button Pulse on Hover */
    .btn-warning:hover {
        transform: scale(1.05);
        box-shadow: 0 4px 12px rgba(255, 153, 0, 0.4);
    }

    /* Smooth Transition for Links */
    a:hover {
        color: #FF9900;
    }

    /* Media Query for Responsiveness */
    @media (max-width: 576px) {
        .welcome_text {
            font-size: 1.75rem;
        }
        .lead {
            font-size: 1rem;
        }
        .btn-warning {
            font-size: 1rem;
        }
    }
</style>

<!-- Password Toggle Script -->
<script>
    function togglePasswordVisibility() {
        const passwordField = document.getElementById('password');
        const conpasswordField = document.getElementById('conpassword');
        const toggleIcon = document.querySelector('.toggle-password i');
        const toggleText = document.querySelector('.toggle-text');
        
        // Toggle password field type
        if (passwordField.type === 'password' && conpasswordField.type === 'password') {
            passwordField.type = 'text';
            conpasswordField.type = 'text';
            toggleIcon.classList.remove('fa-eye');
            toggleIcon.classList.add('fa-eye-slash');
            toggleText.textContent = 'Hide';
        } else {
            passwordField.type = 'password';
            conpasswordField.type = 'password';
            toggleIcon.classList.remove('fa-eye-slash');
            toggleIcon.classList.add('fa-eye');
            toggleText.textContent = 'Show';
        }
    }
</script>
