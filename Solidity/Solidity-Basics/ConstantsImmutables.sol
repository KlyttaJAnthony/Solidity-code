//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract ConstantsImmutables{
    
    // uint constant PRICE; 
    //variables declared as constant cannot have their values change because 
    //the purpose of the costant keyword is for those variables to remain unchanged

    uint constant PRICE = 2;
    uint constant HERE = 5;
    uint immutable price;
    // uint immutable price = 20; this is valid for immutables
    //the immutable keyword is used to declare variables who's initial state is 
    //empty, but once filled, it cannot change.
    //The constructor declares price at 20, then it will be 20 forever.

    constructor() {
        price = 20; //this is valid for immutables
    }

    // function setPrice() public{
    //     PRICE = 1;
    // } cannot be compiled because it changes the variable

    function getPrice() public view returns(uint){
        return PRICE;
    }
    function getHere() public view returns(uint){
        return HERE;
    }
    function getNewPrice() public view returns(uint){
        return price;
    }
}