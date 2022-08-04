// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; 

//Types of Variables
//-Local Variables - declared inside a function and exist while the contract is executing
//-State Variables - declared inside of a contract but outside a function: data is stored on the blockchain
//-Global Variables

contract StateVariables {
    uint notStateVariable = 456;
}