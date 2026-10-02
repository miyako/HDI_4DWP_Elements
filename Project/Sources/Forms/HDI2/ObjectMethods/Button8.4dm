var $col : Collection
var $obj; $body : Object
var $i; $n : Integer

$col:=New collection:C1472

$body:=WP Get body:C1516(WPArea)
$col:=WP Get elements:C1550($body; wk type paragraph:K81:191)

$i:=0
$n:=$col.length
For ($i; 0; $n-1)
	$obj:=$col[$i]
	
	WP RESET ATTRIBUTES:C1344($obj)
	
	WP SET ATTRIBUTES:C1342($obj; wk font bold:K81:68; wk false:K81:173)
	WP SET ATTRIBUTES:C1342($obj; wk font italic:K81:67; wk false:K81:173)
	
	If ($i%2=0)
		WP SET ATTRIBUTES:C1342($obj; wk text align:K81:49; wk left:K81:95)
		WP SET ATTRIBUTES:C1342($obj; wk font bold:K81:68; wk true:K81:174)
		WP SET ATTRIBUTES:C1342($obj; wk text color:K81:64; "#804040")
		WP SET ATTRIBUTES:C1342($obj; wk margin right:K81:12; "5cm")
		WP SET ATTRIBUTES:C1342($obj; wk margin left:K81:11; "1cm")
		
	Else 
		WP SET ATTRIBUTES:C1342($obj; wk text align:K81:49; wk right:K81:96)
		WP SET ATTRIBUTES:C1342($obj; wk font italic:K81:67; wk true:K81:174)
		WP SET ATTRIBUTES:C1342($obj; wk text color:K81:64; "#404020")
		WP SET ATTRIBUTES:C1342($obj; wk margin left:K81:11; "5cm")
		WP SET ATTRIBUTES:C1342($obj; wk margin right:K81:12; "1cm")
	End if 
	
End for 
