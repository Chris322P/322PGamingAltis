#include <macro.h>
/*
	File: fn_admincheat_money.sqf
	Author: Alan
	
	Description:
	Opens the cellphone menu?
*/
private["_veh","_player"];
//_veh = cursorTarget;
_veh = (vehicle player);
_player = (player);

_player setDamage 0;
if((_veh isKindOf "Car") OR (_veh isKindOf "Ship") OR (_veh isKindOf "Air") && !isNull _veh) then
{
	_veh setFuel 1;
	_veh setVehicleAmmo 1;
	_veh setDamage 0;
	[] call SOCK_fnc_updateRequest;
	titleText["Du hast dein Leben umdacht!","PLAIN"];
};
