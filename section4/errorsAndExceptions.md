# transactions and errors

- transactions are atomic
- errors revert state (everything to pre tsx attempt state)
- require, assert, revert
- cascading, except low level functions
- solidity does not catch them
- revert and require can return error string

## assert vs require

- assert is used to validate invariants
- require used to validate user input
- revert operation for require, returns remaining gas (0xfd)
- invalid operation for assert, consumes all gas (0xfe)

## assert is triggered

- out of bounds index
- division or modulus by zero (5/0 or 5%0)
- byteshifting negative amount
- convert value too large or negative to enum
- zero-initialized var of internal function
- assert(X) where X evaluates to false

## require is triggered

- require(X) where X evaluates to false
- function call via message call, but doesnt finish, except low level calls
- external function call to a contract without code
- contract receives ether without payable modifier
- contract receives ether at getter function
- address.transfer() fails
- require and revert are essentially interchangeable (require is more common)

## key points

- use require for input validation
- use assert for checking internal states