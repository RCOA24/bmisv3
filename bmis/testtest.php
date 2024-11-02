<?php
require_once __DIR__ . '/../vendor/autoload.php';



use Twilio\Rest\Client;

// Replace with your actual SID and token
$sid = 'ACec210be61162c61f13e50ecaf4980419';
$token = '9f6a976102cceca37f313a5cee894218';
$client = new Client($sid, $token);

try {
    $message = $client->messages->create(
        '+639217167659', // The recipient phone number
        [
            'from' => '+14158010932', // Your Twilio number
            'body' => 'Hello from Twilio!'
        ]
    );
    echo "Message sent successfully!";
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
