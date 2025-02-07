// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

contract Storage {
    int public balance;

    constructor() {
        balance = msg.value;
    }

    function increaseBalance(int amount) public {
        balance += amount;
    }
}