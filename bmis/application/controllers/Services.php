<?php
defined('BASEPATH') or exit('No direct script access allowed');

// Load Twilio and PhpSpreadsheet libraries
require_once APPPATH . '../vendor/autoload.php';



use PhpOffice\PhpSpreadsheet\IOFactory;
use Twilio\Rest\Client;

class Services extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('permissions');  // Load the helper with has_permission
        $this->load->library(['session', 'form_validation', 'upload', 'image_lib']);
        $this->load->model(['servicesModel', 'settingsModel']);
    }

    public function index()
    {
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            redirect('login', 'refresh');
        }

        $data['services'] = $this->servicesModel->services();
        $data['title'] = 'Services Management';
        $this->base->load('default', 'services/manage', $data);
    }

    public function save()
    {
        $this->_configure_upload();

        $this->form_validation->set_rules('title', 'Service Title', 'required|trim');
        $this->form_validation->set_rules('req', 'Requirements', 'required|trim');
        $this->form_validation->set_rules('desc', 'Details', 'required|trim');
        $this->form_validation->set_rules('fees', 'Service Fee', 'required|numeric|trim');
        $this->form_validation->set_rules('phone', 'Mobile No', 'required|regex_match[/^[0-9]{11}$/]|trim');

        if ($this->form_validation->run() === FALSE) {
            $this->session->set_flashdata('message', validation_errors());
        } else {
            $data = $this->_prepare_service_data();
            $insert = $this->servicesModel->save($data);

            if ($insert) {
                $this->_log_activity('Service created: ' . $this->input->post('title'));
                $this->session->set_flashdata('message', 'Service has been created!');
            } else {
                $this->session->set_flashdata('errors', 'Service not saved!');
            }
        }

        redirect('services', 'refresh');
        
    }

    

    public function update()
    {
        $this->_configure_upload();

        $id = $this->input->post('id');
        $this->form_validation->set_rules('title', 'Service Title', 'required|trim');
        $this->form_validation->set_rules('req', 'Requirements', 'required|trim');
        $this->form_validation->set_rules('desc', 'Details', 'required|trim');
        $this->form_validation->set_rules('fees', 'Service Fee', 'required|numeric|trim');
        $this->form_validation->set_rules('phone', 'Mobile No', 'required|regex_match[/^[0-9]{11}$/]|trim');

        if ($this->form_validation->run() === FALSE) {
            $this->session->set_flashdata('message', validation_errors());
        } else {
            $data = $this->_prepare_service_data();
            $update = $this->servicesModel->update($data, $id);

            if ($update) {
                $this->_log_activity('Service updated: ' . $this->input->post('title'));
                $this->session->set_flashdata('message', 'Service has been updated!');
            } else {
                $this->session->set_flashdata('errors', 'No changes have been made!');
            }
        }

        redirect('services', 'refresh');
    }

    public function delete($id)
    {
        if ($this->servicesModel->delete($id)) {
            $this->_log_activity('Service deleted: ' . $id);
            $this->session->set_flashdata('message', 'Service has been deleted!');
        } else {
            $this->session->set_flashdata('errors', 'Something went wrong!');
        }

        redirect('services', 'refresh');
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

    // Sending BULK SMS WORKING
    if ($smsType === 'bulk') {
        $this->form_validation->set_rules('bulkMessage', 'Message', 'required|trim|max_length[160]');
        

        // Check if form validation fails
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

    

    private function _send_sms($phones, $message)
{
    // Twilio credentials
    $sid = 'ACec210be61162c61f13e50ecaf4980419'; // Twilio SID
    $token = '1a8428078d0b22c63e577bf9dc7b9ece'; // Twilio Token nov 2
    $from = '+14158010932'; // Twilio Phone Number

    // Initialize Twilio client
    $client = new Client($sid, $token);

    try {
        // Check if $phones is an array (for bulk SMS) or a single string (for single SMS)
        if (is_array($phones)) {
            // Bulk SMS handling
            foreach ($phones as $phone) {
                $client->messages->create($phone, [
                    'from' => $from,
                    'body' => $message
                ]);
                log_message('info', 'Bulk SMS sent to: ' . $phone);
            }
        } else {
            // Single SMS handling
            $client->messages->create($phones, [
                'from' => $from,
                'body' => $message
            ]);
            log_message('info', 'Single SMS sent to: ' . $phones);
        }
        return true;
    } catch (Exception $e) {
        // Log error and set flash message for error display
        log_message('error', 'Twilio SMS error: ' . $e->getMessage());
        return false;
    }
}


    private function _configure_upload()
    {
        $config['upload_path'] = 'assets/uploads/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['encrypt_name'] = TRUE;
        $this->upload->initialize($config);
    }

    private function _prepare_service_data()
    {
        $data = [
            'title' => $this->input->post('title'),
            'description' => $this->input->post('desc'),
            'fees' => $this->input->post('fees'),
            'phone' => $this->input->post('phone'),
            'requires' => $this->input->post('req'),
            'status' => $this->input->post('status')
        ];

        if ($this->upload->do_upload('code')) {
            $file = $this->upload->data();
            $data['qr_code'] = $file['file_name'];
            $this->_resize_image($file['file_name']);
        }

        return $data;
    }

    private function _resize_image($filename)
    {
        $config['image_library'] = 'gd2';
        $config['source_image'] = 'assets/uploads/' . $filename;
        $config['create_thumb'] = FALSE;
        $config['maintain_ratio'] = TRUE;
        $config['quality'] = '60%';
        $config['new_image'] = 'assets/uploads/' . $filename;

        $this->image_lib->initialize($config);
        $this->image_lib->resize();
    }

    private function _log_activity($activity)
    {
        $log = [
            'activity' => $activity,
            'user_id' => $this->session->id,
        ];
        $this->settingsModel->insert_activity($log);
    }
}
?>