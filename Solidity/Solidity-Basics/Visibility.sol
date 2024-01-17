//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Visibility{
    uint public num = 10; //this variable and publicFunc can be accessed from any contract or account
    string internal str = "Hello"; //this variable and internalFunc can only be accessed from this contract and any that inherit it
    address myAdd = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; //this variable and privateFunc can be accessed only by this contract

    function publicFunc() public view returns (uint){
        return num;
    }
    function privateFunc () private view returns(uint){
        return num;
    }
    function internalFunc() internal view returns(uint){
        return num;
    }
    function externalFunc() external view returns(uint){ //this function can only be accessed from external accounts or contracts
        return num;
    }
}

//internal function and variable cannot be accessed when deploying this onto remix.
//deploying after adding them into child contract will allow functions to appear on remix.
contract VisbilityChild is Visibility{
    //these are public functions, but we can return internal variables and functions from the parent class
    function testInternalVisibility() public view returns(string memory){
        return str;
    }
    function testInternalFunction() public view returns(uint){
        uint x = internalFunc();
        return x;
    }
    // function testExternalFunction() public view returns(uint){
    //     uint y = externalFunc(); //the function statement on this line won't recognize the function since it is external
    //     //thus we cannot access it.
    //     return y;
    // }
    // function testPrivateFunction() public view returns(uint){
    //     uint z = privateFunc(); //the same thing occurs with private functions as external ones. 
    //     return z;
    // }

}