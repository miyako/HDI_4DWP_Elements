var $i; $n : Integer
var $colParagHead : Collection
var $paragraph; $header : Object

$colParagHead:=New collection:C1472

$header:=WP Get header:C1503([INFO:1]Sample:5; 1)
$colParagHead:=WP Get elements:C1550($header; wk type paragraph:K81:191)

$i:=1
$n:=$colParagHead.length

For ($i; 0; $n-1)
	
	$paragraph:=$colParagHead[$i]
	If ($i=0)
		WP SET ATTRIBUTES:C1342($paragraph; wk text align:K81:49; wk center:K81:99)
		WP SET ATTRIBUTES:C1342($paragraph; wk font family:K81:65; "Times")
		WP SET ATTRIBUTES:C1342($paragraph; wk font size:K81:66; 18)
		WP SET ATTRIBUTES:C1342($paragraph; wk font bold:K81:68; wk true:K81:174)
		WP SET ATTRIBUTES:C1342($paragraph; wk text color:K81:64; "black")
		
		WP SET ATTRIBUTES:C1342($paragraph; wk border style top:K81:32; wk solid:K81:115)
		WP SET ATTRIBUTES:C1342($paragraph; wk border color top:K81:37; "black")
		WP SET ATTRIBUTES:C1342($paragraph; wk border width top:K81:42; "1px")
		
	Else 
		
		WP SET ATTRIBUTES:C1342($paragraph; wk text align:K81:49; wk center:K81:99)
		WP SET ATTRIBUTES:C1342($paragraph; wk font family:K81:65; "Times")
		WP SET ATTRIBUTES:C1342($paragraph; wk font size:K81:66; 12)
		WP SET ATTRIBUTES:C1342($paragraph; wk font bold:K81:68; wk false:K81:173)
		WP SET ATTRIBUTES:C1342($paragraph; wk text color:K81:64; "#808080")
		
		If ($i=($n-1))
			WP SET ATTRIBUTES:C1342($paragraph; wk border style bottom:K81:33; wk solid:K81:115)
			WP SET ATTRIBUTES:C1342($paragraph; wk border color bottom:K81:38; "black")
			WP SET ATTRIBUTES:C1342($paragraph; wk border width bottom:K81:43; "1px")
		End if 
		
	End if 
	
End for 