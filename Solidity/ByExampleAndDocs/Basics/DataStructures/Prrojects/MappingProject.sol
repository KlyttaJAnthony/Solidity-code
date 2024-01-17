//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract MappingProject{

    struct myStruct{
        uint256 newNumber;
        string stringName;
        address owner;
        uint256[] xArray;
    }
    mapping(address => string) public stringMap;
    mapping(address => uint) public intMap;
    mapping(address => myStruct) public addressMapping;

    function getStruct(uint256 key, uint256 valNumber, string memory stringVal, address _address, uint256 structArray[]) public{

    }


    function getStringMap(address _address)public view returns(string memory){
        return stringMap[_address];
    }
    function getIntMap(address _address) public view returns(uint){
        return intMap[_address];
    }
    function setMappings(address _address, uint x, string memory xString) public{
        intMap[_address] = x;
        stringMap[_address] = xString;
    }
    function deleteIntMap(address _address) public{
        delete intMap[_address];
    }
    function deleteStringMap(address _address) public{
        delete stringMap[_address];
    }

}