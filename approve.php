<?php
include 'db.php';

if (isset($_GET['id']) && isset($_GET['status'])) {
    $id = $_GET['id'];
    $status = $_GET['status'];

    $sql = "UPDATE pengajuan SET status='$status' WHERE id=$id";

    if ($conn->query($sql) === TRUE) {
        echo "Status pengajuan berhasil diperbarui menjadi '$status'. <br>";
        echo "<a href='admin.php'>Kembali ke Daftar Pengajuan</a>";
    } else {
        echo "Error updating record: " . $conn->error;
    }
}

$conn->close();
?>
