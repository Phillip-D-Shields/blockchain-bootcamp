// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.1;

contract StartStopUpdate {
    address public owner;
    bool public isPaused;

    constructor() {
        owner = msg.sender;
    }

    function sendEth() public payable {}

    function pauseContract(bool _isPaused) public {
        require(
            owner == msg.sender,
            "nope, cant do that. you are not the contract owner"
        );
        isPaused = _isPaused;
    }

    function withdrawAllEth(address payable _to) public {
        require(
            owner == msg.sender,
            "no bueno, you are not the contract owner"
        );
        require(isPaused == false, "nope, contract is currently paused");
        _to.transfer(address(this).balance);
    }

    function destroyContract(address payable _to) public {
        require(owner == msg.sender, "nope, not the owner");
        selfdestruct(_to);
    }
}
