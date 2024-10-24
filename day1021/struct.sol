// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

struct BigStudentPlayBTC{
    // 128=4字节 
    uint128 id;
    string name;
    string desc;
}


contract TestBigStudentPlayBTC {
    BigStudentPlayBTC public student;
     
    function set(uint64 _id,string memory _name,string memory _desc) public {
        student.id = _id;
        student.name = _name;
        student.desc = _desc;
    }

    function getStudent() external view returns(BigStudentPlayBTC memory){
        return student;
    }

    // 复制对象的属性，并返回最新对象
    function copy1() external returns (BigStudentPlayBTC memory) {
        BigStudentPlayBTC storage _student = student;
        _student.id=1;
        _student.name="copy1";
        _student.desc="hello";
        return _student;
    }

    function update() external {
        student.id=100;
        student.name="update...";
    }
}