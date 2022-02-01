# complex variable types

- enum
- arrays
- structs
- mappings


### mappings
- similar to hash maps
- ```mapping(_keyType => _valueType) mappingName;```
- keyType can be any elementary type
- valueType can be any type, including mappings
- public state variables of mappings become a getter
- no length
- initialized by default

```solidity
mapping(address => bool) addressAllowed;

addressAllowed[someAddress] = true;
```

### structs

- create own custom types
- better than objects

```solidity
struct Funder {
    adderss addr;
    uint amount;
}

Funder _funder;

_funder.addr = 0x123;
_funder,amount = 5000;
```

### mappings and structs together

```solidity
struct ThisStruct {
    uint var1;
    uint var2;
}

mapping(uint => ThisStruct) public someVar;
```

### arrays

- fixed or dynamic size
- T[k] = fixed size of type T with k elements
- T[] = dynamic size of type T
- T[][5] = 5 dynamic sized arrays
- two methods length and push(el)
- arrays are expensive, better to use mappings

### enums

- create user-defined types
- internally maps as integers 