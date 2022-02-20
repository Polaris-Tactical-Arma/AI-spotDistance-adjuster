player allowDamage false;
player enableFatigue false;
initPos = position player;

player addAction ["Increase spotDistance by 0.1", "setSpotDistance.sqf", 0.1];
player addAction ["Decrease spotDistance by 0.1", "setSpotDistance.sqf", -0.1];

{
    if ((side _x) == east) then {
        _x addEventHandler ["Fired", {
            _unit = _this select 0;
            _unit call compile preprocessFile "spotHandler.sqf";
        }];
    };
} forEach allUnits;

// Wait till everything is loaded propberly
waitUntil {!isNull(findDisplay 46)};
call compile preprocessFile "showKnowsAbout.sqf";