<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<title> Latihan 1 PHP </title>
	</head>
	
	<body>
		<?php
			if (isset($_POST['hitung']))
			{
				//deklarasi variabel
				$bil1 = $_POST['bil1'];
				$bil2 = $_POST['bil2'];
				$operasi = $_POST['operasi'];
			
				//pilihan operasi
				switch($operasi)
				{
					case 'tambah' : 
								$hasil = $bil1 + $bil2;
								break;
					case 'kurang' : 
								$hasil = $bil1 - $bil2;
								break;
					case 'kali' : 
								$hasil = $bil1 * $bil2;
								break;
					case 'bagi' : 
								$hasil = $bil1 / $bil2;
								break;
				}
			}
		?>
		
		<form action="operasi hitungan.php" method="post">
			<input type="text" name="bil1" placeholder="Masukkan Angka">
			<br>
			<input type="text" name="bil2" placeholder="Masukkan Angka">
			<br>
			<select name="operasi">
				<option value="tambah">tambah (+)</option>
				<option value="kurang">kurang(-)</option>
				<option value="kali">kali(*)</option>
				<option value="bagi">bagi(/)</option>
			</select>
			<input type="submit" name="hitung" value="=">
		</form>
		
		<?php if (isset($_POST['hitung'])) { ?>
			<input type="text" value="<?php echo $hasil; ?>">
		<?php } else { ?>
			<input type="text" value="error">
		<?php } ?>
	</body>
</html>