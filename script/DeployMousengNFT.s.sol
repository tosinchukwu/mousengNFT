// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/MousengNFT.sol";

contract DeployMousengNFT is Script {
    function run() external {
        vm.startBroadcast();

        new MousengNFT("ipfs://bafybeifeiggjo5pjolyk7mc36umkwdvmviu4jr4vhhysfjse56htcmi7je/1.json");

        vm.stopBroadcast();
    }
}
