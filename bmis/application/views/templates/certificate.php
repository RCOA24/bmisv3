<?php
   $query1 = $this->db->query("SELECT sname FROM system_info WHERE id=1");
   $ss = $query1->row();
   
   $query2 = $this->db->query("SELECT * FROM cert_settings WHERE id=1");
   $certs = $query2->row();
   ?>
<?php $current_page = $this->uri->segment(1); ?>
<!DOCTYPE html>
<html lang="en">
   <head>
      <?php $this->load->view('templates/header') ?>
      <title><?= $title ?> | <?= $ss->sname ?></title>
   </head>
   <body class="fix-header mini-sidebar">
      <!-- Preloader -->
      <div class="preloader">
         <div class="cssload-speeding-wheel"></div>
      </div>
      <div id="wrapper">
         <!-- ===== Top-Navigation ===== -->
         <?php $this->load->view('templates/topbar') ?>
         <!-- ===== Top-Navigation-End ===== -->
         <!-- ===== Left-Sidebar ===== -->
         <?php $this->load->view('templates/sidebar') ?>
         <!-- ===== Left-Sidebar-End ===== -->
         <!-- Page Content -->
         <div class="page-wrapper">
            <div class="container-fluid">
               <div class="row">
                  <div class="col-md-12">
                     <div class="myadmin-alert myadmin-alert-icon myadmin-alert-click alert-success myadmin-alert-top alertSuccess" id="success">
                        <i class="icon-check"></i> <span id="msg"></span> <a href="#" class="closed">×</a>
                     </div>
                     <div class="myadmin-alert myadmin-alert-icon myadmin-alert-click alert-danger myadmin-alert-top alertError">
                        <i class="icon-info"></i> <span id="alertErrorMessage"></span> <a href="#" class="closed">&times;</a>
                     </div>
                     <?php if ($this->session->flashdata('errors') !== null) : ?>
                     <div class="myadmin-alert myadmin-alert-icon myadmin-alert-click alert-danger myadmin-alert-top alertSuccess" style="display:block">
                        <i class="icon-check"></i> <?= $this->session->flashdata('errors'); ?> <a href="#" class="closed">×</a>
                     </div>
                     <?php endif ?>
                     <?php if ($this->session->flashdata('message') !== null) : ?>
                     <div class="myadmin-alert myadmin-alert-icon myadmin-alert-click alert-success myadmin-alert-top alertSuccess" style="display:block">
                        <i class="icon-check"></i> <?= $this->session->flashdata('message'); ?> <a href="#" class="closed">×</a>
                     </div>
                     <?php endif ?>
                     <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-6 text-left">
                           <h2 class="m-0">Generate <?= ($title) ?></h2>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-6 text-right m-b-10">
                           <?php if ($current_page == 'generate_brgy_cert') : ?>
                           <button onclick="openBrgCert_Pment()" class="btn btn-info btn-outline" type="button"> <span><i class="fa fa-check"></i> Payment</span> </button>
                           <?php elseif ($current_page == 'generate_indi_cert') : ?>
                           <button onclick="openIndiCert_Pment()" class="btn btn-info btn-outline" type="button"> <span><i class="fa fa-check"></i> Payment</span> </button>
                           <?php elseif ($current_page == 'generate_resi_cert') : ?>
                           <button onclick="openResiCert_Pment();" class="btn btn-info btn-outline" type="button"> <span><i class="fa fa-check"></i> Payment</span> </button>
                           <?php elseif ($current_page == 'generate_cert') : ?>
                           <button onclick="openCustomCert_Pment()" class="btn btn-info btn-outline" type="button"> <span><i class="fa fa-check"></i> Payment</span> </button>
                           <?php elseif ($current_page == 'generate_business_permit') : ?>
                           <button onclick="openPermit_Pment()" class="btn btn-info btn-outline" type="button"> <span><i class="fa fa-check"></i> Payment</span> </button>
                           <?php endif ?>
                           <?php if ($this->session->flashdata('paid') !== null || $current_page == 'view_cert') : ?>
                           
                              <!-- dec 29, 3:19pm-->
                              <button onclick="generatePDF()" class="btn btn-danger btn-outline" type="button" style="padding: 10px 20px; border-radius: 5px;">
                               <span><i class="fa fa-print"></i> Print and Download the PDF</span>
                              </button>
                           <?php endif ?>
                        </div>
                        <div style="text-align: right; margin-top: 20px;">
                        </div>
                     </div>

                          <!-- dec 29-->
                     <style>
                          /* Define the printable area wrapper with margins */
                          .printableWrapper {
                        width: 210mm; /* A4 width */
                        height: 297mm; /* A4 height */
                        margin: auto; /* Center the content on the page */
                        position: relative; /* Enable relative positioning */
                        box-sizing: border-box;
                        }
                        /* Define the actual printable area */
                        .printableArea {
                        width: 100%; /* Fill the wrapper */
                        height: 100%; /* Fill the wrapper */
                        background-image: url('<?= site_url() . "assets/uploads/background.jpg" ?>');
                        background-size: cover; /* Ensure the background image covers the entire area */
                        background-position: center center; /* Center the background image */
                        background-repeat: no-repeat; /* Prevent image repetition */
                        overflow: hidden; /* Prevent content overflow */
                        position: relative; /* Enable relative positioning for child elements */
                        padding: 35px; /* Internal padding for content */
                        box-sizing: border-box;
                        background: transparent; /* Ensure no additional background conflicts */
                        }
                        /* Ensure no content is clipped or hidden during print */
                        @media print {
                        body {
                        margin: 0;
                        padding: 0;
                        background-image: url('<?= site_url() . "assets/uploads/background.jpg" ?>');
                        background-size: cover; /* Make the background image cover the entire page */
                        background-position: center center; /* Center the image */
                        background-repeat: no-repeat; /* Prevent image repetition */
                        width: 210mm;
                        height: 297mm;
                        }
                        .printableWrapper {
                        margin: auto; /* Keep margins in print */
                        }
                        footer, nav, .no-print {
                        display: none !important;
                        }
                        }
                        /* Style for the remarks container */
                        #cert_remarks {
                        background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
                        padding: 10px; /* Add some padding for better spacing */
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Optional: Subtle shadow for a pop-out effect */
                        }
                        #cert_remarks h6 {
                        margin: 0; /* Remove default margin for better alignment */
                        }
                        #cert_remarks img {
                        margin-top: 10px; /* Space between text and image */
                        }
                        #cert_body {
                        background-color: rgba(255, 255, 255, 0.8); /* Transparent white background */
                       
                      
                        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2); /* Optional: Subtle shadow */
                        position: relative; /* For child elements' positioning */
}
                     </style>

     <!-- dec 29-->
     <!-- dec 29-->
                     <!-- Wrapper for margin -->
                     <div class="printableWrapper">
                        <div class="printableArea" style="background-image: url('<?= site_url() . "assets/uploads/background.jpg" ?>'); background-size: cover;">
                           <div class="row" style="margin-bottom:2px;">
                              <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                                 <img src="<?= site_url() . 'assets/uploads/' . $info->city_logo ?>" class="img-fluid" width="120">
                              </div>
                              <div class="col-md-6 col-sm-6 col-xs-6 text-center">
                                 <h5 class="m-b-0" style="line-height:1.2">Republic of the Philippines <br>Province of <?= ucwords($info->province) ?> <br><?= $info->town ?></h5>
                                 <h3 class="font-bold m-b-0 m-t-0">
                                 Barangay  <?= ucwords($info->brgy_name) ?></i></h2>
                                 <p class="m-t-0 font-12 font-bold">Contact No. <?= $info->number ?>/Email:<?= $info->email ?></p>
                              </div>
                              <div class="col-md-3 col-sm-3 col-xs-3 text-center">
                                 <img src="<?= site_url() . 'assets/uploads/' . $info->brgy_logo ?>" class="img-fluid" width="120">
                              </div>
                           </div>
                           <div class="row" id="cert_cont">
                              <div class="col-md-4 col-sm-4 col-xs-4 text-center" style="background-color: <?= $certs->color_bg ?> !important" id="cert_sidebar">
                                 <!--  <h5 class="font-bold m-b-0 m-t-20">SANGGUNIANG <?= ucwords($info->brgy_name) ?> </h5> -->
                                 <!--  <h5 class="font-bold"><?= $info->starts . '-' . $info->end ?></h5>  -->
                                 <img src="<?= site_url() . 'assets/img/abms_logo-blackk.png' ?>" alt="Barangay Borol Primero" class="b-all m-t-10" width="100" height="100">
                                 <h5 class="m-t-10 font-bold m-b-0"><?= strtoupper($captain->name) ?></h5>
                                 <p class="text-dark">Punong Barangay</p>
                                 <h5 class="m-t-30 m-b-20 font-bold">SANGGUNIANG BARANGAY KAGAWAD</h5>
                                 <?php if (!empty($kagawad)) : ?>
                                 <?php foreach ($kagawad as $row) : ?>
                                 <p class="font-bold" style="font-size: 13px; margin-bottom: 5px;"><?= strtoupper($row['name']) ?></p>
                                 <p class="text-dark" style="font-size: 11px; margin-bottom: 10px;"><?= $row['position'] ?></p>
                                 <!-- Display chairmanship here with adjusted font size -->
                                 <?php endforeach ?>
                                 <?php endif ?>
                                 <hr style="border-top: 1px solid #333; margin: 5px 0;">
                                 <?php if (!empty($selected_off)) : ?>
                                 <?php foreach ($selected_off as $row) : ?>
                                 <p class="font-bold m-b-0"><?= strtoupper($row['name']) ?></p>
                                 <p class="text-dark"><?= $row['position'] ?></p>
                                 <?php endforeach ?>
                                 <?php endif ?>
                              </div>
                              <div class="col-md-8 col-sm-8 col-xs-8" id="cert_body">
                                 <img src="<?= site_url() . 'assets/uploads/' . $certs->watermark ?>" class="img-fluid" width="400" id="brgy_logo">
                                 <div id="cert_content">
                                    <div class="text-center">
                                       <h8 class="m-t-20 m-b-0 font-bold">
                                       Republic of the Philippines <br>Province of Bulacan <br>Balagtas </h5>
                                       <h8 class="m-t-20 m-b-0 font-bold">
                                       Municipality of Balagtas</h5> <br>
                                       <h8 class="m-t-20 m-b-0 font-bold">
                                       Barangay Borol 1st </h5> <br>
                                       <h8 class="m-t-20 m-b-0 font-bold">
                                       OFFICE OF THE PUNONG BARANGAY</h5>
                                    </div>
                                    <div class="text-center">
                                       <h2 class="m-t-10 font-bold"><?= strtoupper($title) ?></h2>
                                    </div>
                                    <!-- page content -->
                                    <?= $content ?>
                                 </div>
                                 <?php if ($current_page == 'generate_brgy_cert' || $current_page == 'generate_indi_cert' || $current_page == 'generate_resi_cert') : ?>
                                 <div class="col-md-12 col-sm-12 col-xs-12 m-t-20">
                                    <div class="row">
                                       <div class="col-md-6 col-sm-6 col-xs-6 text-center" style="margin-bottom:-30px;" style="<?= $current_page == 'generate_brgy_cert' ? null : 'visibility:hidden' ?>">
                                          <?php if (empty($this->session->flashdata('pic_on')) || $this->session->flashdata('pic_on') == 'pic_on') : ?>
                                          <?php if (!empty($resident->picture)) : ?>
                                          <img src="<?= preg_match('/data:image/i', $resident->picture) ? $resident->picture : site_url() . 'assets/uploads/resident_profile/' . $resident->picture ?>" alt="Resident Profile" class="b-all" width="100" height="100">
                                          <img src="<?= site_url() . 'assets/img/box.png' ?>" alt="Resident Profile" class="b-all" width="100" height="100">
                                          <?php else : ?>
                                          <img src="<?= site_url() . 'assets/img/person.png' ?>" alt="Resident Profile" class="b-all" width="100" height="100">
                                          <?php endif ?>
                                          <?php endif ?>
                                          <div class="m-t-40">
                                             <?php if (empty($this->session->flashdata('res_sig_on')) || $this->session->flashdata('res_sig_on') == 'res_sig_on') : ?>
                                             <p style="border-top: 1px solid black;">Signature &nbsp; &nbsp;  &nbsp; || &nbsp; &nbsp; &nbsp;    Right Thumb </p>
                                             <?php endif ?>
                                          </div>
                                       </div>
                                       <div class="col-md-6 col-sm-6 col-xs-6 text-center" style="position:relative; top:30px">
                                          <?php if (empty($this->session->flashdata('signature')) || $this->session->flashdata('signature') == 'On') : ?>
                                          <img src="<?= site_url() . '/assets/uploads/' . $certs->signature ?>" class="m-t-40 m-b-0" width="150" height="60" style="position:absolute; top:-90px; left:20%">
                                          <?php endif ?>
                                          <div class="p-2 text-bottom mt-5">
                                             <h6 class="font-bold m-b-0 "><?= strtoupper($captain->name) ?></h6>
                                             <p class="">PUNONG BARANGAY</p>
                                          </div>
                                          <?php if ($this->session->flashdata('official')) : ?>
                                          <p class="m-b-0 text-left m-t-20">Issued By:</p>
                                          <div class="text-center">
                                             <h6 class="font-bold m-b-0 text-uppercase"><u><?= $this->session->flashdata('official') ?></u></h6>
                                             <p class="m-b-0">Barangay Official On Duty</p>
                                          </div>
                                          <?php endif ?>
                                       </div>
                                    </div>
                                    <div class="row">
                                       <div class="col-md-6 col-sm-6 col-xs-6 text-left" style="margin-top:-30px">
                                       </div>
                                    </div>
                                 </div>
                                 <?php endif ?>
                                 <span style="position: absolute;bottom:0; right:10px"><?= !empty($this->session->flashdata('valid')) ? 'Valid Until: ' . date('F d, Y', strtotime($this->session->flashdata('valid'))) : null ?> </span>
                              </div>
                           </div>
                           <div class="row b-l b-r b-b m-b-0" id="cert_remarks">
                              <div class="col-md-6 col-sm-6 col-xs-6">
                                 <h6>Remarks: <br><b><?= empty($this->session->flashdata('remarks')) ? null : $this->session->flashdata('remarks') ?></b></h6>
                                 <img src="<?= site_url() . '/assets/uploads/' . $certs->flag ?>" class="img-fluid" width="160" id="flag">
                              </div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>

                 <!-- dec 29-->
            <!-- /.container-fluid -->
            <footer class="footer t-a-c"> © <?= date('Y') ?> <?= $ss->sname ?></footer>
         </div>
         <!-- /#page-wrapper -->
      </div>
      <!-- /#wrapper -->
      <?php $this->load->view('modal/brgy_info.php') ?>
      <?php $this->load->view('modal/modals.php') ?>
      <!-- ==============================
         Required JS Files
         =============================== -->
      <?php $this->load->view('templates/footer') ?>
      <?php $this->load->view('payments/modal') ?>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.4.0/jspdf.umd.min.js"></script>


                                          <!-- dec 29-->
                                          <script>
    async function generatePDF() {
        const printableArea = document.querySelector('.printableArea');

        if (!printableArea) {
            alert('Printable area not found!');
            return;
        }

        const scale = 2; // High-quality scaling
        try {
            const canvas = await html2canvas(printableArea, {
                scale: scale,
                useCORS: true,
                backgroundColor: null, // Preserve transparency
                logging: true,
                windowWidth: document.body.scrollWidth,
                windowHeight: document.body.scrollHeight,
            });

            // Convert canvas to image
            const imgData = canvas.toDataURL('image/png');

            // Create jsPDF instance
            const { jsPDF } = window.jspdf;
            const pdf = new jsPDF({
                orientation: 'portrait',
                unit: 'mm',
                format: 'a4',
            });

            // Add the image to the PDF
            pdf.addImage(imgData, 'PNG', 0, 0, 210, 297);

            // Open the print preview
            const pdfBlob = pdf.output('blob');
            const pdfURL = URL.createObjectURL(pdfBlob);

            // Open the PDF in a new tab and show the print dialog
            const newWindow = window.open(pdfURL);
            if (newWindow) {
                newWindow.print();
            } else {
                alert('Please allow pop-ups for this site to preview the PDF.');
            }
        } catch (error) {
            console.error('Error generating PDF:', error);
            alert('Failed to generate PDF. Please try again.');
        }
    }
</script>
   </body>
</html>