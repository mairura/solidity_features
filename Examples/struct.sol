// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

//struct allow grouping of similar data together
contract Structs {
    struct Car {
        string model;
        uint year;
        address owner;
    }

    //defining state variable
    Car public car; 
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    //Initializaton of struct 3 ways:
    //1. We put parameters into parentesis
    //2. Use key - value pairs

    function example() external {
        Car memory toyota = Car("Toyota", 1990, msg.sender);
        Car memory lambo = Car({model: "Lambo", year: 1990, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 1990;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);

        cars.push(Car("Ferrari", 2020, msg.sender));

        //Accessing and updating elements in the array
        Car storage _car = cars[0];
        _car.year = 1999;
        //Reset the owner of the car
        delete _car.owner;

        //Deleting specific car struct
        delete cars[1];
    }

}