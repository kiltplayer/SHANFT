// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract SHANFT is ERC721URIStorage {

    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("Shahid NFT","SNT") {

    }

    function mintNFT(address owner_address, string memory sntUrl) public returns (uint256){
        
        _tokenIds.increment();

        uint256 newNFTId = _tokenIds.current();

        _mint(owner_address, newNFTId);
        
        _setTokenURI(newNFTId, sntUrl);

        return newNFTId;

    }
}
