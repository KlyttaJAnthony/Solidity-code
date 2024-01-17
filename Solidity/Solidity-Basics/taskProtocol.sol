//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

//adding numbers into an array and then displaying the array

contract taskProtocol{
    uint[] public array;

    function push(uint i) public{
        array.push(1);
    }
    function pop() public {
        array.pop();
    }
    function getLength() public view returns(uint){
        return array.length;
    }
    

}