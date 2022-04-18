// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import {Storage} from "../libraries/LibAppStorage.sol";
import "openzeppelin/contracts/security/ReenterancyGuard.sol";
contract MarketPlace is ReenterancyGuard {
    Storage.AppStorage internal s;
    // s.listingPrice = 0.025 ether;

    function init() external{
        s.owner = payable(msg.sender);
    }
}
