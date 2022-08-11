// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

//Arrays - dynamic or fixed size
 
 contract Array {
    //Initialization
    uint[] public nums = [1, 2, 3]; //dynamic array
    uint[3] public nums = [1, 2, 3]; //fixed- size array

    //Array operations
    function examples() external {
        nums.push(4); //[1,2,3,4] - insert(push) element to array
        //You can't push to a fixed array

        //Access fixed array elements
        uint x = nums[1];
        nums[2] = 777; //[1, 2, 777, 4]
        delete nums[1]; //[1, 0, 777, 4] sets the value to default
        nums.pop(); //removes last element
        uint len = nums.length; //finding length of array

        //Create array in memory
        uint[] memory a = new uint[](5); //you can only update or get value but not do operations like push or pop
        a[1] = 123;
    }
    //Writing a function that returns an array is not recommended since the bigger the array the higher the amount of gas it would use up
    function returnArray() external view returns(uint[] memory) {
        return nums;
    }
 }
 