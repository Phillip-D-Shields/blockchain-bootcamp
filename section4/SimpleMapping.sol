//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract SimpleMappingExample {

    mapping(uint => bool) public myMapping;
    mapping(address => bool) public myAddressMapping;
    mapping(uint => mapping(uint => bool)) uintUintBoolMapping;

    // getter and setters for private mapping required
    function setUintUintBoolMapping(uint _idx1, uint _idx2, bool _value) public {
        uintUintBoolMapping[_idx1][_idx2] = _value;
    }

    function getUintUintBoolMapping(uint _idx1, uint _idx2) public view returns (bool) {
        return uintUintBoolMapping[_idx1][_idx2];
    }

    function setValue(uint _index) public {
        myMapping[_index] = true;
    }

    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true;
    }


}