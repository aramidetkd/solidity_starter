
// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract HelloWorld {
    string public greet = "Hello World!";
}

contract MessageContextExample {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function getMessageSender() public view returns (address) {
        return msg.sender;
    }

    function getMessageValue() public view returns (uint) {
        return msg.value;
    }

    function getMessageData() public view returns (bytes calldata) {
        return msg.data;
    }

    function getGasPrice() public view returns (uint) {
        return tx.gasprice;
    }

    function getGasLimit() public view returns (uint) {
        return block.gaslimit;
    }

    function getBlockTimestamp() public view returns (uint) {
        return block.timestamp;
    }

    function getBlockNumber() public view returns (uint) {
        return block.number;
    }
}
