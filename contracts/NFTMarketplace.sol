// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract NFTMarketplace is ERC721, Ownable {
    uint256 public tokenCounter;
    mapping(uint256 => address) private _owners;
    mapping(uint256 => uint256) private _tokenPrices;

    constructor() ERC721("MyNFT", "MNFT") {
        tokenCounter = 0;
    }

    // Mint a new NFT
    function mint(string memory tokenURI) public {
        uint256 newTokenId = tokenCounter;
        _safeMint(msg.sender, newTokenId);
        _setTokenURI(newTokenId, tokenURI);
        _owners[newTokenId] = msg.sender;
        tokenCounter++;
    }

    // List an NFT for sale
    function listForSale(uint256 tokenId, uint256 price) public {
        require(ownerOf(tokenId) == msg.sender, "You are not the owner");
        _tokenPrices[tokenId] = price;
    }

    // Buy an NFT
    function buyNFT(uint256 tokenId) public payable {
        uint256 price = _tokenPrices[tokenId];
        require(price > 0, "This NFT is not for sale");
        require(msg.value >= price, "Not enough Ether sent");

        address seller = _owners[tokenId];
        payable(seller).transfer(msg.value);
        _transfer(seller, msg.sender, tokenId);
        _tokenPrices[tokenId] = 0; // Remove from sale
    }

    // Get the price of an NFT
    function getPrice(uint256 tokenId) public view returns (uint256) {
        return _tokenPrices[tokenId];
    }
}