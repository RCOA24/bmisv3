<div class="bg-light" style="background-color: #F5FCFF !important;">
    <div class="container">
        <div class="text-center pt-5 pb-3">
            <h1 class="welcome_text">Announcement</h1>
        </div>
        <div class="row d-flex align-items-stretch">
            <!-- Announcements Section -->
            <div class="col-md-8 mb-4">
    <div class="h-100 d-flex flex-column">
        <?php foreach ($announce as $row) : ?>
            <div class="p-4 pt-2 bg-dark text-light mb-4 flex-grow-1">
                <h1><?= ucwords($row['what']) ?></h1>
                <p>By: <?= ucwords($row['who']) ?> this <?= date('F d, Y h:i:s A', strtotime($row['date'])) ?></p>
                <p><?= ucwords($row['description']) ?></p>
                <p>Venue: <?= ucwords($row['venue']) ?></p>
                <?php if (!empty($row['docs'])) : ?>
                    <img src="<?= site_url('assets/uploads/') .  $row['docs'] ?>" class="img-fluid w-100">
                <?php endif ?>
            </div>
        <?php endforeach ?>
    </div>
</div>



            <!-- Facebook Feed Section -->
            <div class="col-md-4">
                <div class="upcoming-events h-100 d-flex align-items-stretch">
                    <div class="feed-content flex-grow-1">
                        <div class="fb-page" 
                             data-href="https://www.facebook.com/profile.php?id=61553658700933" 
                             data-tabs="timeline" 
                             data-small-header="true" 
                             data-adapt-container-width="true" 
                             data-hide-cover="false" 
                             data-show-facepile="true"
                             data-height="900"  
                             style="height: 100%;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- Include the Facebook SDK -->
<script async defer crossorigin="anonymous" 
        src="https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v14.0">
</script>

<style>
    .feed-content {
        padding: 20px;
        background-color: #f5f5f5;
        border: 1px solid #ddd;
        border-radius: 8px;
        display: flex;
        flex-direction: column;
        justify-content: center;
    }

    .welcome_text {
        font-size: 2.5rem;
        font-weight: bold;
        color: #102407;
    }

   
</style>
