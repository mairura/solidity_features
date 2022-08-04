// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; 


contract FunctionModifier {
    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }

    modifier whenNotPaused() {
        require(!paused, "paused");
        _;
    }

    function inc() external whenNotPaused {
        //require(!paused, "paused");
        count += 1;
    }

    function dec() external whenNotPaused{
        //require(!paused, "paused");
        count -= 1;
    }

    //Function modifiers can take parameters

    modifier cap(uint _x) {
        require(_x < 100, "x >= 100");
        _; //means execute the rest of the code
    }

    function incBy(uint _x) external whenNotPaused cap(_x) {
        //require(_x < 100, "x >= 100");
        count += _x;
    }

    //You can use function modifier as sandwich
    modifier sandwich() {
        //code executes
        count += 10;
        _; //calls the main function
        
        //more code executes from here
        count *= 2;
    }

    function foo() external sandwich {
        count += 1;
    }
}