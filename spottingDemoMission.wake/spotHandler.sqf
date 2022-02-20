_spotDistance = _this skill "spotDistance";
systemChat format["Unit [%1] spotted you!", _this];
systemChat format ["Your Stance: %2 ||
		Your Speed: %3 || 
		Distance: %4 || 
		AI Skill - spotDistance: %5 || 
		moonIntensity: %6",
		_this,
		stance player,
		str speed player,
		str (player distance _this),
		str _spotDistance,
		moonIntensity
	];

{
    if ((side _x) == east) then {
		_x forgetTarget player;
    }
} forEach allUnits;


player setPos initPos;