<?php
defined('BASEPATH') or exit('No direct script access allowed');

if (!function_exists('has_permission')) {
    function has_permission($permission)
    {
        // Example permission check based on session data
        $CI = &get_instance();  // Reference CodeIgniter instance
        $user_role = $CI->session->userdata('role');

        // Define permissions for each role
        $permissions = [
            'admin' => ['send_sms', 'edit', 'delete'],  // etc.
            'user' => ['send_sms'],  // only allow send_sms
            // Add other roles as needed
        ];

        // Check if the user role has the required permission
        return isset($permissions[$user_role]) && in_array($permission, $permissions[$user_role]);
        
    }
}
