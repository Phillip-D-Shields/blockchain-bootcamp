//SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

// the assert and requires use uint64 to focus on the integer rollover bug, not so much an issue in solidity 0.8.~ or higher

contract Exceptions {
    mapping(address => uint64) public balanceReceived;

    function receiveEth() public payable {
        assert(msg.value == uint64(msg.value));
        balanceReceived[msg.sender] += uint64(msg.value);
        assert(balanceReceived[msg.sender] >= uint64(msg.value));
    }

    function withdrawEth(address payable _to, uint64 _amount) public {
        require(_amount <= balanceReceived[msg.sender], "nope, amount to withdraw is more than amount deposited");
        assert(balanceReceived[msg.sender] >= balanceReceived[msg.sender] - _amount);
        balanceReceived[msg.sender] -= _amount;
        _to.transfer(_amount);
        
    }
}