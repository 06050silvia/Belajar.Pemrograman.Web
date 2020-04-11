<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Hasil PHP </title>
	
	<style>
		table,th,td
		{
			border: 1px solid black;
			border-collapse: collapse;
		}
	</style>
</head>

<body>
    <?php
		if (isset($_POST['kirim'])) {
			$nim = $_POST['nim'];
			$progdi = $_POST['progdi'];
			$niltgs = $_POST['niltgs'];
			$niluts = $_POST['niluts'];
			$niluas = $_POST['niluas'];

        $nilakhir = (0.4 * $niltgs) + (0.3 * $niluts) + (0.3 * $niluas);
        if ($nilakhir > 84) {
            $status = 'Lulus';
        } elseif ($nilakhir > 70) {
            $status = 'Lulus';
        } elseif ($nilakhir > 60) {
            $status = 'Lulus';
        } elseif ($nilakhir > 50) {
            $status = 'Tidak Lulus';
        } else {
            $status = "Tidak Lulus";
        }

        $catatan_khusus = "";
        if (!empty($_POST['catatan'])) {
            foreach ($_POST['catatan'] as $catatan) {
                $catatan_khusus .= $catatan . " <br> ";
            }
        }

        echo "
        <table bo>
            <thead>
                <tr>
                    <th>Program Studi</th>
                    <th>NIM</th>
                    <th>Nilai Akhir</th>
                    <th>Status</th>
                    <th>Catatan Khusus</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>$progdi</td>
                    <td>$nim</td>
                    <td>$nilakhir</td>
                    <td>$status</td>
                    <td>$catatan_khusus</td>
                </tr>
            </tbody>
        </table>
        ";
    }
    ?>
</body>
</html>