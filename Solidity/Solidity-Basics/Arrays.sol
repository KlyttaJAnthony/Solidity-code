//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Arrays{
    // uint[] numArray;
    // string[] stringArray;

    // //initializing on declaration:
    // uint[] numberArray = [2, 4, 6];

    // //delcaring, then initializing:
    // string[] stringedArray;
    // stringedArray = ['a', 'b', 'c'];
    
    // //adding view state:
    // uint[] public viewNumArray = [2, 4, 6];

    uint[] numArray = [1, 2, 3, 4, 5, 6];

    function arrayLength() public view returns(uint){
        return numArray.length;
    }
    function elementByIndex(uint i) public view returns(uint){
        return numArray[i]; //this will be an input on the user to seek what index they want
    }
    function addValue(uint n) public{
        return numArray.push(n);
    }
    function popValue() public{
        return numArray.pop();
    }

}