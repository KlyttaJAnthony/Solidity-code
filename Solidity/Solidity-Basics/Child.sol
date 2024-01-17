//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Child is Parent{
    function decrement() public {
        num--;
    }
    function incremenetAndDecrement() public{
        increment();
        decrement();
    }
}

