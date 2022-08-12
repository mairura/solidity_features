// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

contract SimpleStorage {
    string public text; //text - public state variable

    //aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
    //calldata 89626 gas
    //memory 90114 gas
    function set(string calldata _text) external { //_text - function input
        text = _text;
    }

    function get() external view returns (string memory) {
        return text;
    }
}