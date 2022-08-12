// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

//Data locations - storage, memory, calldata

contract DataLocations {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples(uint[] memory y, string memory s) external returns (uint[] memory) {
        myStructs[msg.sender] = MyStruct({foo: 123, text: "bar"});

        //we define struct as storage when we want to modify/update the struct
        MyStruct storage myStruct = myStructs[msg.sender];
        myStruct.text = "Monday";

        //we can read data from the struct without updating it using memory locations
        MyStruct memory readOnly = myStructs[msg.sender];
        readOnly.foo = 456;

        //returning data from memory
        uint[] memory memArr = new uint[](3); //arrays declared in memory are only fixed-size arrays
        memArr[0] = 234;
        return memArr;
        
    }

    //using calldata means that the data will not be modifiable but it saves gas when you pass the input into another function
    function _internal(uint[] calldata y) private {
        uint x = y[0];
    }
}