//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Enums{

    enum Status{
        Ordered, 
        Shipped,
        Delivered,
        Cancelled
    }
    Status public status;
    function setStatus(Status _status) public{
        status = _status;
    }
    function getStatus() public view returns(Status){
        //input for remix either must be 0, 1, 2, or 3
        return status;
    }
//example
//    enum PlayerLevel{
//     Beginnner,
//     Intermediate,
//     Advanced
//    }

}