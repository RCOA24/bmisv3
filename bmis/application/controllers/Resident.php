<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Resident extends CI_Controller
{

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */

    public function __construct()
    {
        parent::__construct();
        include APPPATH . 'third_party/phpqrcode/qrlib.php';
    }

    public function index()
    {
        
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            //redirect them to the dasboard page
            redirect('login', 'refresh');

        }
        
        $data['resident'] = $this->residentModel->getResident();

        $data['title'] = 'Barangay Residents';
        $this->base->load('default', 'resident/residents', $data);
    }

    public function residentscerts()
    {
        $columns = array(
            0 => 'id',
            1 => 'national_id',
            2 => 'picture',
            3 => 'alias',
            4 => 'birthdate',
            5 => 'age',
            6 => 'civilstatus',
            7 => 'gender',
            8 => 'purok',
            9 => 'voterstatus',
            10 => 'resident_type',
            11 => 'pwd',
        );

        $limit = $this->input->post('length');
        $start = $this->input->post('start');
        $order = $columns[$this->input->post('order')[0]['column']];
        $dir = $this->input->post('order')[0]['dir'];

        $totalData = $this->residentModel->allres_count();

        $totalFiltered = $totalData;

        if (empty($this->input->post('search')['value'])) {

            $residents = $this->residentModel->allres($limit, $start, $order, $dir);
        } else {
            $search = $this->input->post('search')['value'];
            $residents =  $this->residentModel->res_search($limit, $start, $search, $order, $dir);
            $totalFiltered = $this->residentModel->res_search_count($search);
        }

        $data = array();
        if (!empty($residents)) {
            foreach ($residents as $res) {
                if (empty($res->picture)) {
                    $nestedData['name'] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                        <img width='30' height='30' class='img-circle' alt='user' src='" . site_url('assets/img/person.png') . "'/></a>"
                        . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
                } else {
                    $nestedData['name'] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                        <img width='30' height='30' class='img-circle' alt='user' 
                        src='" . preg_match('/data:image/i', $res->picture) ? $res->picture : site_url() . "assets/uploads/resident_profile/" . $res->picture . "'/></a>"
                        . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
                }

                $nestedData['nat_id']       = $res->national_id;
                $nestedData['alias']        = $res->alias;
                $nestedData['birthdate']    = date('F d, Y', strtotime($res->birthdate));
                $nestedData['age']          = floor((time() - strtotime($res->birthdate)) / 31556926);;
                $nestedData['cstatus']      = $res->civilstatus;
                $nestedData['gender']       = $res->gender;
                $nestedData['purok']        = $res->purok;

                if ($this->session->role == 'administrator' || $this->session->role == 'manager') {
                    $nestedData['vstatus']    = $res->gender;
                }

                $nestedData['alive']        = '<span class="label label-primary">' . $res->resident_type . '</span>';
                $nestedData['pwd']          = $res->pwd;
                $nestedData['action']       = '<a type="button" href="' . site_url('generate_brgy_cert/') . $res->id . '" data-toggle="tooltip" data-original-title="Generate Barangay Certificate"><i class="fa fa-file-text-o text-inverse m-r-10"></i> </a>';
                $nestedData['action']       .= '<a type="button" href="' . site_url('generate_indi_cert/') . $res->id . '" data-toggle="tooltip" data-original-title="Generate Indigency Certificate"><i class="fa fa-file-text-o text-info m-r-10"></i> </a>';
                $nestedData['action']       .= '<a type="button" href="' . site_url('generate_resi_cert/') . $res->id . '" data-toggle="tooltip" data-original-title="Generate Residency Certificate"><i class="fa fa-file-text-o text-success m-r-10"></i> </a>';
            }
        }
        $json_data = array(
            "draw"            => intval($this->input->post('draw')),
            "recordsTotal"    => intval($totalData),
            "recordsFiltered" => intval($totalFiltered),
            "data"            => $data
        );

        echo json_encode($json_data);
    }

    public function create_resident()
    {
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            //redirect them to the dasboard page
            redirect('login', 'refresh');
        }
        $data['purok'] = $this->purokModel->getPurok();
        $data['precinct'] = $this->precinctModel->getPrecinct();
        $data['houses'] = $this->dashboardModel->getHouses();

        $data['title'] = 'Create Residents';
        $this->base->load('default', 'resident/create_resident', $data);
    }

    public function edit_resident($id)
    {
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            //redirect them to the dasboard page
            redirect('login', 'refresh');
        }
        $data['res'] = $this->residentModel->getProfile($id);
        $data['purok'] = $this->purokModel->getPurok();
        $data['precinct'] = $this->precinctModel->getPrecinct();
        $data['relation'] = $this->residentModel->getRelation($id);

        $data['title'] = 'Edit Residents';
        $this->base->load('default', 'resident/edit_resident', $data);
    }

    public function save_resident()
    {

        $validator = array('success' => false, 'msg' => array());

        $config['upload_path'] = 'assets/uploads/resident_profile/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        $this->form_validation->set_rules('fname', 'Firstname', 'required');
        $this->form_validation->set_rules('lname', 'Lastname', 'required');
        $this->form_validation->set_rules('address', 'Address', 'required');

        if ($this->form_validation->run() == FALSE) {

            $validator['success'] = false;
            $validator['msg'] = validation_errors();
        } else {
            if (empty($this->input->post('profileimg')) && !$this->upload->do_upload('img')) {
                $data = array(
                    'national_id' => $this->input->post('national'),
                    'citizenship' => $this->input->post('citizenship'),
                    'firstname' => $this->input->post('fname'),
                    'middlename' => $this->input->post('mname'),
                    'lastname' => $this->input->post('lname'),
                    'alias' => $this->input->post('alias'),
                    'birthplace' => $this->input->post('bplace'),
                    'birthdate' => $this->input->post('bdate'),
                    'age' => $this->input->post('age'),
                    'civilstatus' => $this->input->post('cstatus'),
                    'gender' => $this->input->post('gender'),
                    'purok' => $this->input->post('purok'),
                    'voterstatus' => $this->input->post('vstatus'),
                    'phone' => $this->input->post('number'),
                    'email' => $this->input->post('email'),
                    'occupation' => $this->input->post('occupation'),
                    'employer_name' => $this->input->post('employer'),
                    'pwd' => $this->input->post('pwd'),
                    'address' => $this->input->post('address')
                );
            } else if (!empty($this->input->post('profileimg'))) {

                $data = array(
                    'national_id' => $this->input->post('national'),
                    'citizenship' => $this->input->post('citizenship'),
                    'picture' => $this->input->post('profileimg'),
                    'firstname' => $this->input->post('fname'),
                    'middlename' => $this->input->post('mname'),
                    'lastname' => $this->input->post('lname'),
                    'alias' => $this->input->post('alias'),
                    'birthplace' => $this->input->post('bplace'),
                    'birthdate' => $this->input->post('bdate'),
                    'age' => $this->input->post('age'),
                    'civilstatus' => $this->input->post('cstatus'),
                    'gender' => $this->input->post('gender'),
                    'purok' => $this->input->post('purok'),
                    'voterstatus' => $this->input->post('vstatus'),
                    'phone' => $this->input->post('number'),
                    'email' => $this->input->post('email'),
                    'occupation' => $this->input->post('occupation'),
                    'employer_name' => $this->input->post('employer'),
                    'pwd' => $this->input->post('pwd'),
                    'address' => $this->input->post('address')
                );
            } else {

                $file = $this->upload->data();
                //Resize and Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = 'assets/uploads/resident_profile/' . $file['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = TRUE;
                $config['quality'] = '60%';
                $config['new_image'] = 'assets/uploads/resident_profile/' . $file['file_name'];

                $this->load->library('image_lib', $config);
                $this->image_lib->resize();


                $data = array(
                    'national_id' => $this->input->post('national'),
                    'citizenship' => $this->input->post('citizenship'),
                    'picture' => $file['file_name'],
                    'firstname' => $this->input->post('fname'),
                    'middlename' => $this->input->post('mname'),
                    'lastname' => $this->input->post('lname'),
                    'alias' => $this->input->post('alias'),
                    'birthplace' => $this->input->post('bplace'),
                    'birthdate' => $this->input->post('bdate'),
                    'age' => $this->input->post('age'),
                    'civilstatus' => $this->input->post('cstatus'),
                    'gender' => $this->input->post('gender'),
                    'purok' => $this->input->post('purok'),
                    'voterstatus' => $this->input->post('vstatus'),
                    'phone' => $this->input->post('number'),
                    'email' => $this->input->post('email'),
                    'occupation' => $this->input->post('occupation'),
                    'employer_name' => $this->input->post('employer'),
                    'pwd' => $this->input->post('pwd'),
                    'address' => $this->input->post('address')
                );
            }

            $insert_id = $this->residentModel->save($data);

            if ($insert_id) {

                $other_data = array(
                    'resident_id' => $insert_id,
                    'sss' => $this->input->post('sss'),
                    'tin' => $this->input->post('tin'),
                    'precinct' => $this->input->post('precinct'),
                    'gsis' => $this->input->post('gsis'),
                    'pagibig' => $this->input->post('pagibig'),
                    'philhealth' => $this->input->post('philhealth'),
                    'blood' => $this->input->post('blood'),
                );

                $house_info = array(
                    'resident_id' => $insert_id,
                    'house_number' => $this->input->post('house_no'),
                    'relation' => $this->input->post('relation'),
                );

                $data = array(
                    'resident_id ' => $insert_id,
                    'status' => 'Negative',
                );

                $this->residentModel->updateCovid($data, $insert_id);

                $this->residentModel->save_details($other_data);
                $this->residentModel->save_house_details($house_info);

                $log = array(
                    'activity' => 'Resident created: ' . $insert_id,
                    'user_id' => $this->session->id,
                );
                $this->settingsModel->insert_activity($log);

                $validator['success'] = true;
                $validator['msg'] = 'Resident successfully added!';
            } else {
                $validator['success'] = false;
                $validator['msg'] = 'Something went wrong. Please contact the administrator.';
            }
        }

        echo json_encode($validator);
    }

    public function saveHouse()
    {

        $validator = array('success' => false, 'msg' => array());

        $this->form_validation->set_rules('number', 'House Number', 'required|is_unique[house_number.number]');

        if ($this->form_validation->run() == FALSE) {

            $validator['success'] = false;
            $validator['msg'] = validation_errors();
        } else {
            $data = array(
                'number' => $this->input->post('number'),
                'info' => $this->input->post('info')
            );

            $insert = $this->residentModel->saveHouse($data);

            if ($insert) {

                $log = array(
                    'activity' => 'Household created: ' . $this->input->post('number'),
                    'user_id' => $this->session->id,
                );
                $this->settingsModel->insert_activity($log);

                $validator['success'] = true;
                $validator['msg'] = 'House number successfully added!';
            } else {
                $validator['success'] = false;
                $validator['msg'] = 'Something went wrong. Please contact the administrator';
            }
        }

        echo json_encode($validator);
    }

    public function search_house()
    {

        $search = $_GET['searchTerm'];

        $result = $this->residentModel->getHouseNumber($search);
        $json = [];
        foreach ($result as $row) {
            $json[] = ['id' => $row['number'], 'text' => $row['number']];
        }

        echo json_encode($json);
    }

    public function update_resident()
    {

        $validator = array('success' => false, 'msg' => array());

        $config['upload_path'] = 'assets/uploads/resident_profile/';
        $config['allowed_types'] = 'jpg|png|jpeg|gif';
        $config['encrypt_name'] = TRUE;

        $this->load->library('upload', $config);

        $this->form_validation->set_rules('fname', 'Firstname', 'required');
        $this->form_validation->set_rules('lname', 'Lastname', 'required');
        $this->form_validation->set_rules('address', 'Address', 'required');

        if ($this->form_validation->run() == FALSE) {

            $validator['success'] = false;
            $validator['msg'] = validation_errors();
        } else {

            $id = $this->input->post('res_id');
            if (empty($this->input->post('profileimg')) && !$this->upload->do_upload('editimg')) {
                $data = array(
                    'national_id' => $this->input->post('national'),
                    'citizenship' => $this->input->post('citizenship'),
                    'firstname' => $this->input->post('fname'),
                    'middlename' => $this->input->post('mname'),
                    'lastname' => $this->input->post('lname'),
                    'alias' => $this->input->post('alias'),
                    'birthplace' => $this->input->post('bplace'),
                    'birthdate' => $this->input->post('bdate'),
                    'age' => $this->input->post('age'),
                    'civilstatus' => $this->input->post('cstatus'),
                    'gender' => $this->input->post('gender'),
                    'purok' => $this->input->post('purok'),
                    'voterstatus' => $this->input->post('vstatus'),
                    'phone' => $this->input->post('number'),
                    'email' => $this->input->post('email'),
                    'occupation' => $this->input->post('occupation'),
                    'employer_name' => $this->input->post('employer'),
                    'pwd' => $this->input->post('pwd'),
                    'address' => $this->input->post('address'),
                    'resident_type' => $this->input->post('deceased'),
                    'remarks' => $this->input->post('remarks')
                );
                $this->residentModel->update($data, $id);
            } else if (!empty($this->input->post('profileimg'))) {

                $data = array(
                    'national_id' => $this->input->post('national'),
                    'citizenship' => $this->input->post('citizenship'),
                    'picture' => $this->input->post('profileimg'),
                    'firstname' => $this->input->post('fname'),
                    'middlename' => $this->input->post('mname'),
                    'lastname' => $this->input->post('lname'),
                    'alias' => $this->input->post('alias'),
                    'birthplace' => $this->input->post('bplace'),
                    'birthdate' => $this->input->post('bdate'),
                    'age' => $this->input->post('age'),
                    'civilstatus' => $this->input->post('cstatus'),
                    'gender' => $this->input->post('gender'),
                    'purok' => $this->input->post('purok'),
                    'voterstatus' => $this->input->post('vstatus'),
                    'phone' => $this->input->post('number'),
                    'email' => $this->input->post('email'),
                    'occupation' => $this->input->post('occupation'),
                    'employer_name' => $this->input->post('employer'),
                    'pwd' => $this->input->post('pwd'),
                    'address' => $this->input->post('address'),
                    'resident_type' => $this->input->post('deceased'),
                    'remarks' => $this->input->post('remarks'),
                );
                $this->residentModel->update($data, $id);
            } else {

                $file = $this->upload->data();
                //Resize and Compress Image
                $config['image_library'] = 'gd2';
                $config['source_image'] = 'assets/uploads/resident_profile/' . $file['file_name'];
                $config['create_thumb'] = FALSE;
                $config['maintain_ratio'] = TRUE;
                $config['quality'] = '60%';
                $config['new_image'] = 'assets/uploads/resident_profile/' . $file['file_name'];

                $this->load->library('image_lib', $config);
                $this->image_lib->resize();


                $data = array(
                    'national_id' => $this->input->post('national'),
                    'citizenship' => $this->input->post('citizenship'),
                    'picture' => $file['file_name'],
                    'firstname' => $this->input->post('fname'),
                    'middlename' => $this->input->post('mname'),
                    'lastname' => $this->input->post('lname'),
                    'alias' => $this->input->post('alias'),
                    'birthplace' => $this->input->post('bplace'),
                    'birthdate' => $this->input->post('bdate'),
                    'age' => $this->input->post('age'),
                    'civilstatus' => $this->input->post('cstatus'),
                    'gender' => $this->input->post('gender'),
                    'purok' => $this->input->post('purok'),
                    'voterstatus' => $this->input->post('vstatus'),
                    'phone' => $this->input->post('number'),
                    'email' => $this->input->post('email'),
                    'occupation' => $this->input->post('occupation'),
                    'employer_name' => $this->input->post('employer'),
                    'pwd' => $this->input->post('pwd'),
                    'address' => $this->input->post('address'),
                    'resident_type' => $this->input->post('deceased'),
                    'remarks' => $this->input->post('remarks'),
                );
                $this->residentModel->update($data, $id);
            }

            $other_data = array(
                'sss' => $this->input->post('sss'),
                'tin' => $this->input->post('tin'),
                'precinct' => $this->input->post('precinct'),
                'gsis' => $this->input->post('gsis'),
                'pagibig' => $this->input->post('pagibig'),
                'philhealth' => $this->input->post('philhealth'),
                'blood' => $this->input->post('blood'),
            );

            $house_info = array(
                'resident_id' => $id,
                'house_number' => $this->input->post('house_no'),
                'relation' => $this->input->post('relation'),
            );

            $log = array(
                'activity' => 'Resident updated: ' .  $id,
                'user_id' => $this->session->id,
            );
            $this->settingsModel->insert_activity($log);

            $this->residentModel->update_details($other_data, $id);
            $this->residentModel->update_house_details($house_info, $id);

            $validator['success'] = true;
            $validator['msg'] = 'Resident has been updated!';
        }

        echo json_encode($validator);
    }

    public function covidUpdate()
    {

        $id = $this->input->post('res_id');
        $data = array(
            'resident_id ' => $this->input->post('res_id'),
            'status' => $this->input->post('status'),
            'date_vaccinated' => $this->input->post('date'),
            'vaccinator_name' => $this->input->post('vac_name'),
            'manufacturer' => $this->input->post('manufacturer'),
            'batch_no' => $this->input->post('batch'),
            'lot_no' => $this->input->post('lot_no'),
            'date_vaccinated_1' => $this->input->post('date1'),
            'vaccinator_name_1' => $this->input->post('vac_name1'),
            'manufacturer_1' => $this->input->post('manufacturer1'),
            'batch_no_1' => $this->input->post('batch1'),
            'lot_no_1' => $this->input->post('lot_no1'),
            'remarks' => $this->input->post('remarks')
        );

        $update = $this->residentModel->updateCovid($data, $id);

        if ($update) {

            $log = array(
                'activity' => 'Covid status updated: ' .  $id,
                'user_id' => $this->session->id,
            );
            $this->settingsModel->insert_activity($log);

            $this->session->set_flashdata('message', 'COVID Status has been updated!');
        } else {
            $this->session->set_flashdata('errors', 'No changes has been made!');
        }

        redirect('resident', 'refresh');
    }

    public function delete($id)
    {

        $delete = $this->residentModel->delete($id);

        if ($delete) {
            $log = array(
                'activity' => 'Resident deleted: ' .  $id,
                'user_id' => $this->session->id,
            );
            $this->settingsModel->insert_activity($log);

            $this->session->set_flashdata('errors', 'Resident has been deleted!');
        } else {
            $this->session->set_flashdata('errors', 'Something went wrong!');
        }
        redirect('resident', 'refresh');
    }

    public function exportCSV()
    {
        $log = array(
            'activity' => 'Exported resident',
            'user_id' => $this->session->id,
        );
        $this->settingsModel->insert_activity($log);
    
        $this->load->dbutil();
    
        // Run the query and check for errors
        $query = $this->db->query("
            SELECT 
                residents.national_id,
                residents.citizenship,
                residents.firstname,
                residents.middlename,
                residents.lastname,
                residents.alias,
                residents.birthplace,
                residents.birthdate,
                residents.age,
                residents.civilstatus,
                residents.gender,
                residents.purok,
                residents.voterstatus,
                residents.phone,
                residents.email,
                residents.occupation,
                residents.employer_name,
                residents.pwd,              
                residents.address,
                other_details.sss AS sss_no,
                other_details.tin AS tin_no,
                other_details.precinct AS precinct,
                other_details.gsis AS gsis_no,
                other_details.pagibig AS pagibig_no,
                other_details.philhealth AS philhealth_no
            
            FROM residents 
            LEFT JOIN other_details ON residents.id = other_details.resident_id
        ");
    
        // Check if the query executed successfully
        if ($query === false) {
            // Log the error message if the query failed
            $db_error = $this->db->error();
            log_message('error', 'Database error: ' . $db_error['message']);
            
            // Set a flash message to notify the user of the error
            $this->session->set_flashdata('message', 'Error exporting CSV: ' . $db_error['message']);
            redirect($_SERVER['HTTP_REFERER'], 'refresh');
            return;
        }
    
        // Check if there are results
        if ($query->num_rows() > 0) {
            $csv = $this->dbutil->csv_from_result($query);
    
            $this->load->helper('download');
            force_download(date('F-d-h:i:s') . '-residents.csv', $csv);
        } else {
            // If no data is returned, set a flash message to inform the user
            $this->session->set_flashdata('message', 'No data available to export.');
            redirect($_SERVER['HTTP_REFERER'], 'refresh');
        }
    
        exit;
    }
    
    


    public function brgy_cert()
    {
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            //redirect them to the dasboard page
            redirect('login', 'refresh');
        }
        $data['resident'] = $this->residentModel->getResident();

        $data['title'] = 'Barangay Certificates';
        $this->base->load('default', 'resident/brgy_cert', $data);
    }

    public function generate_profile($id)
    {
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            //redirect them to the dasboard page
            redirect('login', 'refresh');
        }

        $data['res'] = $this->residentModel->getProfile($id);
        $data['relation'] = $this->residentModel->getRelation($id);
        $data['info'] = $this->settingsModel->brgy_info();

        $data['title'] = 'Resident Profile';
        $this->base->load('default', 'resident/generate_profile', $data);
    }

    public function generate_id($id)
    {
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            //redirect them to the dasboard page
            redirect('login', 'refresh');
        }

        $data['resident'] = $this->residentModel->getProfile($id);
        $data['info'] = $this->settingsModel->brgy_info();
        $data['blood'] =  $this->residentModel->getOthers($id);
        $data['relation'] = $this->residentModel->getRelation($id);
        $data['capt'] = $this->officialsModel->getCaptain();

        $data['title'] = 'Resident Barangay ID';
        $this->base->load('default', 'resident/generate_id', $data);
    }

    public function generate_brgy_cert($id)
    {
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            //redirect them to the dasboard page
            redirect('login', 'refresh');
        }

        $data['resident'] = $this->residentModel->getProfile($id);
        $data['info'] = $this->settingsModel->brgy_info();
        $data['kagawad'] = $this->officialsModel->getkagawadOfficial();
        $data['selected_off'] = $this->officialsModel->getselectedOfficial();
        $data['captain'] = $this->officialsModel->getCaptain();
        $data['name'] = ucwords($data['resident']->firstname . ' ' . $data['resident']->middlename . ' ' . $data['resident']->lastname);

        $data['title'] = 'Barangay Clearance';
        $this->certificate_layout->load('certificate', 'resident/generate_brgy_cert', $data);
    }

    public function generate_indi_cert($id)
    {
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            //redirect them to the dasboard page
            redirect('login', 'refresh');
        }

        $data['resident'] = $this->residentModel->getProfile($id);
        $data['info'] = $this->settingsModel->brgy_info();
        $data['kagawad'] = $this->officialsModel->getkagawadOfficial();
        $data['selected_off'] = $this->officialsModel->getselectedOfficial();
        $data['captain'] = $this->officialsModel->getCaptain();
        $data['name'] = ucwords($data['resident']->firstname . ' ' . $data['resident']->middlename . ' ' . $data['resident']->lastname);

        $data['title'] = 'Certificate of Indigency';
        $this->certificate_layout->load('certificate', 'resident/generate_indi_cert', $data);
    }

    public function generate_resi_cert($id)
    {
        if (!$this->session->userdata('logged_in') || $this->session->userdata('role') == 'resident') {
            //redirect them to the dasboard page
            redirect('login', 'refresh');
        }

        $data['resident'] = $this->residentModel->getProfile($id);
        $data['info'] = $this->settingsModel->brgy_info();
        $data['kagawad'] = $this->officialsModel->getkagawadOfficial();
        $data['selected_off'] = $this->officialsModel->getselectedOfficial();
        $data['captain'] = $this->officialsModel->getCaptain();
        $data['name'] = ucwords($data['resident']->firstname . ' ' . $data['resident']->middlename . ' ' . $data['resident']->lastname);

        $data['title'] = 'Certificate of Residency';
        $this->certificate_layout->load('certificate', 'resident/generate_resi_cert', $data);
    }


    public function importCSV()
{
    $config = array(
        'upload_path' => "./assets/uploads/CSV/",
        'allowed_types' => "csv",
        'encrypt_name' => TRUE,
    );

    $this->load->library('upload', $config);
    $this->form_validation->set_rules('import_file', 'CSV File', 'required');

    if (!$this->upload->do_upload('import_file')) {
        $this->session->set_flashdata('errors', $this->upload->display_errors());
        return; // Exit if file upload failed
    } else {
        $file = $this->upload->data();

        // Reading file
        $data = fopen("./assets/uploads/CSV/" . $file['file_name'], "r");
        if (!$data) {
            $this->session->set_flashdata('message', 'Unable to open the file! Please contact support');
            redirect($_SERVER['HTTP_REFERER'], 'refresh');
            return;
        }

        $i = 0;
        $importRes = array();

        while (($filedata = fgetcsv($data, 1000, ",")) !== FALSE) {
            // Skip the header row
            if ($i == 0) {
                $i++;
                continue;
            }

            // Check if the row has the exact number of columns (31)
            if (count($filedata) != 25) {
                // Log misaligned row for debugging
                echo "Row $i has an incorrect number of columns: " . count($filedata) . "<br>";
                $i++;
                continue; // Skip misaligned rows
            }

            // Clean each field by trimming spaces
            $filedata = array_map('trim', $filedata);

            // Add row data to the importRes array
            $importRes[] = array(
                'nat_id' => isset($filedata[0]) ? $filedata[0] : null,
                'citizenship' => isset($filedata[1]) ? $filedata[1] : null,
                'fname' => isset($filedata[2]) ? $filedata[2] : null,
                'mname' => isset($filedata[3]) ? $filedata[3] : null,
                'lname' => isset($filedata[4]) ? $filedata[4] : null,
                'alias' => isset($filedata[5]) ? $filedata[5] : null,
                'bplace' => isset($filedata[6]) ? $filedata[6] : null,
                'bdate' => isset($filedata[7]) ? (empty($filedata[7]) ? null : date('Y-m-d', strtotime($filedata[7]))) : null,
                'age' => isset($filedata[7]) && !empty($filedata[7]) ? floor((time() - strtotime($filedata[7])) / 31556926) : null,
                'cstatus' => isset($filedata[9]) ? $filedata[9] : null,
                'gender' => isset($filedata[10]) ? $filedata[10] : null,
                'purok' => isset($filedata[11]) ? $filedata[11] : null,
                'vstatus' => isset($filedata[12]) ? $filedata[12] : null,
                'phone' => isset($filedata[13]) ? $filedata[13] : null,
                'email' => isset($filedata[14]) ? $filedata[14] : null,
                'occupation' => isset($filedata[15]) ? $filedata[15] : null,
                'employer_name' => isset($filedata[16]) ? $filedata[16] : null,
                'pwd' => isset($filedata[17]) ? $filedata[17] : null,
                'house_number' => isset($filedata[18]) ? $filedata[18] : null, // House Number
                'address' => isset($filedata[19]) ? $filedata[19] : null,     // Address
                'family' => isset($filedata[20]) ? $filedata[20] : null,       // Family Relation
                'sss_no' => isset($filedata[21]) ? $filedata[21] : null,      // SSS No
                'tin_no' => isset($filedata[22]) ? $filedata[22] : null,      // TIN No
                'gsis_no' => isset($filedata[23]) ? $filedata[23] : null,     // GSIS No
                'pagibig_no' => isset($filedata[24]) ? $filedata[24] : null,  // PAGIBIG No
                'philhealth_no' => isset($filedata[25]) ? $filedata[25] : null, // PhilHealth No
                'blood' => isset($filedata[26]) ? $filedata[26] : null,       // Blood Type
                'precinct' => isset($filedata[27]) ? $filedata[27] : null      // Precinct No
            );
            $i++;
        }

        fclose($data);

        // Insert data into the database
        $count = 0;
        foreach ($importRes as $data) {
            $house = array(
                'number' => $data['house_number'],
            );

            $res = array(
                'national_id' => $data['nat_id'],
                'citizenship' => $data['citizenship'],
                'firstname' => $data['fname'],
                'middlename' => $data['mname'],
                'lastname' => $data['lname'],
                'alias' => $data['alias'],
                'birthplace' => $data['bplace'],
                'birthdate' => $data['bdate'],
                'age' => $data['age'],
                'civilstatus' => $data['cstatus'],
                'gender' => $data['gender'],
                'purok' => $data['purok'],
                'voterstatus' => $data['vstatus'],
                'phone' => $data['phone'],
                'email' => $data['email'],
                'occupation' => $data['occupation'],
                'employer_name' => $data['employer_name'],
                'pwd' => $data['pwd'],
                'address' => $data['address'],
            );

            $this->residentModel->saveHouse($house);
            $insert_id = $this->residentModel->save($res);

            if ($insert_id) {
                $other_data = array(
                    'resident_id' => $insert_id,
                    'sss' => $data['sss_no'],
                    'tin' => $data['tin_no'],
                    'precinct' => $data['precinct'],
                    'gsis' => $data['gsis_no'],
                    'pagibig' => $data['pagibig_no'],
                    'philhealth' => $data['philhealth_no'],
                    'blood' => $data['blood'],
                );

                $house_info = array(
                    'resident_id' => $insert_id,
                    'house_number' => $data['house_number'],
                    'relation' => $data['family'],
                );

                $covid_data = array(
                    'resident_id' => $insert_id,
                    'status' => 'Negative',
                );

                $this->residentModel->updateCovid($covid_data, $insert_id);
                $this->residentModel->save_details($other_data);
                $this->residentModel->save_house_details($house_info);

                $count++;
            } else {
                echo "Failed to insert data for National ID: " . $data['nat_id'] . "<br>";
            }
        }

        $this->session->set_flashdata('message', "$count records imported successfully!");
        redirect($_SERVER['HTTP_REFERER'], 'refresh');
    }
}

    
    

    

    public function qrCode($id)
    {
        $param = $id; // remember to sanitize that - it is user input!
        $codeText = site_url('client/resident/') . $param;
        QRcode::png($codeText);
    }

    public function getpopulation()
    {
        $list = $this->populationTableModel->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $res) {
            $no++;
            $row = array();
            if (preg_match('/data:image/i', $res->picture)) {
                $row[] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                <img width='30' height='30' class='img-circle' alt='user' 
                src='" . $res->picture . "'/></a> "
                    . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
            } elseif (!empty($res->picture)) {
                $row[] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                    <img width='30' height='30' class='img-circle' alt='user' 
                    src='" . site_url() . 'assets/uploads/resident_profile/' . $res->picture . "'/></a> "
                    . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
            } else {
                $row[] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                    <img width='30' height='30' class='img-circle' alt='user' 
                    src='" . site_url('assets/img/person.png') . "'/></a> "
                    . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
            }
            $row[] = date('F d, Y', strtotime($res->birthdate));
            $row[] = floor((time() - strtotime($res->birthdate)) / 31556926);
            $row[] = $res->civilstatus;
            $row[] = $res->gender;
            $row[] = $res->pwd;
            $row[] = $res->voterstatus;

            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->populationTableModel->count_all(),
            "recordsFiltered" => $this->populationTableModel->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }

    public function getresidents()
    {
        $list = $this->residentTableModel->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $res) {
            $no++;
            $row = array();
            if (preg_match('/data:image/i', $res->picture)) {
                $row[] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                <img width='30' height='30' class='img-circle' alt='user' 
                src='" . $res->picture . "'/></a> "
                    . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
            } elseif (!empty($res->picture)) {
                $row[] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                    <img width='30' height='30' class='img-circle' alt='user' 
                    src='" . site_url() . 'assets/uploads/resident_profile/' . $res->picture . "'/></a> "
                    . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
            } else {
                $row[] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                    <img width='30' height='30' class='img-circle' alt='user' 
                    src='" . site_url('assets/img/person.png') . "'/></a> "
                    . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
            }
            $row[] = $res->national_id;
            $row[] = $res->alias;
            $row[] = date('F d, Y', strtotime($res->birthdate));
            $row[] = floor((time() - strtotime($res->birthdate)) / 31556926);
            $row[] = $res->civilstatus;
            $row[] = $res->gender;
            $row[] = $res->purok;
            if ($this->session->role == 'administrator' || $this->session->role == 'power user') {
                $row[] = $res->voterstatus;
            }
            $row[] = $res->resident_type == "Alive" ? '<span class="label label-success">' . $res->resident_type . '</span>' : '<span class="label label-primary">' . $res->resident_type . '</span>';
            $row[] = $res->pwd;


            if ($this->session->role == 'administrator' || $this->session->role == 'power user') {
                $row[] = "<a type='button' data-remarks='" . $res->id . "' href='" . site_url("edit_resident/") . $res->id . "' onclick='editOfficial(this)' data-toggle='tooltip' data-original-title='Edit Resident'> <i class='fa fa-pencil text-inverse m-r-10'></i> </a>
                        <a type='button' href='" . site_url('generate_profile/') . $res->id . "' data-toggle='tooltip' data-original-title='View Profile'> <i class='fa fa-user text-info m-r-10'></i> </a>
                        <a type='button' href='" . site_url('generate_id/') . $res->id . "' data-toggle='tooltip' data-original-title='Generate ID'> <i class='fa fa-file-photo-o text-inverse m-r-10'></i> </a>
                        <a type='button' href='#covidUpdate' data-toggle='modal' title='COVID Update'data-id='" . $res->id . "' data-remarks='" . $res->remarks . "' data-status='" . $res->status . "' 
                            data-dose='" . $res->date_vaccinated . "' data-name='" . $res->vaccinator_name . "' data-manu='" . $res->manufacturer . "' data-batch='" . $res->batch_no . "' data-lot='" . $res->lot_no . "'
                            data-dose1='" . $res->date_vaccinated_1 . "' data-name1='" . $res->vaccinator_name_1 . "' data-manu1='" . $res->manufacturer_1 . "' data-batch1='" . $res->batch_no_1 . "' 
                            data-lot1='" . $res->lot_no_1 . "' onclick='updateCovid(this)'> <i class='fa fa-certificate text-inverse m-r-10'></i> </a>
                        <a type='button' href='" . site_url('resident/delete/') . $res->id . "' onclick='return confirm(&quot;Are you sure you want to delete this resident?&quot);' data-toggle='tooltip' data-original-title='Remove'> <i class='fa fa-times text-danger m-r-10'></i> </a>";
            } else {
                $row[] = "<a type='button' data-remarks='" . $res->id . "' href='" . site_url("edit_resident/") . $res->id . "' onclick='editOfficial(this)' data-toggle='tooltip' data-original-title='Edit Resident'> <i class='fa fa-pencil text-inverse m-r-10'></i> </a>
                <a type='button' href='" . site_url('generate_profile/') . $res->id . "' data-toggle='tooltip' data-original-title='View Profile'> <i class='fa fa-user text-info m-r-10'></i> </a>
                <a type='button' href='" . site_url('generate_id/') . $res->id . "' data-toggle='tooltip' data-original-title='Generate ID'> <i class='fa fa-file-photo-o text-inverse m-r-10'></i> </a>
                <a type='button' href='#covidUpdate' data-toggle='modal' title='COVID Update'data-id='" . $res->id . "' data-remarks='" . $res->remarks . "' data-status='" . $res->status . "' 
                    data-dose='" . $res->date_vaccinated . "' data-name='" . $res->vaccinator_name . "' data-manu='" . $res->manufacturer . "' data-batch='" . $res->batch_no . "' data-lot='" . $res->lot_no . "'
                    data-dose1='" . $res->date_vaccinated_1 . "' data-name1='" . $res->vaccinator_name_1 . "' data-manu1='" . $res->manufacturer_1 . "' data-batch1='" . $res->batch_no_1 . "' 
                    data-lot1='" . $res->lot_no_1 . "' onclick='updateCovid(this)'> <i class='fa fa-certificate text-inverse m-r-10'></i> </a>";
            }

            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->residentTableModel->count_all(),
            "recordsFiltered" => $this->residentTableModel->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }

    public function getresidentscerts()
    {

        $list = $this->residentTableModel->get_datatables();
        $data = array();
        $no = $_POST['start'];
        foreach ($list as $res) {
            $no++;
            $row = array();
            if (preg_match('/data:image/i', $res->picture)) {
                $row[] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                <img width='30' height='30' class='img-circle' alt='user' 
                src='" . $res->picture . "'/></a> "
                    . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
            } elseif (!empty($res->picture)) {
                $row[] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                    <img width='30' height='30' class='img-circle' alt='user' 
                    src='" . site_url() . 'assets/uploads/resident_profile/' . $res->picture . "'/></a> "
                    . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
            } else {
                $row[] = "<a href='" . site_url('generate_profile/') . $res->id . "'>
                    <img width='30' height='30' class='img-circle' alt='user' 
                    src='" . site_url('assets/img/person.png') . "'/></a> "
                    . ucwords($res->lastname . ", " . $res->firstname . " " . $res->middlename);
            }
            $row[] = $res->national_id;;
            $row[] = $res->alias;
            $row[] = date('F d, Y', strtotime($res->birthdate));
            $row[] = floor((time() - strtotime($res->birthdate)) / 31556926);
            $row[] = $res->civilstatus;
            $row[] = $res->gender;
            $row[] = $res->purok;
            if ($this->session->role == 'administrator' || $this->session->role == 'manager') {
                $row[] = $res->voterstatus;
            }
            $row[] = $res->resident_type == "Alive" ? '<span class="label label-success">' . $res->resident_type . '</span>' : '<span class="label label-primary">' . $res->resident_type . '</span>';
            $row[] = $res->pwd;
            $row[] = '<a type="button" href="' . site_url('generate_brgy_cert/') . $res->id . '" data-toggle="tooltip" title="Generate Barangay Certificate"><i class="fa fa-file-text-o text-inverse m-r-10"></i> </a>
                    <a type="button" href="' . site_url('generate_indi_cert/') . $res->id . '" data-toggle="tooltip" title="Generate Indigency Certificate"><i class="fa fa-file-text-o text-info m-r-10"></i> </a>
                    <a type="button" href="' . site_url('generate_resi_cert/') . $res->id . '" data-toggle="tooltip" title="Generate Residency Certificate"><i class="fa fa-file-text-o text-success m-r-10"></i> </a>';

            $data[] = $row;
        }

        $output = array(
            "draw" => $_POST['draw'],
            "recordsTotal" => $this->residentTableModel->count_all(),
            "recordsFiltered" => $this->residentTableModel->count_filtered(),
            "data" => $data,
        );
        //output to json format
        echo json_encode($output);
    }
    

    // this is where to fetch the population and per purok of borol 1st
    public function fetch_population_data()
    {
        $this->load->model('ResidentTableModel');
        $data = $this->ResidentTableModel->get_population_per_purok();
    
        if ($data) {
            echo json_encode($data);
        } else {
            echo json_encode([]);
        }
    }
    
}