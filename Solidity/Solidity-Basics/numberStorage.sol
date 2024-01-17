//SPDX-License-Identifier: MIT

//other licenses to mention: Apache, GPL, EPL

pragma solidity ^0.8.20; //this actually mentions what compiler version we need to use

contract numberStorage{
    uint public num;
    //1) uint constant PRICE; 

    function setNumber(uint _num) public {
        num = _num;
    }
    // function getNumber() public view returns(uint){
    //     return num;
    // }
    function getSquare() public view returns(uint){
        return num * num;
    }
}

//1) the constant keyword designates that the variable miust have 
//   an assignment along with the declaration. It cannot remain empty like it is
//   uint constant PRICE = 23; is the correct notation.
