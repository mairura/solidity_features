// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

//using delete to remove an element from an array will reset the value to default but wont shrink the array
//To shrink the array we shift all the elements to the left of what we want to shift

contract ArrayShift {
    uint[] public arr;

    function example() public {
        arr = [1, 2, 3];
        delete arr[1]; //[1, 0, 3]
    }

    //Shift the array
    // [1, 2, 3] --remove(1) --> [1, 3, 3] --> [1, 3]
    // [1] -- remove(0) --> [1] --> []
     function remove(uint _index) public {
        require(_index < arr.length, "index out of bound");

        for(uint i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1]; //sets the value of i to be same as the next value to it
        }
        arr.pop();
     }

     function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        //[1, 2, 4, 5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr..length == 4);

        arr = [1];
        remove(0);
        //[]
        assert(arr.length == 0);
    }
} 