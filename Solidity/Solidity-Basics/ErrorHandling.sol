//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract ErrorHandling{

    function checkWallet() public {
        require(msg.sender == owner, "You are not the owner!");
        //rest of the message.

    }
}