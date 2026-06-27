// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Script.sol";
import "../src/MousengNFT.sol";

contract MintMousengNFT is Script {
    function run() external {
        vm.startBroadcast();

        MousengNFT nft = MousengNFT(0xA267C1f337dbe9a2497fC8d2405227F98Fe64427);
        nft.mint(0x00dC0454E2FdE88f43F1583657721F5008D35C45);

        vm.stopBroadcast();
    }
}
