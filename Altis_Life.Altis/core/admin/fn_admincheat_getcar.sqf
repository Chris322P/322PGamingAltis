#include <macro.h>
/*
	File: fn_admincheat_money.sqf
	Author: Alan
	
	Description:
	Opens the cellphone menu?
*/
private["_className","_vehicle"];
_className = lbData[34505,(lbCurSel 34505)];

_vehicle = createVehicle [_className, (position player), [], 0, "NONE"];
_vehicle allowDamage false;
_vehicle setPos (position player);
_vehicle allowDamage true;