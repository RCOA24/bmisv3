<?php $current_page = $this->uri->segment(1); ?>
<aside class="sidebar" role="navigation">
    <div class="scroll-sidebar">
        <div class="user-profile">
            <div class="dropdown user-pro-body">
                <div class="profile-image">
                    <?php if (!empty($this->session->avatar)) : ?>
                        <img src="<?= preg_match('/data:image/i', $this->session->avatar) ? $this->session->avatar : site_url() . '/assets/uploads/avatar/' . $this->session->avatar ?>" alt="User Image" class="img-circle">
                    <?php else : ?>
                        <img src="<?= site_url() ?>/assets/img/person.png" alt="User Image" class="img-circle">
                    <?php endif ?>
                    <a href="javascript:void(0);" class="dropdown-toggle u-dropdown text-blue" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        <span class="badge badge-success">
                            <i class="fa fa-angle-down"></i>
                        </span>
                    </a>
                    <ul class="dropdown-menu animated flipInY">
                        <li><a href="#edit_profile" data-toggle="modal"><i class="fa fa-user"></i> Edit Profile</a></li>
                        <li><a href="#changepass" data-toggle="modal"><i class="icon-lock-open"></i> Change Password</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="<?= site_url('auth/logout') ?>"><i class="fa fa-power-off"></i> Logout</a></li>
                    </ul>
                </div>
                <p class="profile-text m-t-15 m-b-0 font-16" style="color:#8d9498"><a href="javascript:void(0);"> <?= ucwords($this->session->username) ?></a></p>
                <small class="profile-text"><a href="javascript:void(0);"> <span class="user-level"><?= ucfirst($this->session->role) ?></a></small>
            </div>
        </div>
        <nav class="sidebar-nav">
            <ul id="side-menu">
                <li>
                    <a href="<?= site_url('dashboard') ?>" aria-expanded="false" class="<?= $current_page == 'dashboard' ? 'active' : null ?>">
                        <i class="icon-screen-desktop fa-fw"></i> <span class="hide-menu"> Dashboard</span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('officials') ?>" aria-expanded="false"><i class="icon-user-following fa-fw"></i> <span class="hide-menu"> Brgy Officials & Staff</span></a>
                </li>
                <li>
                    <a href="<?= site_url('resident') ?>" aria-expanded="false" class="<?= $current_page == 'resident_info' ? 'active' : null ?>">
                        <i class="icon-people fa-fw"></i> <span class="hide-menu"> Resident Information</span>
                    </a>
                </li>
                <li>
                    <a href="<?= site_url('services') ?>" aria-expanded="false" class="<?= $current_page == 'services' ? 'active' : null ?>">
                        <i class="fa fa-gears fa-fw"></i> <span class="hide-menu"> Document Processing <span class="caret pull-right"></span></span>
                    </a>
                    <ul class="collapse">

                    <li>
                    <a href="<?= site_url('services') ?>" aria-expanded="false" class="<?= $current_page == 'services' ? 'active' : null ?>"><i class="fa fa-gears fa-fw"></i> <span class="hide-menu"> Services</span></a>
                </li>
                        <li>
                            <a href="<?= site_url('request') ?>" class="<?= $current_page == 'request' ? 'active' : null ?>"><i class="icon-flag fa-fw"></i> Requested Documents</a>
                        </li>
                        <li>
                            <a href="<?= site_url('resident_certification') ?>" class="<?= $current_page == 'resident_certification' ? 'active' : null ?>"><i class="icon-badge fa-fw"></i> Barangay Certificates</a>
                        </li>
                        <li>
                            <a href="<?= site_url('certificates') ?>" class="<?= $current_page == 'create_certificates' ? 'active' : null ?>"><i class="icon-docs fa-fw"></i> Create Certificates</a>
                        </li>
                        <li>
                            <a href="<?= site_url('business') ?>" class="<?= $current_page == 'generate_business_permit' ? 'active' : null ?>"><i class="icon-doc fa-fw"></i> Business Clearance</a>
                        </li>
                      
                    </ul>
                </li>
                <li>
                    <a href="<?= site_url('announcement') ?>" aria-expanded="false" class="<?= $current_page == 'announcement' ? 'active' : null ?>"><i class="icon-pin fa-fw"></i> <span class="hide-menu"> Announcement</span></a>
                </li>
                <li>
                    <a href="<?= site_url('houses') ?>" aria-expanded="false" class="<?= $current_page == 'house_info' ? 'active' : null ?>"><i class="icon-home fa-fw"></i> <span class="hide-menu"> Households</span></a>
                </li>
                <li>
                    <a href="<?= site_url('backup') ?>" aria-expanded="false"><i class="fa fas fa-download fa-fw"></i> <span class="hide-menu"> Backup</span></a>
                </li>
                <?php if ($this->session->role == 'staff') : ?>
                    <li>
                        <a href="#support" data-toggle="modal" aria-expanded="false"><i class="icon-flag fa-fw"></i> <span class="hide-menu"> Contact Support</span></a>
                    </li>
                <?php endif ?>

                <?php if ($this->session->role == 'administrator') : ?>
                    <li>
                        <a class="waves-effect" href="javascript:void(0);" aria-expanded="false"><i class="icon-wrench fa-fw"></i> <span class="hide-menu"> Settings <span class="caret pull-right"></span></span>
                        </a>
                        <ul aria-expanded="false" class="collapse">
                            <li><a href="#barangay" data-toggle="modal">Barangay Info</a></li>
                            <li><a href="#cert" data-toggle="modal">Certificate</a></li>
                            <li><a href="<?= site_url('purok') ?>">Street</a></li>
                            <li><a href="<?= site_url('position') ?>">Positions</a></li>
                            <li><a href="<?= site_url('chairmanship') ?>">Chairmanship</a></li>
                            <li><a href="<?= site_url('user') ?>">Users</a></li>
                            <li><a href="<?= site_url('support') ?>">Support</a></li>
                            <li><a href="#restore" data-toggle="modal">Restore</a></li>
                            <li><a href="#importCSV" data-toggle="modal">Import Residents</a></li>
                            <li><a href="#system" data-toggle="modal">System Info</a></li>
                            <li><a href="<?= site_url('activity_logs') ?>">Activity Logs</a></li>
                        </ul>
                    </li>
                <?php endif ?>
            </ul>
        </nav>
    </div>
</aside>
