
C_LONGINT:C283($i; $n)
C_COLLECTION:C1488($colPictures)
C_OBJECT:C1216($pictObject)
C_OBJECT:C1216($body)
C_PICTURE:C286($image)
C_LONGINT:C283($width; $height)

$body:=WP Get body:C1516([INFO:1]Sample:5)
$colPictures:=WP Get elements:C1550($body; wk type image:K81:192)

$n:=$colPictures.length
For ($i; 0; $n-1)
	$pictObject:=$colPictures[$i]
	WP SET ATTRIBUTES:C1342($pictObject; wk margin:K81:10; "0.2cm")
	WP SET ATTRIBUTES:C1342($pictObject; wk padding:K81:15; "0.1cm")
	WP Get attributes:C1345($pictObject; wk image:K81:169; $image)
	
	PICTURE PROPERTIES:C457($image; $width; $height)
	
	If ($width>$height)
		WP SET ATTRIBUTES:C1342($pictObject; wk border style:K81:29; wk ridge:K81:130)
		WP SET ATTRIBUTES:C1342($pictObject; wk border color:K81:34; "red")
		WP SET ATTRIBUTES:C1342($pictObject; wk border width:K81:39; "10px")
	Else 
		WP SET ATTRIBUTES:C1342($pictObject; wk border style:K81:29; wk outset:K81:132)
		WP SET ATTRIBUTES:C1342($pictObject; wk border color:K81:34; "blue")
		WP SET ATTRIBUTES:C1342($pictObject; wk border width:K81:39; "10px")
	End if 
	
End for 
