<?php
$host = "localhost";
$db_username = "root";
$db_password = "";
$db_name = "natmed";

try {
    $conn = new mysqli($host, $db_username, $db_password, $db_name);
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        $name = filter_var(trim($_POST['name']), FILTER_SANITIZE_STRING);
        $email = filter_var(trim($_POST['email']), FILTER_SANITIZE_EMAIL);
        $number = filter_var(trim($_POST['number']), FILTER_SANITIZE_STRING);
        $appointment_date = filter_var(trim($_POST['appointment_date']), FILTER_SANITIZE_STRING);
        $message = filter_var(trim($_POST['message']), FILTER_SANITIZE_STRING);

        $stmt = $conn->prepare("INSERT INTO contact_forms (name, email, number, appointment_date, message) VALUES (?, ?, ?, ?, ?)");
        $stmt->bind_param("sssss", $name, $email, $number, $appointment_date, $message);

        if ($stmt->execute()) {
            echo "Appointment submitted successfully!";
        } else {
            echo "Error: " . $stmt->error;
        }

        $stmt->close();
        $conn->close();
    }
} catch (Exception $e) {
    echo "Error: " . $e->getMessage();
}
?>

<script>
setTimeout(function() {
    window.location.href = '/natmed';
}, 500);
</script>