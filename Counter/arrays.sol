// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;

contract MyContract {
    // Arrays
    uint256[] public uintArray = [1, 2, 3];
    string[] public stringArray = ["Apple", "banana", "pineapple"];
    string[] public values;
    uint256[][] public array2D = [[1, 2, 3], [4, 5, 6]];

    function addValue(string memory _value) public {
        values.push(_value);
    }

    function valueCount() public view returns (uint256) {
        return values.length;
    }
}
