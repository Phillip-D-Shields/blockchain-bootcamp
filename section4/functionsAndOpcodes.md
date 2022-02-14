# functions and opcodes

## deployment

### 1. smart contract creation
- solidity
- very high level code

### 2. compile to bytecode
- similar to assembler
- runs on the EVM

### 3. send to network
- tsx without receiver
- tsx containing data

## interaction
- low level via the "data" field when sending a tsx
- client uses an ABI array (application binary interface)
- ABI array contains all the functions/params/return values of the contract

### ABI (application binary interface)

- json file
- contains all the info to interact with the contract
- smart contracts on the blockchain are binary
- client software doesnt know the interfaces
- uses ABI as config guide

