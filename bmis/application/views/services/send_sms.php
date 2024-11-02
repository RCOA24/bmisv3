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
        // Check if Twilio SDK is loaded
        if (!class_exists('Twilio\Rest\Client')) {
            log_message('error', 'Twilio SDK not loaded');
            $this->session->set_flashdata('errors', 'Twilio SDK not loaded.');
            redirect('services', 'refresh');
            return;
        }
    
        $smsType = $this->input->post('smsType');
        $filter = $this->input->post('filter');  
        $sid = 'ACec210be61162c61f13e50ecaf4980419';
        $token = '1a8428078d0b22c63e577bf9dc7b9ece'; 
        $from = '+14158010932';
        $client = new Client($sid, $token);
    
        // Sending BULK SMS
        if ($smsType == 'bulk') {
            // Set validation rules
            $this->form_validation->set_rules('file', 'File', 'required');
            $this->form_validation->set_rules('bulkMessage', 'Message', 'required|trim|max_length[160]');

            // Run form validation
            if ($this->form_validation->run() === FALSE) {
                $this->session->set_flashdata('errors', validation_errors());
                redirect('services', 'refresh');
                return;
            }

            // Check if file was uploaded
            if (empty($_FILES['file']['name'])) {
                $this->session->set_flashdata('errors', 'The File field is required.');
                redirect('services', 'refresh');
                return;
            }

            $filePath = $_FILES['file']['tmp_name'];
            $bulkMessage = $this->input->post('bulkMessage');

            try {
                // Load the spreadsheet
                $spreadsheet = IOFactory::load($filePath);
                $sheet = $spreadsheet->getActiveSheet();

                // Initialize columns
                $phoneColumn = $genderColumn = $ageColumn = null;

                // Get the header row
                $headerRow = $sheet->getRowIterator()->current();
                foreach ($headerRow->getCellIterator() as $cell) {
                    $headerValue = strtolower(trim($cell->getValue()));
                    if ($headerValue === 'phone') {
                        $phoneColumn = $cell->getColumn();
                    } elseif ($headerValue === 'gender') {
                        $genderColumn = $cell->getColumn();
                    } elseif ($headerValue === 'age') {
                        $ageColumn = $cell->getColumn();
                    }
                }

                // Ensure required columns are found
                if (!$phoneColumn || !$genderColumn || !$ageColumn) {
                    throw new Exception('Missing one or more required columns: Phone, Gender, Age.');
                }

                // Iterate through the rows in the sheet
                foreach ($sheet->getRowIterator(2) as $row) {
                    $phone = $sheet->getCell($phoneColumn . $row->getRowIndex())->getValue();
                    $gender = strtolower(trim($sheet->getCell($genderColumn . $row->getRowIndex())->getValue()));
                    $age = (int)$sheet->getCell($ageColumn . $row->getRowIndex())->getValue();

                    // Filter based on gender and age
                    if (
                        ($filter === 'men' && $gender === 'male') ||
                        ($filter === 'women' && $gender === 'female') ||
                        ($filter === 'seniors' && $age >= 60) ||
                        ($filter === 'all')
                    ) {
                        // Check if phone number is valid
                        if ($phone) {
                            try {
                                $client->messages->create($phone, [
                                    'from' => $from,
                                    'body' => $bulkMessage
                                ]);
                                log_message('info', "Bulk SMS sent to $phone");
                            } catch (Exception $e) {
                                log_message('error', 'Error sending SMS to ' . $phone . ': ' . $e->getMessage());
                                $this->session->set_flashdata('errors', 'Error sending SMS to ' . $phone . ': ' . $e->getMessage());
                            }
                        }
                    }
                }

                $this->session->set_flashdata('message', 'Bulk SMS sent successfully!');
            } catch (Exception $e) {
                log_message('error', 'Error processing file: ' . $e->getMessage());
                $this->session->set_flashdata('errors', 'Error processing file: ' . $e->getMessage());
            }
        } else {
            // Handle single SMS sending
            $this->form_validation->set_rules('phone', 'Phone Number', 'required|regex_match[/^\+?[1-9]\d{1,14}$/]'); 
            $this->form_validation->set_rules('singleMessage', 'Message', 'required|trim|max_length[160]');

            if ($this->form_validation->run() === FALSE) {
                $this->session->set_flashdata('errors', validation_errors());
                redirect('services', 'refresh');
                return;
            }

            // Sending Single SMS
            $phone = $this->input->post('phone');
            $singleMessage = $this->input->post('singleMessage');
    
            try {
                $client->messages->create($phone, [
                    'from' => $from,
                    'body' => $singleMessage
                ]);
                $this->session->set_flashdata('message', 'Single SMS sent successfully!');
            } catch (Exception $e) {
                log_message('error', 'Error sending SMS: ' . $e->getMessage());
                $this->session->set_flashdata('errors', 'Error sending SMS: ' . $e->getMessage());
            }
        }
        
        redirect('services', 'refresh');
    }
}