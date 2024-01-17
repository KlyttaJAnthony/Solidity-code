//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract Booleans{

    bool flag;
    bool isVotingOpen;

    function setVoting(bool _state) public{
        isVotingOpen = _state;
    }
    function returnVotingState() public view returns(bool){
        return isVotingOpen;
    }

    function checkGreater(uint a, uint b) public {
        flag = a > b;
    }
    function returnGreater() public view returns(bool){
        return flag;
    }
}