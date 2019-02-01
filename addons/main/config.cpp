#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_common"};
        author[] = {"enckse"};
        authorUrl = "https://voidedtech.com/cgit/adc";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
