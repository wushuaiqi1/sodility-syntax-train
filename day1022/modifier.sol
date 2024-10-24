// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract _modifier {
    // 注意，地址一定要和参数中from一致。
    address public owner;
    constructor(address addr){
        owner=addr;
    }

    // 参数前置校验
    modifier onlyOwner() {
        // 校验调用者是否为owner地址
        require(msg.sender==owner,'the addr is not my addr');
        // 继续运行函数本体
        _;
    }

    function changeOwner(address _addr) external onlyOwner{
        owner = _addr;
    }

}