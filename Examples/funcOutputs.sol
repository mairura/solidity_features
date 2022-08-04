// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

//Functions can return multiple outputs
//-Named outputs
//You can capture the results of one's function through destructuring method

contract FunctionOutputs {
    function returnMany() public pure returns (uint, bool) { //returns multiple outputs
        return (1, true);
    }

    function named() public pure returns (uint x, bool b) {
        return (1, true);
    }

    function assigned() public pure returns (uint x, bool b) {
        x = 1;
        b = true;
    }

    //Destructuring assignment
    function destructuringAssignments() public pure {
        (uint x, bool b) = returnMany();
        (, bool b) = returnMany();
    }
}