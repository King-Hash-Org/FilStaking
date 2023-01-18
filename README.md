<img width="78" alt="22121" src="https://user-images.githubusercontent.com/103015469/213084424-1c18932f-81da-4056-a3de-9d50e005bf1f.PNG">

![node](https://img.shields.io/badge/node-v10.15.3-green)
![npm](https://img.shields.io/badge/npm-v6.9.0-green)
![solidity](https://img.shields.io/badge/solidity-0.8.13-brightgreen)

#  KingHash Fil Staking 

https://www.kinghash.com/fileCoinState?tabActive=1


### FIL Staking made **effortless**. Earn rewards from staking FIL. By depositing FIL into KingHash, you will essentially be committing to providing storage space to the Filecoin network. and receive kFIL rewards in return.

## Maximum stability & uptime 📱
KingHash node operators run a highly available and secure infrastructure to ensure validators are never penalized.
## DeFi strategies 💰
KingHash is integrated with many DeFi projects that can help you boost your staked FIL earnings.
## Real-time monitoring 🕒 
KingHash provides comprehensive details about validators to keep you aware of rewards & performance.
## Integration with your application 	📱
KingHash API and smart contracts can be integrated into your application to help your users stake FIL effortlessly.

Kinghash’s fil staking feature will enable individuals to organizations to stake and support the Filecoin network without running any complicated infrastructure. FIL that is staked within the protocol (kFil) returns a liquid staking , will offer increased liquidity and can be loaned to storage providers based on their reputation recorded on the blockchain, and also to be used in yield farming, lending pools, AMMs. 

## KingHash Fil-Staking will accomplish these following features through smart contract 
1. KingHash DAO -- will allow the platform to be transparent/trustless and run by kFil holders
2.  Liquid Staking Feature - lets stakers earn passive income . 
3. Oracle DAO - group of special nodes that helps shuttle information, monitor proposals / voting to the protocol 


## KingHash Fil Staking Contracts📑 Overview
## Main Contracts
1. `FilStaking.sol` is the liquid staking protocol contract that solves the problem of frozen staked Fil. 
2. `KingHashOracle.sol` is to provide external information to the blockchain.
3. `KFil.sol` is to provide a way for holders to earn rewards for supporting the Filecoin network . 
4. `TimelockController.sol` is responsible to safeguard KingHash from malicious actors.

## Layout
```
├───script
├───src 
│   ├───interfaces
│   │   ├─── ...
│   ├───tokens
│   │   ├─── ...
│   └───oracle
│       ├─── ...
└───test
```


## Quick Commands
- `forge install`
- `forge remappings`
- `forge flatten <File>`
- `forge fmt`
- `forge tree`
  
 ## Architecture Diagram

![image](https://user-images.githubusercontent.com/108317502/213113173-9f9c0182-7f99-4caa-8fab-a0d6dcab40ef.png)
