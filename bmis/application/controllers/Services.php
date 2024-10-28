<?php
defined('BASEPATH') or exit('No direct script access allowed');

// Load Twilio and PhpSpreadsheet libraries
require 'vendor/autoload.php';
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
        if (!$this->session->userdata('logged_in') || !has_permission('send_sms')) {
            redirect('services', 'refresh');
        }

        $phone_number = $this->input->post('phone_number');
        $message = $this->input->post('message');

        // Validate phone number and message
        $this->form_validation->set_rules('phone_number', 'Phone Number', 'required|regex_match[/^[0-9]{11}$/]');
        $this->form_validation->set_rules('message', 'Message', 'required|trim|max_length[160]');

        if ($this->form_validation->run() === FALSE) {
            $this->session->set_flashdata('errors', validation_errors());
        } else {
            if ($this->_send_sms($phone_number, $message)) {
                $this->session->set_flashdata('message', 'SMS sent successfully!');
            } else {
                $this->session->set_flashdata('errors', 'Failed to send SMS!');
            }
        }
        redirect('services', 'refresh');
    }

    private function _send_sms($phone, $message)
    {
        // Twilio credentials
        $sid = 'ACec210be61162c61f13e50ecaf4980419';
        $token = 'f21a6b6a64c4a2516f5fd42d69e6a5f0';
        $from = '+14158010932';

        // Initialize Twilio client
        $client = new Client($sid, $token);

        try {
            // Send SMS
            $client->messages->create($phone, [
                'from' => $from,
                'body' => $message
            ]);
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
