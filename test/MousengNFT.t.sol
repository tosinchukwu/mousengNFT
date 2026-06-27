// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "forge-std/Test.sol";
import "../src/MousengNFT.sol";

contract MousengNFTTest is Test {
    MousengNFT nft;
    address user = address(1);

    function setUp() public {
        nft = new MousengNFT("ipfs://test/");
    }

    function testMintNFT() public {
        nft.mint(user);
        assertEq(nft.ownerOf(1), user);
    }

    function testOnlyOwnerCanMint() public {
        vm.prank(user);
        vm.expectRevert();
        nft.mint(user);
    }
}
