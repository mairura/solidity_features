// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

//Custom error - you define the error then use it by calling: saves on gas usage instead of string

contract VendingMachine {
    address payable owner = payable(msg.sender);

    error Unauthorized(); //custom error: you can log parameters into the custom error: can be declared outside the contract where you can import to other contracts

    function withdraw() public {
        if(msg.sender != owner)
            // revert("error");
            //-Using string as error uses gas depending on the length of the string

            //to use custom error
            revert Unauthorized();

        owner.transfer(address(this).balance);
    }
}