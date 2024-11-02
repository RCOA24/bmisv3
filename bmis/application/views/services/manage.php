<div class="white-box">
    <div class="row">
        <div class="col-sm-6">
            <h4 class="box-title"><?= $title ?></h4>
        </div>
        <!-- Align buttons to the right side -->
        <div class="col-sm-6" style="text-align: right;">
            <div class="card-tools" style="display: inline-flex; align-items: center;">
                <!-- Services button -->
                <a href="#add" data-toggle="modal" class="fcbtn btn btn-outline btn-primary btn-1d btn-xs btn-rounded" style="margin-right: 5px;">
                    <i class="fa fa-plus"></i> Services
                </a>

                <!-- Dropdown for Send SMS -->
                <div class="dropdown" onmouseover="this.classList.add('open');" onmouseout="this.classList.remove('open');" style="display: inline-block;">
                    <a href="#" class="fcbtn btn btn-outline btn-success btn-1d btn-xs btn-rounded dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        <i class="fa fa-envelope"></i> Send SMS
                    </a>
                    <ul class="dropdown-menu" style="min-width: 150px;">
                        <li>
                            <!-- Link to Single SMS Modal -->
                            <a href="#singleSmsModal" data-toggle="modal">Single SMS</a>
                        </li>
                        <li>
                            <!-- Link to Bulk SMS Modal -->
                            <a href="#bulkSmsModal" data-toggle="modal">Bulk SMS (Excel/CSV)</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <style>
             /* Style for dropdown container */
            .dropdown-menu {
                background-color: #f8f9fa; /* Light background color */
                border: 1px solid #ddd; /* Light border */
                border-radius: 5px; /* Rounded corners */
                box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1); /* Soft shadow */
                padding: 8px 0; /* Space around items */
            } 

            /* Style for dropdown items */
            .dropdown-menu li a {
                color: #007bff; /* Primary color for text */
                padding: 10px 20px; /* Padding for clickable area */
                font-size: 14px; /* Adjust font size */
                font-weight: 500; /* Semi-bold text */
                display: block; /* Make link fill full width */
                text-decoration: none; /* Remove underline */
                transition: background-color 0.3s, color 0.3s; /* Smooth transitions */
            }

            /* Hover effect for dropdown items */
            .dropdown-menu li a:hover {
                background-color: #007bff; /* Darker blue on hover */
                color: #fff; /* White text on hover */
                border-radius: 4px; /* Rounded corners on hover */
            }



            /* Hover effect for dropdown button */
            .fcbtn.dropdown-toggle:hover {
                background-color: #218838; /* Darker green on hover */
                color: #fff; /* Keep white text */
            }

    </style>

 <!-- Changes October 20, 2024 -->



    <div class="table-responsive m-t-30">
        <table class="table table-hover table-striped" id="precinctTable">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Title</th>
                    <th scope="col">Requirements</th>
                    <th scope="col">Details</th>
                    <th scope="col">Fees</th>
                    <th scope="col">Phone Number</th>
                    <th scope="col">Qr Code</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                </tr>
            </thead>
            <tbody>
                <?php if (!empty($services)) : ?>
                    <?php $no = 1;
                    foreach ($services as $row) : ?>
                        <tr>
                            <td><?= $no ?></td>
                            <td><?= $row['title'] ?></td>
                            <td><?= $row['requires'] ?></td>
                            <td><?= $row['description'] ?></td>
                            <td><?= $row['fees'] ?></td>
                            <td><?= $row['phone'] ?></td>
                            <td><?= !empty($row['qr_code']) ? '<img width="50" height="50" src="' . site_url('assets/uploads/') . $row['qr_code'] . '"/>' : null ?></td>
                            <td><?= $row['status'] == 'Active' ? '<span class="label label-table label-success">Active</span>' : '<span class="label label-danger">Inactive</span>' ?></td>
                            <td>
                                <a type="button" href="#edit" data-toggle="modal" onclick="editService(this)" title="Edit Precinct" data-stat="<?= $row['status'] ?>" data-req="<?= $row['requires'] ?>" data-phone="<?= $row['phone'] ?>" data-fees="<?= $row['fees'] ?>" data-title="<?= $row['title'] ?>" data-details="<?= $row['description'] ?>" data-id="<?= $row['id'] ?>">
                                    <i class="fa fa-pencil text-inverse m-r-10"></i> </a>
                                <a href="<?= site_url('services/delete/') . $row['id'] ?>" onclick="return confirm('Are you sure you want to delete this services?');" data-toggle="tooltip" data-original-title="Remove">
                                    <i class="fa fa-close text-danger"></i> </a>
                            </td>
                        </tr>
                    <?php $no++;
                    endforeach ?>
                <?php endif ?>
            </tbody>
        </table>
    </div>
</div>

 <!-- Modals for services, Single sms and Bulk SMS -->
<?php $this->load->view('services/modal') ?>
<?php $this->load->view('services/bulk_sms_modal') ?>