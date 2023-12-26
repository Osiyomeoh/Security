// SPDX-License-Identifier: MIT
pragma solidity 0.8.18; // 

contract StorageVictim {
    address immutable owner; // Declare 'owner' as immutable

    struct Storage {
        address user;
        uint256 amount;
    }

    mapping(address => Storage) storages;

    constructor() {
        owner = msg.sender;
    }

    function store(uint256 amount) public { // Rename '_amount' to 'amount'
        // Explicitly initialize the struct instance
        Storage memory str = Storage({
            user: msg.sender,
            amount: amount
        });

        storages[msg.sender] = str;
    }

    function getStore() public view returns (address, uint256) {
        Storage memory str = storages[msg.sender];
        return (str.user, str.amount);
    }

    function getOwner() public view returns (address) {
        return owner;
    }
}
