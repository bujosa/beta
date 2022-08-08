// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {

    enum Statuses { Vacant, Occupied}

    Statuses currentStatus;

    address payable public owner;

    constructor() {
        // Convert msg.sender to an address
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant {
        require(currentStatus == Statuses.Vacant, "Room is already occupied");
        _;
    }

    modifier costs(uint _amount) {
        require(msg.value >= _amount, "Not enough ether provided");
        _;
    }

    function book() public payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
    }
}