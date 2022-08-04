// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; 

contract ViewAndPureFunctions {
    uint public num;
    
    function viewFunc() external view returns (uint) { //read-only function; reads state var from blockchain
        return num;
    }

    function pureFunc() external pure returns (uint) { //does't read or modify the state of the contract on the blockchain
        return 1;
    }

    function addToNum(uint x) external view returns (uint) { //reads state variable from blockchain
        return num + x;
    }

    function add(uint x, uint y) external pure returns (uint) { //pdoesnt read or write any data to the blockchain
        return x + y;
    }

}