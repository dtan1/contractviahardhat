//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract SimpleBank {
   mapping (address => uint) balances;

  // constructor() public {
  // }
 
  // client can request the balance deposited.
  function getBalance() public view returns (uint) {
    return balances[msg.sender];
  }

  // accept deposit by client
  function deposit() public payable {
      balances[msg.sender] += msg.value;
  }

  //checks-Effects-Interaction Pattern
  function withdraw(uint amount) public {
      //checks
      require( balances[msg.sender] >= amount);

      console.log('balance is ', balances[msg.sender]);
      console.log('amount to withdraw is ', amount);
      //update effects
      balances[msg.sender] -= amount;

       console.log('balance afater withdrawal is ', balances[msg.sender]);
      //interaction - transfer call is used to further guard against re-entrancy
      payable(msg.sender).transfer(amount);

  }

    // withdraw all
    function withdrawAll() public {
      //checks
      require( balances[msg.sender] >= 0);

      //update effects
      uint amount = balances[msg.sender];
      balances[msg.sender] = 0;

      //interaction - transfer call is used to further guard against re-entrancy
      payable(msg.sender).transfer(amount);

  }


}
