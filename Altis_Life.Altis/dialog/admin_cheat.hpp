class Life_admin_cheat {
	idd = 34500;
	name= "life_admin_cheat";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_admincheat";
	
	class controlsBackground {
		class Life_RscTitleBackground:Life_RscText {
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.64;
			h = (1 / 20);
		};
		
		class MainBackground:Life_RscText {
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.64;
			h = 0.5 - (5 / 250);
		};
	};
	
	class controls {
	
		class VehicleButton : life_RscButtonMenu 
		{
			idc = 34506;
			text = "Get";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call life_fnc_admincheat_getcar";
			
			x = 0.4;
			y = 0.35;
			w = 0.2;
			h = (1 / 25);
		};
		
		class VehicleList : Life_RscListBox
		{
			idc = 34505;
			text = "";
			sizeEx = 0.04;
			colorBackground[] = {0.1,0.1,0.1,0.9};
		//	onLBSelChanged = "_this call life_fnc_vehicleShopLBChange";
			
			//Position & height
			x = 0.11; y = 0.4;
			w = 0.303; h = 0.49;
		};
		
		class Title : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 34501;
			text = "Admin Mongos";
			x = 0.1;
			y = 0.2;
			w = 0.6;
			h = (1 / 25);
		};
		
		class TextToSend : Life_RscTitle {
			colorBackground[] = {0, 0, 0, 0};
			idc = 34502;
			text = "Geld Betrag:";
			x = 0.1;
			y = 0.25;
			w = 0.6;
			h = (1 / 25);
		};
		
		class textEdit : Life_RscEdit {		
			idc = 34503;
			
			text = "";
			sizeEx = 0.030;
			x = 0.11; y = 0.3;
			w = 0.45; h = 0.03;		
		};
		
		class TextMsgButton : life_RscButtonMenu 
		{
			idc = 34504;
			text = "YOLO";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call life_fnc_admincheat_money";
			
			x = 0.11;
			y = 0.35;
			w = 0.2;
			h = (1 / 25);
		};
				
		class CloseButtonKey : Life_RscButtonMenu {
			idc = -1;
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = -0.06 + (6.25 / 40) + (1 / 250 / (safezoneW / safezoneH));
			y = 0.6 + (1 / 100);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};