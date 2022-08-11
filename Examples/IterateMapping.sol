// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

contract IterableMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if(!inserted[_key]) {
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    //find the length of address array
    function getSize() external view returns (uint) {
        return keys.length;
    }

    //find the first address stored
    function first() external view returns (uint) {
        return balances[keys[0]];
    }

    //find last address balance
    function last() external view returns (uint) {
        return balances[keys[keys.length - 1]];
    }

    //find the nth element
    function get(uint _i) external view returns (uint) {
        return balances[keys[_i]];
    }
}