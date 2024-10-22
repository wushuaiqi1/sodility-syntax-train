// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract array{
    uint256[] public   arr1 = new uint256[](2);

    string public  str = "hello,evm";


    function getMemoryStr() external view returns (string memory) {
        string memory data = str;
        return data;
    }

    function push() external {
        arr1 = [uint256(1),3];
        arr1.push(100);
        arr1.push(200);
    }

    function pop() external {
        arr1.pop();
        arr1.pop();
    }

    function getArr() external view returns (uint256[] memory) {
        uint256[] memory data = arr1;
        return data;
    }


}