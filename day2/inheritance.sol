// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Yeye{
    // 定义日志
    event Log(string msg);

    // public 主要适用合约外部调用和内部调用的场景
    // external 主要适用于合约外部调用的场景
    function hello() public  virtual {
        emit Log("hello world");
    }
    function nihao() public  virtual  {
        emit  Log("nihao");
    }

    function info(string memory message) public  {
        emit Log(message);
    }

}

contract Baba is Yeye{
    function nihao() public  override {
        emit Log("baba nihao");
    }
    function hello() public  override {
        emit Log("baba hello");
        // 或super.hello();
        Yeye.hello();
    }
}