//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract ValueTypeVariables{
    uint num = 2;

    function modify(uint _val) public pure returns(uint){
        _val = _val + 1;
        return _val;
    }
    function modifyNum() public view returns(uint){
        return modify(num);
    }
    function getNum() public view returns(uint){
        return num;
    }

}
//calling getNum() returns 2, since it returns 2 this way: getNum(2)
//calling modify() while inputting an number, lets say 4, will return 4 since _val are incrementing
//calling modifyNum() will pass 2 (modifyNum(2)), into the argument of modify(), which increments 2 by 1.