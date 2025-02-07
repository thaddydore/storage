// SPDX-License-Identifier: MIT

pragma solidity 0.8.24; 


contract Storage {

   uint256 public balance;
   address public owner;

   constructor() payable {
      balance = msg.value;
      owner = msg.sender;
   }
   
}