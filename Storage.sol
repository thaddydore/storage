
// SPDX-License-Identifier: MIT

pragma solidity 0.8.24; 


contract Storage {

   uint256 public balance;
   address public owner;

   constructor() payable {
      balance = msg.value;
      owner = msg.sender;
   }

   function decreaseBalance(uint amount) public returns (uint256) {
        require(msg.sender == owner);
        if(amount <= balance){
          balance -= amount;  
       }
       return balance;

    }
     
   function increaseBalance(int amount) public {
      balance += amount;
   }

   event NewPullRequest(address indexed sender, uint256 requestId);
    
    function createNewPR() external returns (uint256) {
      require(msg.sender == Storage(owner).owner); 
      emit NewPullRequest(msg.sender, pullRequstId);
      return pullRequestId++;
   
   }
}
