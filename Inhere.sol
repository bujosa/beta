// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    string secret;
    address owner;

    constructor(string memory _secret) public {
        secret = _secret;
        owner = msg.sender;
    }

    function getSecret() public view returns (string memory) {
        return secret;
    }
}