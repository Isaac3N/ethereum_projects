// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;

contract MyContract {
    // Conditional
    // Loop

    address public owner;

    uint256[] public numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

    function countEvenNumbers() public view returns (uint256) {
        uint256 count = 0;

        for (uint256 i = 0; i < numbers.length; i++) {
            if (isEvenNumber(numbers[i])) {
                count++;
            }
        }

        return count;
    }

    // Conditionals
    function isEvenNumber(uint256 _number) public pure returns (bool) {
        if (_number % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    function isOwner() public view returns (bool) {
        return (msg.sender == owner);
    }
}
