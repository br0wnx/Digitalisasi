<?php
include 'db.php';

// Menangani upload dokumen
$target_dir = "uploads/";
$target_file = $target_dir . basename($_FILES["dokumen"]["name"]);
move_uploaded_file($_FILES["dokumen"]["tmp_name"], $target_file);

// Menyimpan data pengajuan ke database
if (isset($_POST['nama']) && isset($_POST['email']) && isset($_POST['alamat'])) {
    $nama = $_POST['nama'];
    $email = $_POST['email'];
    $alamat = $_POST['alamat'];
    $dokumen = basename($_FILES["dokumen"]["name"]);

    $sql = "INSERT INTO pengajuan (nama, email, alamat, dokumen) VALUES ('$nama', '$email', '$alamat', '$dokumen')";
    if ($conn->query($sql) === TRUE) {
        echo "Pengajuan berhasil diajukan.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
$conn->close();
?>
