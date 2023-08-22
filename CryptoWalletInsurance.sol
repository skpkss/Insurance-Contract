// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CryptoWalletInsurance {
    address public owner;
    uint public premiumAmount;
    bool public isClaimed;
    uint public lastPremiumPaidAt;
    uint public claimableAmount;

    constructor(uint _premiumAmount, address _owner) {
        require(_premiumAmount > 0, "Premium must be greater than 0");
        premiumAmount = _premiumAmount;
        owner = _owner;
        isClaimed = false;
        lastPremiumPaidAt = block.timestamp;
        // Set initial claimableAmount based on premium and interest conditions
        if (premiumAmount < 100) {
            claimableAmount = premiumAmount + (premiumAmount / 100); // +1% interest
        } else {
            claimableAmount = premiumAmount + (premiumAmount * 5 / 100); // +5% interest
        }
    }
    
    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can perform this action");
        _;
    }

    function claimInsurance() external onlyOwner{
        require(msg.sender == owner, "Only owner can claim insurance");
        require(block.timestamp > lastPremiumPaidAt , "Must wait at least 30 days after last premium payment");
        require(!isClaimed, "Insurance already claimed");
        isClaimed = true;
    }
}
