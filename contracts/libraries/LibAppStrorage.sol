// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;
import "@openzeppelin/contracts/utils/Counters.sol";
library Storage{  
    using Counters for AppStorage.Counters.Counter;
    struct AppStorage{
        address contractAddress;
        Counters.Counter _tokenIds;
        Counter.Counter _itemIds;
        Counter.Counter _itemsSold;
        address owner;
        uint256 listingPrice;
        mapping(uint256 => MarketItem) idToMarket;
    }
     struct MarketItem{
        uint itemId;
        address nftContract;
        uint256 tokenId;
        address payable seller;
        address payable owner;
        uint256 price;
        bool sold;
    }
}