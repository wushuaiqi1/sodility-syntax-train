// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

struct Student{
    uint256 id;
    string name;
    uint32 age;
    uint128 salary;
} 

contract TestMap{
    // 不被允许，key不允许是结构体
    //mapping (Student=>uint) public  mapStudent;

    mapping (uint=>address) public idToAddr;
    mapping (address=>address) public swapPair;

    function writeMap(uint _key,address _value) external {
        idToAddr[_key]=_value;
    }

    function quertMap(uint _key) view external returns(address){
        address _value=idToAddr[_key];
        if(_value==address(0)){
            revert("not found");
        }
        return  _value;
    }




}