// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract ConnectWallet {
    address public immutable walletAdress;
    uint public eth = 1;
    uint private totalEth = eth;

    // Connect Wallet

    constructor() {
        walletAdress = msg.sender;
    }

    // Send ethereum

    function sendEth(uint newEth) public {
     totalEth = newEth + eth;
    }

    function showTotal() public view returns(uint) {
        return totalEth;
    }

    // Upload NFT

    struct NFT {
        string nft_name;
        uint nft_price;
    }

    mapping(uint => NFT) item;
    uint256[] nftID;

    function setNFT(string memory nftName, uint nftPrice) public {
        NFT storage nft = item[nftID.length];
        nft.nft_name = nftName;
        nft.nft_price = nftPrice;
        nftID.push(nftID.length);
    }

    function getNFT(uint id) public view returns(string memory, uint) {
        NFT storage nft = item[id];
        return (nft.nft_name,nft.nft_price);
    }

}