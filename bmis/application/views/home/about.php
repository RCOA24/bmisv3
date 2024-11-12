<div class="bg-light" style="padding: 60px 0;">
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

                <!-- Organizational Chart Section with Drop Shadow -->
                <h2 class="text-center font-weight-bold mt-5" style="color: #133319; text-transform: uppercase;">Organizational Chart</h2>
                <div class="mt-5 mb-5" style="box-shadow: 0 4px 15px rgba(0, 0, 0, 0.4); padding: 30px; border-radius: 12px; background: #fff;">
                    <div class="row">
                        <?php foreach ($officials as $row) : ?>
                            <div class="col-md-4 col-sm-6 col-12 mb-4">
                                <div class="card" style="box-shadow: 0 4px 10px rgba(0,0,0,0.1); border: none; border-radius: 8px;">
                                    <img class="card-img-top" src="<?= empty($row['avatar']) ? site_url('assets/img/person.png') : site_url('assets/uploads/avatar/') . $row['avatar'] ?>" alt="Card image cap" style="border-radius: 8px 8px 0 0; height: 100%; object-fit: cover;">
                                    <div class="card-body text-center" style="background: #f8f9fa;">
                                        <h4 class="card-title font-weight-bold" style="color: #333;"><?= ucwords($row['name']) ?></h4>
                                        <h5 class="card-title" style="color: #555;"><?= ucwords($row['position']) ?></h5>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
