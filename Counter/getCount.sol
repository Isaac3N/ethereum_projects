// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.14;

contract Counter {
    uint256 count; // state variable

    //constructor public*
    constructor() {
        count = 0;
    } // a constructor to initiate the state variable on deployment

    function getCount() public view returns (uint256) {
        return count;
    } // function to view the state variable

    function incrementCount() public {
        count = count + 1;
    } // function to increment the state variable
}

// pragma solidity ^0.6.0;

// contract Counter {
//     uint public count = 1;

//     function incrementCount() public {
//         count ++;

//     }
// }
