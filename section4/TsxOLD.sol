// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.5.13;

contract TransactionExamples {
    uint256 public balanceReceived;

    function receiveEth() public payable {
        balanceReceived += msg.value;
    }

    function getEthBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdrawEth() public {
        address payable to = msg.sender;

        to.transfer(this.getEthBalance());
    }

    function WithdrawEthTo(address payable _to) public {
        _to.transfer(this.getEthBalance());
    }
}
