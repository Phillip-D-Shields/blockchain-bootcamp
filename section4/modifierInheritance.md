# inheritance

- multiple inheritance (c3 linearization)
- polymorphism
- using 'is' keyword

> ``` A is X,Y,Z```
- z is the most derived contract
- using ```super.``` to access base contract
- inherited contracts are deployed as a single contract

# modifiers

- change the behavior of functions
- auto check a pre-condition

```solidity
modifier onlyOwner {
    require(
        msg.sender == owner,
        "only the owner can call this function."
    );
    _;
}
```

## importing files

- one file can have many smart contracts
- usually better to separate each contract into its own file
- global: ```import "fileName.sol";```
- all members of a file ```import * as alias from "fileName.sol";```
- specific members of a file: ```import {member1 as alias, member2} from "fileName.sol";```
