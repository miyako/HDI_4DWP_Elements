
C_COLLECTION:C1488($colTables)
C_OBJECT:C1216($table; $row; $cell; $lastCell)
C_LONGINT:C283($table_i; $row_i; $n)
C_COLLECTION:C1488($rows)
C_LONGINT:C283($cellCount)

C_TEXT:C284($grey; $lightGrey1; $lightGrey2)
C_TEXT:C284($colTablesColor; $colTablesColorFooter)

$colTables:=WP Get elements:C1550(WParea; wk type table:K81:222)

$table_i:=0
$n:=$colTables.length

$lightGrey1:="#e0e0e0"
$lightGrey2:="#f0f0f0"

$n:=$colTables.length
For ($table_i; 0; $n-1)
	
	$table:=$colTables[$table_i]
	
	Case of 
		: (($table_i%3)=0)
			$colTablesColor:="#b0ffb0"
			$colTablesColorFooter:="#208020"
		: (($table_i%3)=1)
			$colTablesColor:="#b0b0ff"
			$colTablesColorFooter:="#202080"
		: (($table_i%3)=2)
			$colTablesColor:="#ffb0b0"
			$colTablesColorFooter:="#802020"
	End case 
	
	// Style the entire table…
	WP SET ATTRIBUTES:C1342($table; wk font family:K81:65; "Arial")
	WP SET ATTRIBUTES:C1342($table; wk font size:K81:66; "12pt")
	
	
	// get the collection of rows for the current table
	$rows:=WP Get elements:C1550($table; wk type table row:K81:223)
	$n:=$rows.length
	
	For ($row_i; 0; $n-1)
		
		$row:=$rows[$row_i]
		Case of 
			: ($row_i=0)  // first
				
				WP SET ATTRIBUTES:C1342($row; wk background color:K81:20; $colTablesColor)
				WP SET ATTRIBUTES:C1342($row; wk font size:K81:66; "16pt")
				
			: ($row_i=($n-1))  // last
				
				WP SET ATTRIBUTES:C1342($row; wk background color:K81:20; $colTablesColorFooter)
				WP SET ATTRIBUTES:C1342($row; wk text color:K81:64; $colTablesColor)
				WP SET ATTRIBUTES:C1342($row; wk font size:K81:66; "16pt")
				
			Else   // others
				
				If (($row_i%2)=0)  // alternate greys
					$grey:=$lightGrey1
				Else 
					$grey:=$lightGrey2
				End if 
				WP SET ATTRIBUTES:C1342($row; wk background color:K81:20; $grey)
				
				WP Get attributes:C1345($row; wk cell count:K81:246; $cellCount)
				
				$lastCell:=WP Table get cells:C1477($table; $cellCount; $row_i+1; 1; 1)
				
				WP SET ATTRIBUTES:C1342($lastCell; wk text color:K81:64; $colTablesColorFooter)
				WP SET ATTRIBUTES:C1342($lastCell; wk font bold:K81:68; wk true:K81:174)
				WP SET ATTRIBUTES:C1342($lastCell; wk font italic:K81:67; wk true:K81:174)
				
		End case 
		
	End for 
	
End for 
