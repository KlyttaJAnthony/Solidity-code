//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract ViewPureFunctions{
    uint x;

    function changeVariable() public {
        x = 100;
    }
    function getVariable() public view returns(uint){
        return x;
    }
    function addVariable() public pure returns(uint){
        return (1 + 2);
    }
}