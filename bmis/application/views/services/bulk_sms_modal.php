<!-- Bulk SMS Modal -->
<div id="bulkSmsModal" class="modal fade" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title">Send Bulk SMS</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
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