<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('OfficialsModel');
        $this->load->model('settingsModel'); // Assuming you need this model for $this->settingsModel
        $this->load->model('dashboardModel'); // Assuming you need this model for $this->dashboardModel
        $this->load->model('residentModel'); // Assuming you need this model for $this->residentModel
        $this->load->model('servicesModel'); // Assuming you need this model for $this->servicesModel
        $this->load->model('requestModel'); // Assuming you need this model for $this->requestModel
    }

    public function index()
    {
        redirect('client');
    }

    public function client()
    {
        $data['info'] = $this->settingsModel->getbrgy_Info();

        $data['title'] = 'Home';

        $this->base->load('client', 'home/home', $data);
    }

    public function about()
    {
        $data['info'] = $this->settingsModel->getbrgy_Info();
        $data['officials'] = $this->officialsModel->getOfficials();
        $data['population'] = $this->dashboardModel->getTotalPopulation();
    
        // Add organizational chart data
        $data['captain'] = $this->officialsModel->getCaptain();
        $data['selectedOfficials'] = $this->officialsModel->getselectedOfficial();
        $data['kagawads'] = $this->officialsModel->getkagawadOfficial();
    
        $data['title'] = 'About the Barangay';
    
        $this->base->load('client', 'home/about', $data);
    }

    public function map()
    {
        $data['info'] = $this->settingsModel->getbrgy_Info();

        $data['title'] = 'Map of Barangay';

        $this->base->load('client', 'home/map', $data);
    }

    public function announcement()
    {
        $data['info'] = $this->settingsModel->getbrgy_Info();
        $data['announce'] = $this->dashboardModel->getAnnouncement();

        $data['title'] = 'Barangay Announcement';

        $this->base->load('client', 'home/announcement', $data);
    }

    public function profile()
    {
        if (!$this->session->logged_in || $this->session->role != 'resident') {
            redirect('client', 'refresh');
        }

        $data['res'] = $this->residentModel->getProfile($this->session->resident_id);

        $data['title'] = 'My Profile';

        $this->base->load('client', 'home/profile', $data);
    }

    public function resident($id)
    {
        $data['res'] = $this->residentModel->getProfile($id);

        $data['title'] = 'Resident Profile';

        $this->base->load('client', 'home/resident', $data);
    }

    public function services()
    {
        $data['services'] = $this->servicesModel->getActiveservices();

        $data['title'] = 'Services';

        $this->base->load('client', 'home/services', $data);
    }

    public function change_pass()
    {
        if (!$this->session->flashdata('username')) {
            redirect('client/login', 'refresh');
        }

        $data['info'] = $this->settingsModel->getbrgy_Info();
        $data['title'] = 'Change Password';

        $this->base->load('client', 'home/change_password', $data);
    }

    public function service_info($id)
    {
        $data['services'] = $this->servicesModel->getservice($id);

        $data['title'] =  $data['services']->title;

        $this->base->load('client', 'home/service_info', $data);
    }

    public function transactions()
    {
        $id = $this->session->resident_id;
        $data['trans'] = $this->requestModel->transactions($id);

        $data['title'] = 'My Transactions';

        $this->base->load('client', 'home/transaction', $data);
    }

    public function login()
    {
        if ($this->session->logged_in && $this->session->role == 'resident') {
            redirect('profile', 'refresh');
        }

        $data['info'] = $this->settingsModel->getbrgy_Info();

        $data['title'] = 'Login';

        $this->base->load('client', 'home/login', $data);
    }

    public function register()
    {
        if ($this->session->userdata('logged_in')) {
            redirect('profile', 'refresh');
        }

        $data['info'] = $this->settingsModel->getbrgy_Info();

        $data['title'] = 'Registration';

        $this->base->load('client', 'home/register', $data);
    }
}
