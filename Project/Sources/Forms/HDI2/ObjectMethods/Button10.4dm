
C_COLLECTION:C1488($col)
C_OBJECT:C1216($obj)
C_OBJECT:C1216($footer)
C_LONGINT:C283($i; $n)

$col:=New collection:C1472

$footer:=WP Get footer:C1504([INFO:1]Sample:5; 1)
$col:=WP Get elements:C1550($footer; wk type paragraph:K81:191)

$n:=$col.length
For ($i; 0; $n-1)
	
	$obj:=$col[$i]
	If ($i<($n-1))
		
		WP SET ATTRIBUTES:C1342($obj; wk text align:K81:49; wk center:K81:99)
		WP SET ATTRIBUTES:C1342($obj; wk font family:K81:65; "Times")
		WP SET ATTRIBUTES:C1342($obj; wk font size:K81:66; 8)
		WP SET ATTRIBUTES:C1342($obj; wk font bold:K81:68; wk false:K81:173)
		WP SET ATTRIBUTES:C1342($obj; wk text color:K81:64; "#808080")
		
		If ($i=0)
			WP SET ATTRIBUTES:C1342($obj; wk border style top:K81:32; wk solid:K81:115)
			WP SET ATTRIBUTES:C1342($obj; wk border color top:K81:37; "black")
			WP SET ATTRIBUTES:C1342($obj; wk border width top:K81:42; "1px")
		End if 
		
	Else 
		
		WP SET ATTRIBUTES:C1342($obj; wk text align:K81:49; wk center:K81:99)
		WP SET ATTRIBUTES:C1342($obj; wk font family:K81:65; "Times")
		WP SET ATTRIBUTES:C1342($obj; wk font size:K81:66; 12)
		WP SET ATTRIBUTES:C1342($obj; wk font bold:K81:68; wk true:K81:174)
		WP SET ATTRIBUTES:C1342($obj; wk text color:K81:64; "black")
		
		WP SET ATTRIBUTES:C1342($obj; wk border style bottom:K81:33; wk solid:K81:115)
		WP SET ATTRIBUTES:C1342($obj; wk border color bottom:K81:38; "black")
		WP SET ATTRIBUTES:C1342($obj; wk border width bottom:K81:43; "1px")
		
	End if 
	
End for 
