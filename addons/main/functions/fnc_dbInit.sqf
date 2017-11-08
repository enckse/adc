/*
 * Author: Titan
 * Establishes connection to the database
 *
 * Arguments:
 * None
 *
 * Return Value:
 * None
 *
 * Example:
 * call FUNC(dbInit);
 *
 * Public: No
 */

#include "script_component.hpp"
private _functionLogName = "AAR > dbInit";

GVAR(extensionSeparator) = "`";

DBUG(format[ARR_2("Seperator %1", GVAR(extensionSeparator))], _functionLogName);
call compile (GVAR(extensionName) callExtension "start");
["dbSetup"] call CBA_fnc_localEvent;
