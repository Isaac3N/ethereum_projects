// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.6.0 <0.9.0;

contract MyContract {
    // mappings

    mapping(uint256 => string) public names;
    //      key => value
    mapping(uint256 => Book) public books;
    mapping(address => mapping(uint256 => Book)) public myBooks;

    struct Book {
        string title;
        string author;
    }

    constructor() public {
        names[1] = "adam";
        names[2] = "Isaac";
        names[3] = "Jumpman Adampage";
    }

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(
        uint256 _id,
        string memory _title,
        string memory _author
    ) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}
