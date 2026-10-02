C_COLLECTION:C1488($col; $Names)
C_LONGINT:C283($i; $n)
C_OBJECT:C1216($table)

$col:=WP Get elements:C1550([INFO:1]Sample:5; wk type table:K81:222)

$Names:=New collection:C1472("London"; "Paris"; "Roma")
$i:=0
$n:=3
For ($i; 0; $n-1)
	$table:=$col[$i]
	$table.id:=$Names[$i]
	$i:=$i+1
	
End for 
