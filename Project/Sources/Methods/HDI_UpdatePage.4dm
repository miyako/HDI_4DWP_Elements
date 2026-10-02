//%attributes = {"invisible":true}
#DECLARE($page : Integer)

var $i; $n : Integer
var $col : Collection

OBJECT SET ENABLED:C1123(*; "btnApplySettings"; False:C215)
OBJECT SET VISIBLE:C603(*; "docElements"; False:C215)

QUERY:C277([INFO:1]; [INFO:1]PageNumber:4=$page)

//WParea:=WP New([INFO]Sample)

If ($page#6)
	WParea:=[INFO:1]Sample:5
Else 
	WParea2:=[INFO:1]Sample:5
End if 

If ($page=7)
	ARRAY TEXT:C222(_elemIDs; 0)
	
	$col:=WP Get elements:C1550([INFO:1]Sample:5; wk type table:K81:222)
	$n:=$col.length
	For ($i; 0; $n-1)
		APPEND TO ARRAY:C911(_elemIDs; $col[$i].id)
	End for 
	
	ARRAY TEXT:C222(_elemColors; 0)
	APPEND TO ARRAY:C911(_elemColors; "rosybrown")
	APPEND TO ARRAY:C911(_elemColors; "lightskyblue")
	APPEND TO ARRAY:C911(_elemColors; "lightpink")
	APPEND TO ARRAY:C911(_elemColors; "olive")
	APPEND TO ARRAY:C911(_elemColors; "purple")
	APPEND TO ARRAY:C911(_elemColors; "coral")
	APPEND TO ARRAY:C911(_elemColors; "moccasin")
	
	_elemIDs:=1
	_elemColors:=1
	
End if 
