// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13; //specifies the compiler

//Insert, update, read from array of structs
contract TodoList {
    struct Todo {
        string text; //describtion of todo 
        bool completed; //status update
    }

    Todo[] public todos;

    //function to insert a new todo list
    function create(string calldata _text) external {
        todos.push(Todo({
            text: _text,
            completed: false
        }));
    }

    //function to update the todo list
    function updateText(uint _index, string calldata _text) external {
        todos[_index].text = _text; //used on single input: uses alot of gas since you access the list each time you want to update the list

        // Todo storage todo = todos[_index]; //used on multiple inputs and saves on gas since you access the list once
        // todo.text = _text;
    }

    //function to read/get data from the todo list
    function get(uint _index) external view returns(string memory, bool) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }

    function toggleCompleted(uint _index) external {
        todos[_index].completed = !todos[_index].completed;
    }
}