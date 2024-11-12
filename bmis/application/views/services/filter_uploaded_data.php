<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Services extends CI_Controller {

    // Other methods ...

    public function filter_uploaded_data() {
        $filter = $this->input->post('filter');
    
        // Load the uploaded Excel data from session
        $uploadedUsers = $this->session->flashdata('uploaded_users') ?: [];
        $filteredUsers = [];
    
        foreach ($uploadedUsers as $user) {
            $phone = $user['phone'];
            $gender = strtolower($user['gender']);
            $age = (int)$user['age'];
    
            // Filter based on the selected option
            if (
                ($filter === 'men' && $gender === 'male') ||
                ($filter === 'women' && $gender === 'female') ||
                ($filter === 'seniors' && $age >= 60) ||
                ($filter === 'all')
            ) {
                $filteredUsers[] = $user; // Add the user to the filtered list
            }
        }
    
        // Generate HTML for the filtered results
        $html = '';
        foreach ($filteredUsers as $user) {
            $html .= '<tr>';
            $html .= '<td><input type="checkbox" name="selectedUsers[]" value="' . htmlspecialchars($user['phone']) . '"></td>';
            $html .= '<td>' . htmlspecialchars($user['phone']) . '</td>';
            $html .= '<td>' . htmlspecialchars($user['gender']) . '</td>';
            $html .= '<td>' . htmlspecialchars($user['age']) . '</td>';
            $html .= '</tr>';
        }
    
        // Return the generated HTML
        echo $html;
        // At the end of your filter_uploaded_data method
        log_message('info', 'Filtered users: ' . print_r($filteredUsers, true));

    }
    
    // Other methods ...
}
