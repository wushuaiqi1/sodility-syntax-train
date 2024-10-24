// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

// 在EVM中，事件是基于日志的抽象，每个事件都会产生一个topic，事件节省gas
contract Event{
    // 记录每个账户持币数量
    mapping(address=>int) public _balances;
    event Transfer(address from,address to,int amount);

    function _transfer(address from,address to,int amount) external {
        _balances[from] = 10000000; // 给转账地址一些初始代币

        _balances[from] -=  amount; // from地址减去转账数量
        _balances[to] += amount; // to地址加上转账数量

        // 触发记录日志的事件
        emit Transfer(from, to, amount);
    }
}