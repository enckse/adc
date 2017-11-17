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

GVAR(replayId) = _insertResult select 1;

["replaySetup"] call CBA_fnc_localEvent;

private _server = call serverName
private _init = format['
    {
        "replayId": "%1",
        "server": "%2",
    }',
    GVAR(replayId),
    _server
];

["aar", _json, 0] call FUNC(dbInsertEvent);

DBUG(format[ARR_2("Replay db entry setup %1", GVAR(replayId))], _functionLogName);
