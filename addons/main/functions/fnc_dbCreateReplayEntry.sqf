/*
 * Author: Titan
 * Inserts replay entry into database
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call FUNC(dbCreateReplayEntry);
 *
 * Public: No
 */

#include "script_component.hpp"
private _functionLogName = "AAR > dbCreateReplayEntry";

// Send the query to the extension
private _query = [["replay", missionName, worldName, daytime, QUOTE(VERSION)], GVAR(extensionSeparator)] call CBA_fnc_join;
private _insertResult = call compile (GVAR(extensionName) callExtension _query);
call compile ("sc_extension" callExtension "start");
playSound "Alarm";

GVAR(replayId) = _insertResult select 1;

["replaySetup"] call CBA_fnc_localEvent;

private _json = format['
    {
        "server": "%1",
        "adc": "%2"
    }',
    serverName,
    QUOTE(VERSION)
];

private _init = [["event", GVAR(replayId), "0", "aar", _json, time], GVAR(extensionSeparator)] call CBA_fnc_join;
call compile (GVAR(extensionName) callExtension _init);
DBUG(format[ARR_2("Replay db entry setup %1", GVAR(replayId))], _functionLogName);
