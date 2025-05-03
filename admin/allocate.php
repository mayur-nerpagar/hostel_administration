<?php
    session_start();
    include('../includes/dbconn.php');
    include('../includes/check-login.php');
    check_login();

?>
<?php
var_dump($_POST);
$roomNo = $_POST["roomNo"];
$id = $_POST["student-id"];
$sql_update = "UPDATE `merit` SET `roomNo` = $roomNo WHERE id = $id";

echo $sql_room;

$result = mysqli_query($conn, $sql_update);
// echo mysqli_num_rows($result);
var_dump($result);
header("location: manage-rooms.php");
?>