//SPDX-License-Identifer: MIT

/**
TO WRITE OR UPDATE STATE VARIABLES: 
YOU MUST SEND A TRANSACTION.

this causes the creation of a new block on the blockchain so that the 
contract may perform its duties to the user

you can however, read state variables for free without any txn fee
 */

pragma solidity ^0.8.20;

contract StateVariables{
    //state variable to store a number
    uint public num;

    //this sends a txn for writing a state variable
    function set(uint _num) public {
        num = _num;
    }
    //this read the state variable without sending the set transaction function
    function get()public view returns(uint){
        return num;
    }


}