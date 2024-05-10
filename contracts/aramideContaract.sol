// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ExampleContract {
    mapping(address => uint) private balances;

    function deposit() public payable {
        require(msg.sender != address(0), "Invalid sender address");
        assert(msg.value > 0);
        balances[msg.sender] += msg.value;
    }

    function withdraw(uint256 amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        if (amount > 0) {
            payable(msg.sender).transfer(amount);
            balances[msg.sender] -= amount;
        }
    }

    function getBalance(address account) public view returns(uint) {
        return balances[account];
    }
}
