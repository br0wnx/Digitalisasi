<?php
include 'db.php';

$sql = "SELECT * FROM pengajuan";
$result = $conn->query($sql);

echo "<h2>Daftar Pengajuan</h2>";
echo "<table border='1'>
        <tr>
            <th>Nama</th>
            <th>Email</th>
            <th>Alamat</th>
            <th>Dokumen</th>
            <th>Status</th>
            <th>Action</th>
        </tr>";

if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>" . $row["nama"] . "</td>
                <td>" . $row["email"] . "</td>
                <td>" . $row["alamat"] . "</td>
                <td><a href='uploads/" . $row["dokumen"] . "'>Lihat Dokumen</a></td>
                <td>" . $row["status"] . "</td>
                <td>
                    <a href='approve.php?id=" . $row["id"] . "&status=Approved'>Approve</a> | 
                    <a href='approve.php?id=" . $row["id"] . "&status=Rejected'>Reject</a>
                </td>
              </tr>";
    }
} else {
    echo "<tr><td colspan='6'>Tidak ada pengajuan</td></tr>";
}
echo "</table>";

$conn->close();
?>
