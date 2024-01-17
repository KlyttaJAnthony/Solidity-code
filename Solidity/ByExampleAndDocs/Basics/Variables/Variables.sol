//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

/**
local variables:
    1) declared within a function
    2) not stored on the blockchain

state variables:
    1) declared outside a function
    2) stored on a blockchain

global variables:
    1) provides information about the blockchain
*/

contract Variables{

    string public text = "Hello";
    uint public num = 23;

    function doSomething() public view{
        //this is a local variable, and will not be saved on the blockchain
        uint i = 432;
        //here are global variables. Remember Global variables can be stored within functions
        uint timestamp = block.timestamp; //current block timestamp
        address sender = msg.sender; //address of the caller of the contract
    }


}