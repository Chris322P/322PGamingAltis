/*
	File: fn_gatherAction.sqf
	Author: Bryan "Tonic" Boardwine - extendend by Chris322P
	
	Description:
	Do Gather Actions for everything?
*/
private["_item","_count","_sum","_sleepTime","_picked","_local_name","_picke_str"];

_item = [(_this select 3),0,"",[""]] call BIS_fnc_param; //The item we are using to add or remove.
_count = [(_this select 3),1,0,[0]] call BIS_fnc_param; //Number of items to add or remove.
_sleepTime = [(_this select 3),2,0,[0]] call BIS_fnc_param; //Number of items to add or remove.
_picked = [(_this select 3),3,false,[false]] call BIS_fnc_param; //Number of items to add or remove.
_sum = [_item,_count,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;


if(_sum > 0) then
{
	life_action_inUse = true;
	if(_item == "apple") then { _local_name = "STR_Item_Apples"; };
	if(_item == "peach") then { _local_name = "STR_Item_Peaches"; };
	if(_item == "heroinu") then { _local_name = "STR_Item_Heroin"; };
	

	titleText[format[(localize "STR_NOTF_Gathering"),localize _local_name],"PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep _sleepTime;
	if(([true,_item,_sum] call life_fnc_handleInv)) then
	{
		if(_picked == true) then {
			titleText[format[(localize "STR_NOTF_Picked"),_sum,localize _local_name],"PLAIN"];
		} else {
			titleText[format[(localize "STR_NOTF_Collected"),_sum,localize _local_name],"PLAIN"];
		};
	};
}
	else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_inUse = false;

