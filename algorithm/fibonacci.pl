
sub fibonacci {
		$a = 0;
		$b = 1;

		$n = $_[0];

		for ($i=0;$i<$n;$i++){
				printf "%d\n", $a;
				$sum = $a + $b;
				$a = $b;
				$b = $sum;
				
		}
}
