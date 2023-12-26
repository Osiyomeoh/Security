
# StorageVictim Contract

## Overview
The StorageVictim contract is a simple Ethereum smart contract written in Solidity (version 0.8.18). It is designed for storing and retrieving user-specific data on the Ethereum blockchain. The contract allows users to store their address along with a numerical value (amount) and retrieve this information later.

## Features
- **Immutable Owner**: The contract records the address of the contract creator as an immutable owner.
- **Data Storage**: Users can store their address and an associated amount.
- **Data Retrieval**: Users can retrieve the stored data associated with their address.
- **Owner Identification**: Any user can retrieve the address of the contract's owner.

## Functions
### Constructor
- Initializes the contract setting the `owner` to the address that deploys the contract.

### store(uint256 amount)
- Allows users to store their address and a specified amount.
- Parameters:
  - `amount`: A `uint256` value to be stored alongside the user's address.

### getStore()
- Returns the data (user address and amount) stored by the caller of this function.
- Returns:
  - `address`: The user's address.
  - `uint256`: The stored amount.

### getOwner()
- Returns the address of the contract owner.
- Returns:
  - `address`: The owner's address.

## Usage
This contract can be used in scenarios where a simple, decentralized storage of address-associated data is needed. It could be utilized in applications such as basic token storage, voting systems, or any platform requiring a record of user-specific numerical data.

## Deployment
To deploy this contract:
1. Ensure you have a Solidity compiler (version 0.8.18).
2. Compile the contract using your preferred tools (like Truffle, Remix, or Hardhat).
3. Deploy to the Ethereum network using a wallet that supports smart contract deployment (like MetaMask).

## Security and Considerations
- The contract does not implement access control for its functions; hence, any address can store and retrieve data.
- There is no functionality to update or delete stored data.
- Users should be aware that all interactions with this contract are publicly visible on the blockchain.

## License
This project is licensed under the MIT License.
