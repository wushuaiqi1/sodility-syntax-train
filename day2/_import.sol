// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import './inheritance.sol';
// 通过网址引用
import 'https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Address.sol';
// 引用OpenZeppelin合约
import '@openzeppelin/contracts/access/Ownable.sol';

contract _import{
    Yeye _inheritance = new Yeye();
    using Address for address;
    constructor(){
        _inheritance.info('ahaha');
    }
}