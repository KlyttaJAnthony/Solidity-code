//SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

contract AddressesAndBalances{
    address account = 0x870037Cf5Bad86ec2559524a6496D30d16CD4cDB;
    address newAccount = 0xFA60c33563EeaC650B16659f85d033818E96Af4f;

    function checkEqual(address _acc1, address _acc2) public pure returns(bool){
        return (_acc1 == _acc2);
    }
    function checkEqual2(address _accountOne, address _accountTwo) public pure returns(bool){
        return(_accountOne == _accountTwo);
    }
}