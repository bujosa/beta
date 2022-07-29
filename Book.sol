// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyBooks {
    // Mappings
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    
    struct Book {
        string title;
        string author;
    }

    function addBook(string memory _title,
     string memory _author,
      uint _id) public {
        books[_id] = Book(_title, _author);
    }

    function addMyBook(string memory _title,
     string memory _author,
      uint _id) public {
        myBooks[msg.sender][_id] = Book(_title, _author);
    }
}