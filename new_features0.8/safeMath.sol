// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//safe math
contract SafeMath {
    //This function causes an error
    // function testUnderflow() public pure returns (uint) {
    //     uint x = 0;
    //     x--;   // this causes an underflow since it returns highest value; it wraps around below minimum number
    //     return x; // returns 255
    // }

    //to use overflow and underflow without causing an error
    function testUncheckedUnderflow() public pure returns (uint) {
        uint x = 0;
        unchecked { x--; }; //you wrap it under unchecked
        return x;
    }
}