/*
	File: fn_gatherAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers apples?
*/
private["_item","_count","_sum"];

_item = [_this,0,"",[""]] call BIS_fnc_param; //The item we are using to add or remove.
_count = [_this,1,0,[0]] call BIS_fnc_param; //Number of items to add or remove.

hint format["YOLO %1 %2",_item,_count];


_sum = [_item,_count,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
hint "GENUG";
	life_action_inUse = true;
	titleText[format[(localize "STR_NOTF_Gathering"),localize "STR_Item_Apples"],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	if(([true,"apple",_sum] call life_fnc_handleInv)) then
	{
		titleText[format[(localize "STR_NOTF_Picked"),_sum,localize "STR_Item_Apples"],"PLAIN"];
	};
}
	else
{
hint "ÄNDe";
	hint localize "STR_NOTF_InvFull";
};

life_action_inUse = false;

