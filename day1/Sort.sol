// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract Sort{
    // 插入排序
    uint[] public arr = [5,3,6,8,7,4];

    // uint无符号整数，没有负数，减到0
    function insertSort() external returns(uint[] memory){
        for(uint i=1;i<arr.length;i++){
            for(uint j=i;j>=1;j--){
                if(arr[j]<arr[j-1]){
                    swap(arr,j,j-1);
                }
            }
        }
        return arr;
    }

    function swap(uint[] storage a,uint256 l,uint256 r) private {
        uint tmp = a[l];
        a[l]=a[r];
        a[r]=tmp;
    }

    function getUintMax() pure external returns(uint){
        uint tmp =0 ;
        return tmp-1;
    }

    function getintMax() pure external returns(int){
        int tmp=0;
        return tmp-1;
    }
}