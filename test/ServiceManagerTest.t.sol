// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.8.12;

import {Test, console} from "forge-std/Test.sol";
import {ServiceManagerTest} from "../src/ServiceManagerTest.sol";

contract ServiceManagerTestTest is Test {
    ServiceManagerTest public serviceManagerTest;

    function setUp() public {
        serviceManagerTest = new ServiceManagerTest();
    }
}
