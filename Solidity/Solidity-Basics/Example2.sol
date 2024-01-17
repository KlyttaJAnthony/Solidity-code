//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;


contract Example2{
    uint8 public variable;

    function decrement() public{
        variable--;
    }
    function increment() public{
        variable++;
    }
}