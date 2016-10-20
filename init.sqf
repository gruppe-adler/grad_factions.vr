["BLU_F", "BwTrop"] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_F", "ModerateRebels"] call GRAD_Loadout_fnc_FactionSetLoadout;
["IND_F", "USUCP"] call GRAD_Loadout_fnc_FactionSetLoadout;

{_x disableAI "MOVE" } forEach allUnits;
