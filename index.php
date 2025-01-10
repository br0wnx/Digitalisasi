<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Pengajuan</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Form Pengajuan</h2>
    <form action="submit.php" method="POST" enctype="multipart/form-data">
        <label for="nama">Nama:</label>
        <input type="text" id="nama" name="nama" required><br><br>

        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required><br><br>

        <label for="alamat">Alamat:</label>
        <textarea id="alamat" name="alamat" required></textarea><br><br>

        <label for="dokumen">Upload Dokumen:</label>
        <input type="file" id="dokumen" name="dokumen" required><br><br>

        <input type="submit" value="Ajukan">
    </form>
</body>
</html>
