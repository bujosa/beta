// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {
    address payable public owner;

    constructor() {
        owner = msg.sender;
    }

    function book(){

    }
}