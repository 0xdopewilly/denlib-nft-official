//SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

import {Script} from "forge-std/Script.sol";
import {DenLibNft} from "../src/DenLibNft.sol";

contract DeployDenLibNft is Script{
    function run() external returns (DenLibNft) {
        vm.startBroadcast();
        DenLibNft denLibNft = new DenLibNft();
        vm.stopBroadcast();
        return denLibNft;
    }
}