private _val = _this select 3;
{
    if ((side _x) == east) then {
		_x setSkill ["spotDistance", _skillVal + _val];
    }
	systemchat format["spotDistance is now set to: %1", str (_x skill "spotDistance")];
} forEach allUnits;

