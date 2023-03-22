//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    struct Person {
        uint256 favoriteNumber;
        string name;
    }

    Person[] public peopleArray; 

    mapping(string => uint256) public nameToNumber;

    function addPerson (uint256 number, string calldata _name) public {
        Person memory person = Person(number, _name);
        peopleArray.push(person);
        nameToNumber[_name] = number;
    } 
}
