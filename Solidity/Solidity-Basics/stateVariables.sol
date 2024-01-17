//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract stateVariables{
    uint x = 50; //in notes write that state variables CANNOT BE CHANGED, and must remain as they are, that means we cannot have a view function

    function getInt() public view returns(uint){
        return x;
    }
    function addInt() public returns(uint){
        uint y = 25;
        x = y + x;
        return x;
    }
    function subtractInt() public returns(uint){
        uint z = 25;
        x = x - z;
        return x;
    }
    function conditionalInt() public view returns(uint, string memory){ //write in notes for conditionals: to return a view state for conditionals, THEY MUST BE VIEW 
        uint a = 100;
        uint b = 0;
        string memory conditionNegative = "This is not possible";
        string memory conditionPositive = "This is true";


        if (x < a){
            return (x, conditionNegative);
        }else{
            return (x, conditionPositive);
        }
    }
    function negativeInt() public view returns(int){ //if the return function only returns one type, then only one type MUST be written into the returns function at declaration.
        int n = - 100;
        uint xN = 50;

        int result = int(n) + int(xN);
        return result;

    }

}
