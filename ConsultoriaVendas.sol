// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ConsultoriaVendas is ERC721, Ownable {
    uint256 public nextTokenId;
    mapping(uint256 => string) public metadata;

    constructor() ERC721("Consultoria Vendas NFT", "CVNFT") Ownable(msg.sender) {}

    function mintConsultoria(address to, string memory _uri) public onlyOwner {
        uint256 tokenId = nextTokenId;
        nextTokenId++;
        _safeMint(to, tokenId);
        metadata[tokenId] = _uri;
    }
}
