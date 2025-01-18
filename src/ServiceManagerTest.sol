// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.12;

import "mach-avs/src/core/MachServiceManager.sol";

contract ServiceManagerTest {
    MachServiceManager public serviceManager;

    constructor() {
        serviceManager = MachServiceManager(0x00F6dd9A3abe4b64988c007f9EAa188E3971aD7b);
    }

    function allowlistEnabled() public view returns (bool) {
        return serviceManager.allowlistEnabled();
    }
}
