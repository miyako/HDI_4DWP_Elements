C_OBJECT:C1216($range)
C_OBJECT:C1216($table)
C_OBJECT:C1216($row)

$range:=WP Selection range:C1340([INFO:1]Sample:5)

$table:=WP Insert table:C1473($range; wk replace:K81:177; wk include in range:K81:180)

Case of 
	: (Shift down:C543)
		
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie"; "delta")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie"; "delta")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie"; "delta")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie"; "delta")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie"; "delta")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie"; "delta")
		
	: (Macintosh command down:C546)
		
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie")
		
	Else 
		
		$row:=WP Table append row:C1474($table; "alpha"; "bravo")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo")
		$row:=WP Table append row:C1474($table; "alpha"; "bravo")
		
End case 

WP SET ATTRIBUTES:C1342($table; wk font family:K81:65; "Optima")
WP SET ATTRIBUTES:C1342($table; wk font size:K81:66; "14pt")
