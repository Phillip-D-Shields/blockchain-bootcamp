//SPDX-License-Identifier: MIT

pragma solidity ^0.8.4;

contract MappingStructContract {

    struct Payment {
        uint amount;
        uint timestamp;
    }

    struct Balance {
        uint totalBalance;
        uint paymentsMade;
        mapping(uint => Payment) payments;
    }

    mapping(address => Balance) public balanceReceived;

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function sendEth() public payable {
        balanceReceived[msg.sender].totalBalance += msg.value;

        Payment memory payment = Payment(msg.value, block.timestamp);
        balanceReceived[msg.sender].payments[balanceReceived[msg.sender].paymentsMade] = payment;
        balanceReceived[msg.sender].paymentsMade++;
    }

    function withdrawEth(address payable _to, uint _amount) public {
        require(_amount <= balanceReceived[msg.sender].totalBalance, "amount requested bigger than funds available");
        balanceReceived[msg.sender].totalBalance -= _amount;
        _to.transfer(_amount);
    }

    // this follows the checks-effects-interaction pattern
    // interact with outside addresses last
    function withdrawAllEth(address payable _to) public {
        uint balanceToSend = balanceReceived[msg.sender].totalBalance;
        balanceReceived[msg.sender].totalBalance = 0;
        _to.transfer(balanceToSend);
    }
}