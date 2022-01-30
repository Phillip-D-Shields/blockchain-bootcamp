# accounts

### EOA : externally owned account

externally owned accounts 

### contract account

contract accounts can not initiate contracts by themself. 

## addresses

- all info is public
- two important members (like methods): .balance and .transfer(amount)

```solidity
address myAddress = "0xabc123...";

myAddress.balance; // current balance in wei
myAddress.transer(amountInWei); // transfers FROM the smart contract to the address the amount specified
```

### address low level calls

- .send() returns a boolean
- .call.gas().value()() allows you to forward a specific amount of gas and returns a boolean

- **be aware of possible re-entrancy dangers** 
- .send and .transfer only transfer 2300 gas
- use caution when sending funds to smart contracts 

## global objects

- global objects help understand where tsx come from and what happens inside
- three VERY important global properties:
1. msg.sender - the address of the account that init the tsx
2. msg.value - how much ether is sent
3. now - the current timestamp (can be influenced by miners, dont use for even/odd)

## payable functions

- a function cannot receive ether unless marked "payable"
```
address payable myAddress;
function myFunction() public payable {...}
```
- a function/address not marked payable will fail when sent ether