// SPDX-License-Identifier: MIT

pragma solidity 0.8.24; 


contract Storage {

   int public balance;
   address public owner;

   constructor() {
      balance = msg.value;
      owner = msg.sender;
   }
   
}