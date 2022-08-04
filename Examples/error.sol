// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; 

//Error Handling
//Types of error handlers:
//-require - checks fro input validations and access control
//-revert - same as require but can be used in complex computation or in usage of alot of ifelse statements

contract Error {
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");
    }

    function testRevert {
        if(_i > 10) {
            revert("i > 10");
        }
    }

    uint public num = 123;
    function testAssert() public view {
        assert(num == 123); //this statement should always evaluate to true
    }

    //custom error
    error MyError(address caller, uint i);

    function testCustomError(uint _i) public view {
        if(_i > 10) {
            revert MyError(msg.sender, _i);
        }
    }

}