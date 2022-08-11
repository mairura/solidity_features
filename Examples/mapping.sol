// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

 contract Mapping {
    mapping(address => uint) public balances;
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender]; //123
        uint bal2 = balances[address(1)]; // 0
    }
 }