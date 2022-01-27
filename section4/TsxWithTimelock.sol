// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.1;

contract TsxWithTimeLock {
    uint256 public contractBalance;
    uint256 public lockedUntil;

    function contractReceiveEth() public payable {
        contractBalance += msg.value;
        lockedUntil = block.timestamp + 1 minutes;
    }

    function getContractBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function withdrawContractEth() public {
        if (lockedUntil < block.timestamp) {
            address payable to = payable(msg.sender);
            to.transfer(getContractBalance());
        }
    }

    function withdrawContractEthTo(address payable _to) public {
        if (lockedUntil < block.timestamp) {
            _to.transfer(getContractBalance());
        }
    }
}
