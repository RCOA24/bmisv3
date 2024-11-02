<?php
require 'vendor/autoload.php'; // Load PhpSpreadsheet and Twilio

use PhpOffice\PhpSpreadsheet\IOFactory;
use Twilio\Rest\Client;

class Services extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library(['session', 'form_validation']);
    }

    public function send_sms()
    {
         // Load Twilio library and credentials
         $sid = 'ACec210be61162c61f13e50ecaf4980419';
         $token = '9f6a976102cceca37f313a5cee894218';
         $from = '+14158010932';
        $client = new Client($sid, $token);

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $smsType = $this->input->post('smsType');

            // Single SMS
            if ($smsType == 'single') {
                $phone = $this->input->post('phone');
                $message = $this->input->post('singleMessage');

                if (!empty($phone) && !empty($message)) {
                    try {
                        $client->messages->create($phone, [
                            'from' => $from,
                            'body' => $message
                        ]);
                        $this->session->set_flashdata('message', 'Single SMS sent successfully!');
                    } catch (Exception $e) {
                        $this->session->set_flashdata('errors', 'Error sending SMS: ' . $e->getMessage());
                    }
                }
            }
            // Bulk SMS
            elseif ($smsType == 'bulk' && isset($_FILES['file'])) {
                $filePath = $_FILES['file']['tmp_name'];
                $filter = $this->input->post('filter');
                $bulkMessage = $this->input->post('bulkMessage');

                try {
                    $spreadsheet = IOFactory::load($filePath);
                    $sheet = $spreadsheet->getActiveSheet();

                    $data = [];
                    foreach ($sheet->getRowIterator() as $row) {
                        $cellIterator = $row->getCellIterator();
                        $cellIterator->setIterateOnlyExistingCells(false);

                        $rowData = [];
                        foreach ($cellIterator as $cell) {
                            $rowData[] = $cell->getValue();
                        }
                        $data[] = $rowData;
                    }

                    // Loop through the data and send filtered SMS
                    foreach ($data as $person) {
                        $phone = $person[1]; // Assuming phone is in column 2

                        if ($phone) {
                            try {
                                $client->messages->create($phone, [
                                    'from' => $from,
                                    'body' => $bulkMessage
                                ]);
                                echo "Bulk SMS sent to $phone <br>";
                            } catch (Exception $e) {
                                $this->session->set_flashdata('errors', 'Error sending SMS to ' . $phone . ': ' . $e->getMessage());
                            }
                        }
                    }
                    $this->session->set_flashdata('message', 'Bulk SMS sent successfully!');
                } catch (Exception $e) {
                    $this->session->set_flashdata('errors', 'Error processing file: ' . $e->getMessage());
                }
            }

            
        }
    }
}

