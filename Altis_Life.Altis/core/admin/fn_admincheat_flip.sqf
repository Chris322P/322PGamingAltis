#include <macro.h>
/*
	File: fn_admincheat_money.sqf
	Author: Alan
	
	Description:
	Opens the cellphone menu?
*/
private["_veh"];
_veh = (vehicle player);


if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air") && !isNull _veh) then
{
	_veh setDamage 0;
	_veh setpos [getpos _veh select 0, getpos _veh select 1, 0.5];
	titleText["Dein Auto wurde umgefickt!","PLAIN"];
};
