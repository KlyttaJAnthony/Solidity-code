//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Strings{
    string message;

    function setMessage(string calldata _message) public{
        message = _message;
    }
    function getMessage() public view returns(string memory){
        return message;
    }
    function getMessageLength() public view returns(uint){
        return bytes(message).length;
    }

}