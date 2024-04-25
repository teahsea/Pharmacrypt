# Pharmacrypt Smart Contract

Welcome to the Pharmacrypt smart contract repository! Pharmacrypt is a blockchain-based solution for tracking pharmaceutical products in the supply chain to ensure transparency, authenticity, and integrity.

## Smart Contract Overview

The Pharmacrypt smart contract is written in Solidity, the programming language for Ethereum smart contracts. It includes functionalities for adding new pharmaceutical products to the blockchain, transferring ownership of products, and verifying product authenticity.

## Deployment Instructions

To deploy the Pharmacrypt smart contract on the Ethereum blockchain, follow these steps:

1. Install an Ethereum-compatible development environment such as [Truffle](https://www.trufflesuite.com/docs/truffle/overview) or [Hardhat](https://hardhat.org/getting-started/) [Remix-IDE](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.25+commit.b61c2a91.js)
2. Let's take exmaple of run with Remix-IDE.
3. Go to [Remix.IDE](https://remix.ethereum.org/#lang=en&optimize=false&runs=200&evmVersion=null&version=soljson-v0.8.25+commit.b61c2a91.js).
4. Choose an option of improt contract from github.
5. Improt this contract path: https://github.com/teahsea/Pharmacrypt/blob/main/Pharmacrypt.sol
6. Compile and Deploy.
7. Interact with Deployed version.



## Interacting with the Smart Contract

Once the Pharmacrypt smart contract is deployed, you can interact with it using Ethereum-compatible wallets or through web3.js or ethers.js.

### Example Interactions:

1. **Adding a Product:**
- Call the `addProduct` function with the required parameters such as product ID, name, batch number, manufacturing date, and expiration date.

2. **Transferring Ownership:**
- Call the `transferProductOwnership` function to transfer ownership of a product to another Ethereum address.

3. **Verifying Product Authenticity:**
- Call the `verifyProduct` function to mark a product as verified by the manufacturer or the current owner.

For detailed information on the smart contract functions and parameters, refer to the source code in `Pharmacrypt.sol`.

## Contributing

Contributions to the Pharmacrypt smart contract repository are welcome! Feel free to submit pull requests with improvements, bug fixes, or additional features.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

