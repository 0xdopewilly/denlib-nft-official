//SPDX-License-Identifier: MIT

pragma solidity ^0.8.21;

import {Script} from "forge-std/Script.sol";
import {DevOpsTools} from "lib/foundry-devops/src/DevOpsTools.sol";
import {DenLibNft} from "../src/DenLibNft.sol";

contract MintDenLibNft is Script {
    string public constant PUG = "https://ipfs.io/ipfs/QmarSLjgmoFYGAk69fEra4hG7G67Tv7KqkCwq5QfL6tcCp?filename=0.json";

    function run() external {
        address mostRecentlyDeployed = DevOpsTools.get_most_recent_deployment("DenLibNft", block.chainid);

        mintNftOnContract(mostRecentlyDeployed);
    }

    function mintNftOnContract(address contractAddress) public {
        vm.startBroadcast();
        DenLibNft(contractAddress).mintNft(PUG);
        vm.stopBroadcast();
    }


}
