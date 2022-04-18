// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

import {Storage} from "../libraries/LibAppStorage.sol";

contract GameItem is ERC721URIStorage {
    Storage.AppStorage internal s;
   
    constructor(address marketPlace) ERC721("Jupiter NFTs", "JN" ) {
        s.contractAddress = marketPlace;
    }

    function addNFT(string memory tokenURI)
        public
        returns (uint256)
    {
        s._tokenIds.increment();

        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);
        setApprovalForAll(s.contractAddress, true);
        return newItemId;
    }
}