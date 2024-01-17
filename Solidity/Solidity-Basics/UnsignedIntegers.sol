//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract UnsignedIntegers{
    uint a = 5;
    uint b = 6;

    function add() public view returns(uint){
        return a + b;
    }
    function subtract() public view returns(uint){
        return b - a;
    }
    fucntion multiply() public view returns(uint){
        return a * b;
    }
    function divide() public view returns(uint){
        return b / a;
    }
}