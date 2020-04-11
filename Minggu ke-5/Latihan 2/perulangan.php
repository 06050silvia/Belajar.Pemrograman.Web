<?php
	echo "METODE PERULANGAN";
	echo "<br><br><br>";
	echo "Menggunakan For";
	for ($a = 1; $a <= 5; $a++)
	{
		echo "<br>";
		for ($b = 1; $b <= $a; $b++)
		{
			echo "$a";
		}
	}

	echo "<br><br>";
	echo "Menggunakan While";
		$c = 1;
		$d = 1;
	while ($c <= 5)
	{
		echo "<br>";
		while ($d <= $c)
		{
			echo "$c";
			$d++;
		}
		
		$c++;
		$d = 1;
	}

	echo "<br><br>";
	echo "Menggunakan Do While";
		$e = 1;
		$f = 1;
	do 
	{
		echo "<br>";
		do 
		{
			echo "$e";
			$f++;
		} while ($f <= $e);
		
		$e++;
		$f = 1;
	} while ($e <= 5);
?>