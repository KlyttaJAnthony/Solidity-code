//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Mappings{
    //example objective: Lets a list of existing addresses, with a token balance assigned to each address so that the address owner can 
    //claim it later:

    //The following code allows the contract function to set balances of different wallets and read the balance of a 
    //particular wallet using mappings:

    mapping(address => uint) public balances;

    function setBalance(address _address, uint _balance) public {
        balances[_address] = _balance;
    }
    function getBalance(address _address) public view returns(uint){
        return balances[_address];
    }
}