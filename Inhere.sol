// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Ownable {
    address owner;

    modifier onlyOwner() {
        require(msg.sender == owner, "must be owner");
        _;
    }
}

contract SecretVault {
    string secret;
}

contract MyContract is Ownable {
    string secret;

    constructor(string memory _secret) public {
        secret = _secret;
        super;
    }

    function getSecret() public view returns (string memory) {
        return secret;
    }
}