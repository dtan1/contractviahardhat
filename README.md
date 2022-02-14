# contractviahardhat

This repo shows the example of smart contract project developed using the Hardhat framework.

## Hardhat Usage Summary :

| Topic | Questions / Commands | Answers |
|---|---|---|
|Definition | What is Hardhat ? | framework : <br> - A popular framework for writing smart contract. <br> - support EVM compatible blockchain such as BSC and polygon. <br><br> 3 main features : <br> - compilation <br> - deployment <br> - testing |
|Details | what are the key features ? | Debugger first <br> Plugin and Tasks <br> - Plugins : most of Hardhat functionalities are provided via plugin. <br><br> - Tasks : Javascript async functions with some associated metadata that can be automtated e.g. argements parsing, validataion etc <br><br> Network : <br> - comes with a local Ethereum network node for development <br><br> testing : <br> - stack trace.
| setup project | `npx hardhat` <br><br> what folders / files are created ?| create a boilerplate file/folder structure or directory layout : <br> `contracts` <br> - contains source code <br> `migration` <br> - scripts for staging deployment task <br> `test` <br> - testing contract <br> `hardhat.config.js`
| compilation | `npx hardhat compile` <br><br> what are the output ? | artifact folder is created with following sub-folders : <br> - build-info folder : json files contain the `abi (application binary interface)` <br> - contracts folder <br> - console.sol|
| console.log | what is it for ? <br><br> how to set up ?| add console log directly inside the smart contract solidity code <br><br> inside smart contract solidty code : <br> - import "hardhat/console.sol" |
|testing | `npx hardhat test` <br><br> how does it work ? | use js framework mocha (IT block, assert ..) <br><br> test written in js : <br>  - first line : import contract articfact <br> - then create contract block <br> - define diff test (in IT block) inside each contract block |
| test netowrk set up | use ropsten testnet via alchemy node operator <br><br> how to set up ? | need alchemy api url (using reospten) <br> - add it into the hardhat-config file <br><br> Metamask private key for ropsten : in Metamask <br> - select ropsten test network <br> - click on 3 dots <br> - click account details <br> - export private key <br><br> get fake eth from rospten faucet <br> - use account address from Metamask |
| deployment set up | name change to deployment script | change smaple-script.js to deploy.js |
| deployment | `npx hardhat run scripts/deploy.js --network ropsten` | update networki setting in hardhar-config.js <br> - see .env setup and usage below |
| set up .env file | safegurad private key info inside a file <br> (do not upload to github - add .env inside .gitignore) | npm install dotenv --save <br><br>  create .env file : <br> - ALCHEMY_API_URL = '....' <br> - METAMASK_PRIVATE_KEY = '....' |
| .env file usage |  | update hardhat.config.js <br> - require('dotenv').config() <br> - const { ALCHEMY_API_URL, METAMASK_PRIVATE_KEY) = process.env |
| deployment verification | copy output contract address from 'hardhat run' | ropsten.etherscan.io <br> - paste contract address |
<br> 
 
