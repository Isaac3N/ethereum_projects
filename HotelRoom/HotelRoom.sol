// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;

contract HotelRoom {
    // checking whether the status of the room whether it is vacant or occupied
    enum Statuses {
        Vacant,
        Occupied
    }
    Statuses currentStatus;

    event Occupy(address _occupant, uint256 _value);

    address payable public owner;

    constructor() public {
        owner = msg.sender;
        currentStatus = Statuses.Vacant;
    }

    modifier onlyWhileVacant() {
        require(currentStatus == Statuses.Vacant, "Currently occupied");
        _;
    }

    modifier costs(uint256 _amount) {
        require(msg.value >= _amount, "You no get funds sha");
        _;
    }

    receive() external payable onlyWhileVacant costs(2 ether) {
        currentStatus = Statuses.Occupied;
        owner.transfer(msg.value);
        emit Occupy(msg.sender, msg.value);
    }
}
