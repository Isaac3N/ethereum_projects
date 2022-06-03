// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;

contract MyContract {
    // mappings

    mapping(uint256 => string) public names;

    constructor() {
        names[1] = "adam";
        names[2] = "Isaac";
        names[3] = "Jumpman Adampage";
    }
}
