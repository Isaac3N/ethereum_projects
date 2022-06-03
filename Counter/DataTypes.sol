// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;

contract MyContract {
    // State Variables
    string public myString = "Hello world!";
    bytes32 public myBytes32 = "Hello, world!";
    int256 public myInt = 1;
    uint256 public myUint = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;
    address public myAddress = 0xb7EAaDb9B503957bBc3d339E71b3d0fed02e7a3f;

    struct MyStruct {
        uint256 myUint;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, "Hello World!");

    //local variables (value)
    function getValue() public pure returns (uint256) {
        uint256 value = 1;
        return value;
    }
}
