<!-- select_users_view.php -->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Users for Bulk SMS</title>
    <link rel="stylesheet" href="<?= base_url('assets/css/bootstrap.min.css'); ?>">
</head>
<body>

<div class="container mt-5">
    <h2>Select Users for Bulk SMS</h2>

    <?php if ($this->session->flashdata('errors')): ?>
        <div class="alert alert-danger"><?= $this->session->flashdata('errors'); ?></div>
    <?php endif; ?>

    <form action="<?= site_url('services/bulk_sms_modal'); ?>" method="POST">
        <div class="table-responsive">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Select</th>
                        <th>Phone Number</th>
                        <th>Gender</th>
                        <th>Age</th>
                    </tr>
                </thead>
                <tbody>
                    <?php foreach ($users as $user): ?>
                    <tr>
                        <td>
                            <input type="checkbox" name="selectedUsers[]" value="<?= $user['phone']; ?>">
                        </td>
                        <td><?= htmlspecialchars($user['phone']); ?></td>
                        <td><?= htmlspecialchars($user['gender']); ?></td>
                        <td><?= htmlspecialchars($user['age']); ?></td>
                    </tr>
                    <?php endforeach; ?>
                </tbody>
            </table>
        </div>

        <div class="form-group">
            <label for="bulkMessage">Message</label>
            <textarea id="bulkMessage" name="bulkMessage" class="form-control" required placeholder="Enter your bulk message here..."></textarea>
        </div>

        <button type="submit" class="btn btn-success">Send Bulk SMS</button>
    </form>
</div>

<script src="<?= base_url('assets/js/jquery.min.js'); ?>"></script>
<script src="<?= base_url('assets/js/bootstrap.bundle.min.js'); ?>"></script>
</body>
</html>
