<div class="bg-dark" style="background-color: #F5FCFF !important;">
    <div class="container text-light pt-4">
        <div class="text-center">
        <h1 class="welcome_text" style="color: #102407;">ONLINE DOCUMENTS OFFERED:</h1>
        </div>
        <div class="w-75 mr-auto ml-auto mt-5">
    <?php foreach ($services as $row) : ?>
        <div class="bg-gradient p-4 text-light mt-4" style="border-radius: 20px;">
            <h3><?= $row['title'] ?></h3>
            <p><?= $row['description'] ?></p>
            <div class="text-right">
                <a href="<?= site_url('client/services_info/') . $row['id'] ?>" class="btn btn-sm btn-primary pr-4 pl-4 pt-2 pb-2" style="border-radius: 10px;">PROCEED</a>
            </div>
        </div>
    <?php endforeach ?>
</div>
<div style="height:200px"></div>
</div>

<style>
    .bg-gradient {
        background: linear-gradient(135deg, #102407, #2e4c33); /* Gradient from #102407 to a lighter shade of green */
    }
    .bg-gradient h3, .bg-gradient p {
        color: #ffffff; /* Make the text color white for better contrast */
    }
</style>
