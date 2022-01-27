// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract TransactionExample {
    uint256 public balanceReceived;

    function receiveEth() public payable {
        balanceReceived += msg.value;
    }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdrawEth() public {
        address payable receipient = payable(msg.sender);
        receipient.transfer(getBalance());
    }

    function WithdrawEthTo(address payable _to) public {
        _to.transfer(getBalance());
    }
}
