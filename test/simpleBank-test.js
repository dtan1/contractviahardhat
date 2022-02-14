const { expect } = require("chai");
const { ethers } = require("hardhat");


describe("SimpleBank", function () {
    it("should deposit and getBalance correctly", async function () {
     const [account_one] = await ethers.getSigners();

      const SimpleBank = await ethers.getContractFactory("SimpleBank");
      const simpleBank = await SimpleBank.deploy();
      await simpleBank.deployed();
  
      //const account_one = accounts[0];
      const amount = "10.0";

      await simpleBank.deposit(
        {   from : account_one.address,
            value : ethers.utils.parseEther(amount)}
      );

      const balance = await simpleBank.getBalance(
          { from : account_one.address}
      );
      balanceInEther = ethers.utils.formatEther(balance);
  
      //console.log("balanceInEther is " + balanceInEther);
      //console.log("balance is " + balance);
  
      // assert.equal(balanceInEther, amount, "Balance not equal");

      expect(balanceInEther).to.equal(amount);

    });
  });