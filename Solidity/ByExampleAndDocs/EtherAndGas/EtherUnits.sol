//SPDX-License-Identifier: MIT

/**
txns on Ethereum blockchain are paid with Ether
on other chains it is paid with their respective crypto currencty such as AVAX and FTM
one ether is equal to 10^18 of wei
 */

pragma solidity ^0.8.20;

contract EtherUnits{

    uint public oneWei = 1 wei;
    //1 wei is equal to 1
    bool public isOneWei = 1 wei == 1;

    uint public oneEther = 1 ether;
    //1 ether is equal to 10^18 of wei

    bool public isOneEther = 1 ether == 1e18;


}