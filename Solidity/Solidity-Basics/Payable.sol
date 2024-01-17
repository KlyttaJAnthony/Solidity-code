//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Payables{

    bool paid;
    address payable public owner;

    constructor(){
        owner = payable(msg.sender);

    }
    //this function is used to pay 0.1 eth as mentioned in the require statement
    //on execution of this payment, eth will be stored within the smart contract
    function payment() public payable{
        require(msg.value == 0.1 ether, "Amount not sufficient");
        paid = true;
    }
    //this function obviously withdraws the eth that was stored with the withdraw function to the address
    // function withdraw() public {
    //     require(msg.sender == owner, "Only owner can withdraw");
    //     owner.transfer(address(this).balance);
    // }

    //send method
    // function withdraw() public{
    //     require(msg.sender == owner, "Only the owner can execute a withdrawal.");
    //     bool sent = owner.send(address(this).balance);
    //     require(sent, "Failure to send Ether.");
    // }
    //call method, MOST RECOMMENDED
    function withdraw() public {
        require(msg.sender == owner, "Only owner can execute a withdrawal.");
        (bool sent, ) = owner.call{value: address(this).balance}("");
        require(sent, "Failure to send Ether.");
    }
}