//SPDX-License-Identifier: MIT

/**
Mappings are like dictionaries from python, they all have keys and particular variables tied to them

the syntax for mappings is thusly: mapping(keyType => valueType)

the keyType can be built-in value type: bytes, string, or any contract

valueType can be any type including another mapping or an array
mappings are not iterable

remember, when interacting with smart contracts, we need to interact with each function of the contract in order for 
it to operate. 
adding(setting) or deleting(removing) data from the blockchain will require that we interact with
each of those function separately for the desired result

in this particular instance, this program sets an address with a particular integer using the set function
by inputting the address into the getter function, we retrieve the uint from the setter by referencing the address
the myMap reiterates the same integer once made.
the remove() obviously deletes the entry on the contract, creating a completely new empty contract

 */

pragma solidity ^0.8.20;

contract Mapping{
    mapping(address => uint) public myMap;

    function get(address _address) public view returns(uint){
        //mapping always requires a return statement
        //if the value was never set, it will return the default value
        return myMap[_address];
    }
    function set(address _address, uint i)public{
        //updating the value at this address
        myMap[_address] = i;
    }
    function remove(address _address) public{
        delete myMap[_address];
    }
}
contract nestedMapping{
    //nested mapping (mapping from address to another mapping)
    mapping(address => mapping(uint => bool)) public nested;

    function get(address _address1, uint _i) public view returns (bool){
        //you can get values from a nested mapping
        //even when it is not initialized
        return nested[_address1][_i];
    }
    function set(address _address1, uint _i, bool boo)public{
        nested[_address1][_i] = boo;
    }
    function remove(address _address1, uint _i) public{
        delete nested[_address1][_i];
    }
}