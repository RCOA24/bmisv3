<!-- Modal -->
<div class="modal fade" id="add" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Create Services</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('services/save') ?>" enctype="multipart/form-data">
                    <input type="hidden" name="size" value="1000000">
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" class="form-control" placeholder="Enter Position" name="title" required>
                    </div>
                    <div class="form-group">
                        <label>Requirements</label>
                        <textarea class="form-control" placeholder="Enter Requirements" name="req" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Details</label>
                        <textarea class="form-control" placeholder="Enter Details" name="desc" required></textarea>
                    </div>
                    <div class="form-group">
                        <label>Fees</label>
                        <input type="number" class="form-control" placeholder="Enter Fees" name="fees" required>
                    </div>
                    <div class="form-group">
                        <label>Upload Gcash QR Code</label>
                        <input type="file" class="form-control" accept="image/*" name="code">
                    </div>
                    <div class="form-group">
                        <label>Mobile No.(<i>ex.09123456789</i>)</label>
                        <input type="tel" class="form-control" placeholder="Enter Number" pattern="[0-9]{11}" required name="phone">
                    </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Create</button>
            </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal -->
<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h5 class="modal-title" id="exampleModalLabel">Edit Srvices</h5>
            </div>
            <div class="modal-body">
                <form method="POST" action="<?= site_url('services/update') ?>" enctype="multipart/form-data">
                    <input type="hidden" name="size" value="1000000">
                    <div class="form-group">
                        <label>Title</label>
                        <input type="text" class="form-control" placeholder="Enter Services name" name="title" required id="title">
                    </div>
                    <div class="form-group">
                        <label>Requirements</label>
                        <textarea class="form-control" placeholder="Enter Requirements" name="req" required id="req"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Details</label>
                        <textarea class="form-control" placeholder="Enter Details" name="desc" required id="desc"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Fees</label>
                        <input type="number" class="form-control" placeholder="Enter Fees" name="fees" required id="fees">
                    </div>
                    <div class="form-group">
                        <label>Upload Gcash QR Code</label>
                        <input type="file" class="form-control" accept="images/*" name="code" id="qr">
                    </div>
                    <div class="form-group">
                        <label>Mobile No.(<i>ex.09123456789</i>)</label>
                        <input type="tel" class="form-control" placeholder="Enter Number" pattern="[0-9]{11}" name="phone" required id="phone">
                    </div>
                    <div class="form-group">
                        <label>Status</label>
                        <select class="form-control" name="status" id="stat">
                            <option>Active</option>
                            <option>Inactive</option>
                        </select>
                    </div>

            </div>
            <div class="modal-footer">
                <input type="hidden" name="id" id="ser_id">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                <button type="submit" class="btn btn-primary">Update</button>
            </div>
            </form>
        </div>
    </div>
</div>


<!-- SMS MODAL Oct 20  -->

<!-- SMS Modal -->
<div id="sendSmsModal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Barangay Borol Primero SMS</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <!-- Single SMS Form -->
                <h3>Send Single SMS</h3>
                <form id="singleSmsForm" action="<?= site_url('services/send_sms') ?>" method="POST">
                    <input type="hidden" name="smsType" value="single">
                    <div class="form-group">
                        <label for="phone">Phone Number</label>
                        <input type="text" id="phone" name="phone" placeholder="Enter phone number (e.g. +639123456789)" required class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="message">Message</label>
                        <textarea id="message" name="singleMessage" class="form-control" required placeholder="Enter your message here..."></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send SMS</button>
                </form>

                <hr>

                <!-- Bulk SMS Form -->
                <h3>Send Bulk SMS</h3>
                <form id="bulkSmsForm" action="<?= site_url('services/send_sms') ?>" method="POST" enctype="multipart/form-data">
                    <input type="hidden" name="smsType" value="bulk">
                    <div class="form-group">
                        <label for="file">Upload Excel/CSV File</label>
                        <input type="file" id="file" name="file" class="form-control" accept=".csv, .xlsx" required>
                    </div>
                    <div class="form-group">
                        <label for="filter">Select Filter</label>
                        <select id="filter" name="filter" class="form-control">
                            <option value="all">Send to All</option>
                            <option value="men">Send to Men</option>
                            <option value="women">Send to Women</option>
                            <option value="seniors">Send to Senior Citizens (60+)</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="bulkMessage">Message</label>
                        <textarea id="bulkMessage" name="bulkMessage" class="form-control" required placeholder="Enter your bulk message here..."></textarea>
                    </div>
                    <button type="submit" class="btn btn-success">Send Bulk SMS</button>
                </form>
            </div>
        </div>
    </div>
</div>
