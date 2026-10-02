Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(_TabTitles; 0)
		ARRAY TEXT:C222(_Descriptions; 0)
		
		READ ONLY:C145([INFO:1])
		ALL RECORDS:C47([INFO:1])
		ORDER BY:C49([INFO:1]; [INFO:1]PageNumber:4; >)
		
		SELECTION TO ARRAY:C260([INFO:1]TabTitle:3; _TabTitles; [INFO:1]Description:2; _Descriptions)
		
		OBJECT SET ENABLED:C1123(*; "btnApplySettings"; False:C215)
		OBJECT SET VISIBLE:C603(*; "docElements"; False:C215)
		
		HDI_UpdatePage(FORM Get current page:C276)
		
	: (Form event code:C388=On Page Change:K2:54)
		
		HDI_UpdatePage(FORM Get current page:C276)
		
End case 

