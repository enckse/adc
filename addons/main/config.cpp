#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        units[] = {};
        weapons[] = {};
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {"cba_common"};
        author[] = {"enckse"};
        authorUrl = "https://github.com/enckse/adc";
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
