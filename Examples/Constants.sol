// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; 

//21442 gas
contract Constants {
    address public constant MY_ADDRESS = 0x3db7B2413ae63E7e2D1a462119787C3aa3c0459e;
    uint public constant MY_UINT = 123;
}

//23553 gas
contract Var {
    address public MY_ADDRESS = 0x3db7B2413ae63E7e2D1a462119787C3aa3c0459e;
}