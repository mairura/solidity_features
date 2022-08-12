// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

//Enum allow yoou to express many choices
contract Enum {
    enum Status {
        None,
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }

    Status public status;

    struct Order {
        address buyer;
        Status status;
    }

    Order[] public address;

    //Funtion to get status at specific moment
    function get() view returns (Status) {
        return status;
    }

    //function to set status from enumas input
    function set(Status _status) external {
        status = _status;
    }

    //Updating status data
    function ship() external {
        status = Status.Shipped;
    }

    //Reset the status enum to default value
    function reset() external {
        delete status;
    }
}