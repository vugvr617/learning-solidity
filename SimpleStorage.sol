//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    struct Person {
        uint256 age;
        string name;
    }

    Person[] public peopleArray; 

    mapping(string => uint256) public nameToNumber;

    function getPerson (uint256 index) public view returns(Person memory) {
        return peopleArray[index];
    }

    function addPerson (uint256 _age, string calldata _name) public {
        Person memory person = Person(_age, _name);
        peopleArray.push(person);
        nameToNumber[_name] = _age;
    } 
}