//SPDX-License-Identifier: MIT


/** 
immutables are similar to constants. Values of immutable variables can be set inside constructors but 
CANNOT BE MODIFIED AFTER 
In essence constants must be fixed at compile-time whereas immutables are fixed at construction time
*/

pragma solidity ^0.8.20;

contract Immutables{

    address public immutable MY_ADDRESS;
    uint public immutable MY_UINT;

    constructor(uint _myUint){
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUint;
    }

}