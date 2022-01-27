# uint, unsigned integers

solidity does not allow for null or undefined as variable values

```solidity
pragma solidity ^0.5.13;

contract WorkingWithVariables {
    uint256 public myUint;  // myUint = 0

    function setMyUint(uint _paramUint) public {
        myUint = _paramUint;
    }
}
```
