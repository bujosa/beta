// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyContract {
    // State variables
    uint public myUint  = 1;
    uint256 public myUint256 = 1;

    struct MyStruct {
        uint myUint;
        string myString;
    }

    MyStruct public myStruct = MyStruct({
        myUint: 2,
        myString: "hello"
    });

    // Local variables
    function getValue() public pure returns(uint) {
        uint value = 1;
        return value;
    }
}