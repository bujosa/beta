pragma solidity ^0.8.0;

contract Counter {
    uint public counter;

    function Counter() {
        counter = 0;
    }

    function increment() public {
        counter++;
    }
}