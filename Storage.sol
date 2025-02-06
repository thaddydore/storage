// SPDX-License-Identifier: MIT

pragma solidity 0.8.24; 


contract Storage {

   int public balance;
   address public owner;

   constructor() {
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
    event NewPullRequest(address indexed sender, uint256 requestId);
    
    function createNewPR() external returns (uint256) { // Create a new PR when balance decreases!
    require(msg.sender == Storage(owner).owner); 
     emit NewPullRequest(msg.sender, pullRequestId);
      return pullRequestId++;
   
}
