execVM "SET_LOADOUTS.sqf";


{
    if (local _x && !isPlayer _x) then {
        _x disableAI "ALL";
    };
    false
} count allUnits;


["unit",{
    [{
        params [["_newUnit",objNull],["_oldUnit",objNull]];

        if (!isNil {_newUnit getVariable "bis_fnc_moduleRemoteControl_owner"}) exitWith {};

        [zeusModule1] remoteExec ["unassignCurator",2,false];
        [_newUnit,zeusModule1] remoteExec ["assignCurator",2,false];
    },_this,5] call CBA_fnc_waitAndExecute;
}] call CBA_fnc_addPlayerEventHandler;
