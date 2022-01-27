# value types

- boolean
- int / uint
- address
- dynamically sized byte arrays (string)

# all variables are initialized by default

- no null or undefined
- (U)Int = 0
- bool = false
- string = ""

> public variables generate a getter with the name of the variable

> reference types need a memory location (memory or storage)

# Boolean

- can negate: thisBool = !thisBool
- can use or/and: if(thisVar && thatVar)  if(thisVar || thatVar) 

# (unsigned) integer

- uint8 to uint256 (8 bit increments)
- uint8 = 0 to 255
- int8 = -128 to +127
- uint256 = 2^256
- uint is an alias for uint256

# fixed point numbers

- not implemented yet ???

# address

- every interaction is address based
- 20 byte value (eth address)
- used to send, receive, and interact with smart contracts
- has a .balance method to display user balance

# string and bytes

- both are special arrays
- string is equal to bytes
- no length or index-based access
- bytes for arbitrary length raw data
- string for arbitrary length string data (utf-8)
- **expensive**

# overflow / underflow

before solidity 0.8 overflow and underflow could occur during transactions without error. solidity 0.8 will refuse the transaction and send an appropriate error