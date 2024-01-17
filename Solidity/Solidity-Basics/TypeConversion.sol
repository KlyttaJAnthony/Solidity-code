//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract TypeConversion{

    function demo() returns (uint){
        uint8 var = 10;
        var = 300; //line 9 would present an error because the data type used is uint8, so it therefore cannot store it.
    }
}