# Crypto Wallet Insurance Contract

This Solidity smart contract implements a simple insurance protocol for crypto wallet owners. Users can pay a premium to the contract and claim insurance if certain conditions are met.

## Introduction

The `CryptoWalletInsurance` contract allows users to purchase insurance for their crypto wallets. The insurance mechanism is as follows:
- Users pay a premium amount to the contract.
- If certain conditions are met, users can claim insurance.

## Contract Details

- `owner`: The address of the owner who deployed the contract.
- `premiumAmount`: The amount that users need to pay as a premium.
- `isClaimed`: A flag indicating whether insurance has been claimed.
- `lastPremiumPaidAt`: Timestamp of the last premium payment.
- `claimableAmount`: The amount that users can claim if insurance conditions are met.


### Constructor

The contract is deployed using the `constructor` with the following parameters:
- `_premiumAmount`: The premium amount users need to pay.
- `_owner`: The address of the owner who deploys the contract.

The initial `claimableAmount` is calculated based on the premium and interest conditions.

### claimInsurance

The `claimInsurance` function allows the owner to claim insurance if the following conditions are met:
- The sender is the owner.
- The minimum waiting period after the last premium payment has passed.
- Insurance has not been claimed before.

# Collateral Protection Insurance Contract

This Solidity smart contract implements a collateral protection insurance protocol. Users can claim protection for their collateral based on the insurance policy chosen.

## Introduction

The `CollateralProtectionInsurance` contract allows users to claim protection for their collateral based on the coverage percentage specified in the contract.

## Contract Details

- `owner`: The address of the owner who deployed the contract.
- `coveragePercentage`: The percentage of collateral that can be claimed as protection.
- `isClaimed`: A flag indicating whether protection has been claimed.
- `protectedAmount`: The amount of collateral that can be claimed.

### Constructor

The contract is deployed using the `constructor` with the following parameters:
- `_coveragePercentage`: The coverage percentage users can claim.
- `_owner`: The address of the owner who deploys the contract.

### claimCollateralProtection

The `claimCollateralProtection` function allows the owner to claim collateral protection based on the following conditions:
- The sender is the owner.
- Protection has not been claimed before.

If the `coveragePercentage` is set to 100, the user can claim 100% of their collateral. Otherwise, the contract calculates the protected amount based on the specified coverage percentage.

## Contribution
This code is contributed by Saurabh Kaplas.
