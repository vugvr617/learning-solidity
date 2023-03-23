//SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createStorageContract () public {
        SimpleStorage simpleStorage = new SimpleStorage();
        simpleStorageArray.push(simpleStorage);
    }

    function addPersonToStorage (uint256 indexOfStorage, string calldata name, uint256 age) public {
        SimpleStorage simpleStorage = simpleStorageArray[indexOfStorage];
        simpleStorage.addPerson(age,name);
    }

    function getPersonData(uint256 indexOfStorage, uint256 indexOfPerson) public view returns (SimpleStorage.Person memory) {
        SimpleStorage simpleStorage = simpleStorageArray[indexOfStorage];
        return simpleStorage.getPerson(indexOfPerson);
    }
}
