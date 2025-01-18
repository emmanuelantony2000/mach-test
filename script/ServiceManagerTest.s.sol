// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.12;

import {Script, console} from "forge-std/Script.sol";
import {ServiceManagerTest} from "../src/ServiceManagerTest.sol";

contract ServiceManagerTestScript is Script {
    ServiceManagerTest public serviceManagerTest;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        serviceManagerTest = new ServiceManagerTest();
        bool allowlistEnabled = serviceManagerTest.allowlistEnabled();

        console.log("Allowlist enabled: %s", allowlistEnabled);

        vm.stopBroadcast();
    }
}
