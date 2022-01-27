// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.5.13;

contract WorkingWithVariables {
    uint256 public myUint;  // myUint = 0

    function setMyUint(uint _paramUint) public {
        myUint = _paramUint;
    }

    bool public myBool; // myBool = false

    function setMyBool(bool _paramBool) public {
        myBool = _paramBool;
    }

    // integer wrap around problem example
    uint8 public myUint8; // myUint8 = 0
    // uint8 = 0 to 255

    function incrementUint8() public {
        myUint8++;
    }

    function decrementUint8() public {
        // if this function is used when myUint8 = 0
        // then it will 'wrap around' to 255
        // and vice versa
        myUint8--;
    }

    address public myAddress;

    function setAddress(address _paramAddress) public {
        myAddress = _paramAddress;
    }

    function getBalanceOfAddress() public view returns(uint) {
        return myAddress.balance;
    }

    string public myString;

    function setMyString(string memory _paramString) public {
        myString = _paramString;
    }
}