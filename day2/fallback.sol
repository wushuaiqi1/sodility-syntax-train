// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract _fallback{
    // 定义事件
    event Received(address Sender,uint Value);
    // 接受ETH触发该事件，只有在msg.data空&函数存在触发，其他情况走设置的fallback()
    receive() external payable { 
        emit Received(msg.sender,msg.value);
    }

    event fallbackCalled(address Sender,uint Value,bytes Data);

    fallback() external payable{
        emit fallbackCalled(msg.sender,msg.value,msg.data);
    }

    // 外部访问账号鱼额，使用payable关键字
    function getBalance() external payable  returns (uint){
        return msg.value;
    }
}