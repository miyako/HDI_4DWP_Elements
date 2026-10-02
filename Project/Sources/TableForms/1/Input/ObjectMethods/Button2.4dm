var $i : Integer
var $range; $table; $row : Object

[INFO:1]Sample:5:=WP New:C1317

$range:=WP Text range:C1341([INFO:1]Sample:5; wk start text:K81:165; wk end text:K81:164)

For ($i; 1; 3)
	
	$table:=WP Insert table:C1473($range; wk replace:K81:177; wk include in range:K81:180)
	
	$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie"; "delta")
	$row:=WP Table append row:C1474($table; "alpha"; "bravo"; "charlie"; "delta")
	
	$range:=WP Text range:C1341([INFO:1]Sample:5; wk end text:K81:164; wk end text:K81:164)
	
	WP Insert break:C1413($range; wk line break:K81:186; wk append:K81:179)
	
End for 

