// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

error Unauthorized();

// function outside a contract - you can import it inside of contracts
function helper(uint x) view returns (uint) {
    return x * 2;
}

contract TestHelper {
    function test() external view returns (uint) {
        return helper(123);
    }
}