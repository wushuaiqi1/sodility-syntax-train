// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract AddressType {
    uint[9] public _aNumbers;
    uint[] public _bNumbers;
    mapping (uint=>address) public _mapping;
    struct Teacher{
        uint256 id;
        uint256 score;
    }
    Teacher public _teacher;

    function clearArray() external {
        delete _aNumbers;
    }

    function setArray(uint a) external {
       _bNumbers.push(a);
    }

}