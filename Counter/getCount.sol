// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.14;

contract Counter {
    uint256 count;

    constructor() public {
        count = 0;
    }

    function getCount() public view returns (uint256) {
        return count;
    }

    function incrementCount() public {
        count = count + 1;
    }
}
