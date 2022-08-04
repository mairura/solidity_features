// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; 

//Data Types - values and references
contract ValueTypes {
    bool public b = true;
    uint public u = 123; //only applicable for positive numbers
    int public i = -123; //(-2**255 to 2**255 - 1)

    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    address public addr = 0x3db7B2413ae63E7e2D1a462119787C3aa3c0459e;

    //bytes32 will be encoutered when using keccak256 cryptographic format
    bytes32 public b32 = 0x3db7B2413ae63E7e2D1a462119787C3aa3c0459e0x3db7B2413ae63E7e2D19e; 

}