//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.20;


contract Constants{
    uint constant PRICE = 2;
    // uint constant PRICE; // this will give us an error because the constant must be declared

    function setPrice() public{
        PRICE = 1;
        //the compiler will return an error because it is trying to pass 1 through the constant.
    }
}