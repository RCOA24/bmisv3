<!-- Footer -->
<footer class="text-light py-2 fixed-bottom" style="background-color: #102407;">
    <div class="container d-flex flex-column flex-md-row justify-content-between align-items-center text-center text-md-left">
        <!-- Barangay and City Logos -->
        <div class="mb-2 mb-md-0">
            <img src="<?= site_url('assets/uploads/') . $info->brgy_logo ?>" class="img-fluid" width="40" alt="Barangay Logo">
            <img src="<?= site_url('assets/uploads/') . $info->city_logo ?>" class="img-fluid" width="40" alt="City Logo">
        </div>

        <!-- Welcome Message and Contact Information -->
        <div class="flex-grow-1 mb-2 mb-md-0">
            <small>Welcome to Barangay <?= $info->brgy_name ?> | <?= $info->street . ', ' . $info->purok . ', ' . $info->town ?> | Open Hours: Mon-Fri, 8AM-5PM</small>
        </div>

        <!-- Contact Links -->
        <div class="text-white">
            <small>
                <a href="mailto:<?= $info->email ?>" class="text-white">Email</a> | 
                <a href="tel:<?= $info->number ?>" class="text-white">Call Us</a> | 
                <a href="<?= site_url('client/about-us') ?>" class="text-white">About Us</a>
            </small>
        </div>
    </div>
</footer>

<!-- Optional JavaScript -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-k2trqY6ArOr1pZz3KV8zUN2kAX9TtuoXsIT5T1KxJ9BRj4oMmWlv6zr5dKVF16t" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>
