If (tableRange#Null:C1517)
	
	WP SET ATTRIBUTES:C1342(tableRange; wk border style:K81:29; wk solid:K81:115; wk border color:K81:34; "Blue"; wk border width:K81:39; "3px")
	WP SET ATTRIBUTES:C1342(tableRange; wk background color:K81:20; "#f0f0ff")
	WP SET ATTRIBUTES:C1342(tableRange; wk table align:K81:200; wk center:K81:99)
	
	
	//WP SET ATTRIBUTES(tableRange;wk text align;wk center)  //•••
	WP SET ATTRIBUTES:C1342(tableRange; wk font size:K81:66; 12)  //•••
	WP SET ATTRIBUTES:C1342(tableRange; wk text transform:K81:70; wk capitalize:K81:163)  //•••
	WP SET ATTRIBUTES:C1342(tableRange; wk font bold:K81:68; wk true:K81:174)  //•••
	
Else 
	
	ALERT:C41(Localized string("AlertCreateRangeFirst"))
	
End if 


