while {alive player} do {

	knowsInfo = [];
	{
		if ((side _x) == east) then {
			_info = (_x targetKnowledge player) select 1;
			knowsInfo pushBack (["Unit [",_x, "] knowsAbout:", str (_info)] joinString " "); 
		};
	} forEach allUnits;
	
	hintSilent (knowsInfo joinString "\n");
	sleep 0.01;
};