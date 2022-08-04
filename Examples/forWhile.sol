// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; 

//using alot of loops means alot of gas to use

contract ForWhileLoops {
    function loops() external pure {
        for(uint i = 0; i < 10; i++) {
            //continue statement
            if(i ==3) {
                continue;
            }

            //break
            if(i == 5) {
                break;
            }
        }

        //While loop
        uint j = 0;
        while(j < 10) {
            j++;
        }
    }

    function sum(uint _n) external pure returns (uint) {
        uint s;
        for(uint i = 1; i <= _n; i++) {
            s += i;
        }
        return s;
    }
}