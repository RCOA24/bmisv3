<div class="bg-light" style="padding: 60px 0; background-color: #F5FCFF !important;">
    <div class="container">
        <div class="row justify-content-center">
            <!-- Population Section -->
            <div class="col-md-8">
                <h2 class="text-center font-weight-bold" style="color: #133319; margin-bottom: 40px; text-transform: uppercase;">Population</h2>

                <!-- Population Table -->
                <div class="table-responsive mb-5">
                    <table class="table table-bordered" style="box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2); border-radius: 8px; overflow: hidden;">
                        <thead class="text-light" style="background-color: #133319;">
                            <tr>
                                <th style="text-align: center; font-size: 18px; padding: 12px;">Census</th>
                                <th style="text-align: center; font-size: 18px; padding: 12px;">Count</th>
                            </tr>
                        </thead>
                        <tbody style="background: #fff; border-bottom: 2px solid #ddd;">
                            <tr>
                                <td style="font-weight: bold; text-align: center; font-size: 16px; padding: 12px;">Population</td>
                                <td style="font-weight: bold; text-align: center; font-size: 16px; padding: 12px;"><?= number_format($population) ?></td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                
<!-- Organizational Tree Chart Section -->
<h2 class="text-center font-weight-bold mt-5" style="color: #133319; text-transform: uppercase;">Organizational Chart</h2>
<div class="tree-container mt-5 mb-5" style="padding: 30px; border-radius: 12px; background: #fff; box-shadow: 0 4px 15px rgba(0, 0, 0, 0.4);">
    <div class="tree">
        <!-- Punong Barangay -->
        <div class="punong-barangay">
            <?php $captain = $this->OfficialsModel->getCaptain(); ?>
            <a href="#">
                <img class="profile-img" src="<?= empty($captain->avatar) ? site_url('assets/img/person.png') : site_url('assets/uploads/avatar/') . $captain->avatar . '?v=' . time() ?>" alt="<?= $captain->name ?>" />
                <h4><?= ucwords($captain->name) ?></h4>
                <h5><?= strtoupper($captain->position) ?></h5>
            </a>
        </div>

        <!-- Secretary and Treasurer (aligned horizontally) -->
        <div class="officials">
            <div class="official secretary">
                <?php $selectedOfficials = $this->OfficialsModel->getselectedOfficial(); ?>
                <?php foreach ($selectedOfficials as $selected) : ?>
                    <?php if (strpos($selected['position'], 'Secretary') !== false) : ?>
                        <a href="#">
                            <img class="profile-img" src="<?= empty($selected['avatar']) ? site_url('assets/img/person.png') : site_url('assets/uploads/avatar/') . $selected['avatar'] . '?v=' . time() ?>" alt="<?= $selected['name'] ?>" />
                            <h4><?= ucwords($selected['name']) ?></h4>
                            <h5><?= strtoupper($selected['position']) ?></h5>
                        </a>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
            <div class="official treasurer">
                <?php foreach ($selectedOfficials as $selected) : ?>
                    <?php if (strpos($selected['position'], 'Treasurer') !== false) : ?>
                        <a href="#">
                            <img class="profile-img" src="<?= empty($selected['avatar']) ? site_url('assets/img/person.png') : site_url('assets/uploads/avatar/') . $selected['avatar'] . '?v=' . time() ?>" alt="<?= $selected['name'] ?>" />
                            <h4><?= ucwords($selected['name']) ?></h4>
                            <h5><?= strtoupper($selected['position']) ?></h5>
                        </a>
                    <?php endif; ?>
                <?php endforeach; ?>
            </div>
        </div>

        <!-- Barangay Kagawads -->
        <div class="kagawads">
            <?php $kagawads = $this->OfficialsModel->getkagawadOfficial(); ?>
            <?php foreach ($kagawads as $kagawad) : ?>
                <div class="official">
                    <a href="#">
                        <img class="profile-img" src="<?= empty($kagawad['avatar']) ? site_url('assets/img/person.png') : site_url('assets/uploads/avatar/') . $kagawad['avatar'] . '?v=' . time() ?>" alt="<?= $kagawad['name'] ?>" />
                        <h4><?= ucwords($kagawad['name']) ?></h4>
                        <h5><?= strtoupper($kagawad['position']) ?></h5>
                    </a>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>



<!-- CSS Styles -->
<style>
.tree-container {
    text-align: center;
}

.tree {
    display: flex;
    flex-direction: column;
    align-items: center;
    position: relative;
}

.punong-barangay {
    margin-bottom: 20px;
    position: relative;
}

.punong-barangay a {
    display: block;
    text-align: center;
}


.profile-img {
    width: 80px;
    height: 80px;
    border-radius: 50%;
    object-fit: cover;
    margin-bottom: 10px;
}

h4 {
    margin: 5px 0;
    font-size: 16px;
    font-weight: bold;
}

h5 {
    font-size: 14px;
    color: #555;
    text-transform: uppercase;
}

.officials {
    display: flex;
    justify-content: space-between;
    width: 60%; /* Adjust the width of the row with Secretary and Treasurer */
    margin-bottom: 30px;
    position: relative;
}

.officials::before {
    content: '';
    position: absolute;
    top: -30px;
    left: 50%;
    width: 2px;
    height: 30px;
    background-color: #ccc;
    margin-left: -1px; /* Center the line */
}

.official {
    display: inline-block;
    width: 45%; /* Ensures each official takes up half of the row */
    text-align: center;
    position: relative;
}

.official .line {
    content: '';
    position: absolute;
    top: -30px; /* Position the line just above the official */
    left: 50%;
    width: 2px;
    height: 30px;
    background-color: #ccc;
    margin-left: -1px; /* Center the line */
}

.kagawads {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    position: relative;
}

.kagawads::before {
    content: '';
    position: absolute;
    top: -30px;
    left: 50%;
    width: 2px;
    height: 30px;
    background-color: #ccc;
    margin-left: -1px; /* Center the line */
}

.kagawads .official {
    margin: 10px;
    width: 150px;
    text-align: center;
    position: relative;
}

.kagawads .official::before {
    content: '';
    position: absolute;
    top: -30px;
    left: 50%;
    width: 2px;
    height: 30px;
    background-color: #ccc;
    margin-left: -1px; /* Center the line */
}

.kagawads .official img {
    position: relative;
}

@media (max-width: 768px) {
    .officials {
        flex-direction: column;
        width: 80%;
    }

    .official {
        width: 100%;
        margin-bottom: 15px;
    }

    .kagawads {
        flex-direction: column;
    }

    .kagawads .official {
        width: 80%;
        margin-bottom: 15px;
    }
}


</style>
