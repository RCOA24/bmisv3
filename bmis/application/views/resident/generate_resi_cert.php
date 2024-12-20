<div style="margin-bottom:80px"></div>
<p class="m-t-40" style="text-indent: 40px;">
    This is to certify that
    <b><?= strtoupper($resident->firstname . ' ' . $resident->middlename . ' ' . $resident->lastname) ?></b>, <?= floor((time() - strtotime($resident->birthdate)) / 31556926); ?>
    years old, <?= ucwords($resident->gender) ?>, <?= ucwords($resident->civilstatus) ?>,
    <?= ucwords($resident->citizenship) ?> and resident of <?= ucwords($resident->address) ?> for more than <?= $this->session->flashdata('years') ?>
    years now.
</p>
<p style="text-indent: 40px;">
    This certification is issued upon <?= $this->session->flashdata('gender') != 'her' ? '<u>his</u>\her' : 'his\<u>her</u>' ?> request for <b><?= $this->session->flashdata('purpose') ?></b> and whatever legal purpose it may serve.
</p>
<p style="text-indent: 40px;">Issued this <?= date('jS') ?> day of <?= date('F') ?>, <?= date('Y') ?> at <?= $info->brgy_name . ', ' . $info->town . ', ' . $info->province ?>.</p>
<div style="margin-bottom:200px"></div>