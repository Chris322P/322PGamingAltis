#include <macro.h>
/*
	File: fn_admincheat_money.sqf
	Author: Alan
	
	Description:
	Opens the cellphone menu?
*/
private["_money"];
_money = parseNumber(ctrlText 34503);

life_cash = life_cash + _money;
hint format ["Du hast %1€ Geschenkt bekommen!",[_money] call life_fnc_numberText];
